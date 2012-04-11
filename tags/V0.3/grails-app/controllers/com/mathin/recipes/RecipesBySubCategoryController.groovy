package com.mathin.recipes

import org.springframework.dao.DataIntegrityViolationException
import com.mathin.SecUser

class RecipesBySubCategoryController {
	transient springSecurityService

	def list() {
		if (!params.user){
			redirect(uri: "/")
			return
		}
		def owner = SecUser.findByUsername(params.user)
		def recipes
		def subCategory
		if(params.subCategory) {
			subCategory = SubCategory.get(params.subCategory)
			recipes = Recipe.findAllByOwnerAndSubCategory(owner, subCategory)
		} else {
			redirect(controller: "recipe", action: "list", params: [user: params.user])
		}
		render(view: "/recipe/listBySubCategory", model: [
					subCategoryInstance: subCategory,
					recipeInstanceTotal: recipes.size(),
				])
	}
}
