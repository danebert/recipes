package com.mathin.recipes


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
}
