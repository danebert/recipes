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
		def recipe = Recipe.get(params.id)

		[
					subRecipe: recipe,
					categoryInstanceList: Category.findAllByOwner(recipe.owner)
				]
	}
}
