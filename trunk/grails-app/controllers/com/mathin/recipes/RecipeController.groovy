package com.mathin.recipes

import org.springframework.dao.DataIntegrityViolationException
import com.mathin.SecUser

class RecipeController {
	transient springSecurityService

	static scaffold = true

	def list() {
		if (!params.user){
			redirect(uri: "/")
			return
		}
		def owner = SecUser.findByUsername(params.user)
		def recipes = Recipe.findAllByOwner(owner)

		def categories
		if(params.category) {
			categories = Category.get(params.category)
		} else {
			categories = Category.findAllByOwner(owner,[sort:"rank", order: "asc"])
		}

		[
					ownerInstance: owner,
					recipeInstanceList: recipes,
					recipeInstanceTotal: recipes.size(),
					categoryInstanceList: categories
				]
	}

	def create() {
		def user = springSecurityService.currentUser
		[
					ownerInstance: user,
					categoryInstanceList: Category.findAllByOwner(user)
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
