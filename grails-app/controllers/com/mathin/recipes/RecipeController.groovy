package com.mathin.recipes

import org.springframework.dao.DataIntegrityViolationException


class RecipeController {
	transient springSecurityService

	static scaffold = true

	def list() {
		[
					recipeInstanceList: Recipe.list(),
					recipeInstanceTotal: Recipe.count(),
					categoryInstanceList: Category.list(sort:"rank", order: "asc")
				]
	}
	def create() {
		[
					categoryInstanceList: Category.findAllByOwner(springSecurityService.currentUser)
				]
	}
	def edit() {

		def user = springSecurityService.currentUser

		def recipe = Recipe.get(params.id)

		if(recipe.owner.equals(user)) {
			[
						recipeInstance: recipe,
						categoryInstanceList: Category.findAllByOwner(recipe.owner)
					]
		} else {
			flash.message = "You cannot edit because this is not your Recipe"
			redirect action: show, id: recipe.id
		}
	}

	def delete() {
		def user = springSecurityService.currentUser

		def recipeInstance = Recipe.get(params.id)
		if (!recipeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'recipe.label', default: 'Recipe'),
				params.id
			])
			redirect(action: "list")
			return
		}
		if(recipeInstance.owner.equals(user)) {
			try {
				recipeInstance.delete(flush: true)
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'recipe.label', default: 'Recipe'),
					params.id
				])
				redirect(action: "list")
			}
			catch (DataIntegrityViolationException e) {
				flash.message = message(code: 'default.not.deleted.message', args: [
					message(code: 'recipe.label', default: 'Recipe'),
					params.id
				])
				redirect(action: "show", id: params.id)
			}
		} else {
			flash.message = "You cannot delete because this is not your Recipe"
			redirect action: show, id: recipeInstance.id
		}
	}
}
