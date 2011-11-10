package com.mathin.recipes
import grails.converters.*

class CategoryController {
	static scaffold = true

	def ajaxGetSubCategories = {
		def category = Category.get(params.id)
		render category?.subCategories as JSON
	}
}
