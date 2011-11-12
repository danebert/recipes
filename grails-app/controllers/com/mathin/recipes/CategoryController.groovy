package com.mathin.recipes

class CategoryController {
	transient springSecurityService

	static scaffold = true

	def edit() {

		def user = springSecurityService.currentUser

		def category = Category.get(params.id)

		if(category.owner.equals(user)) {
			[categoryInstance: category]
		} else {
			flash.message = "You cannot edit because this is not your Category"
			redirect action: show, id: category.id
		}
	}
}
