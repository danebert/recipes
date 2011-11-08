package com.mathin.recipes

import java.util.SortedSet;

class RecipeController {
	static scaffold = true

	def list() {
		[
					recipeInstanceList: Recipe.list(),
					recipeInstanceTotal: Recipe.count(),
					categoryInstanceList: Category.list(sort:"rank", order: "asc")
				]
	}
}
