package com.mathin.recipes
import grails.converters.*

class AjaxController {

	def getSubCategories = {
		def category = Category.get(params.id)
		render category?.subCategories as JSON
	}
}
