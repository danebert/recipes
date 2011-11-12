package com.mathin.recipes

class SubCategoryController {
	transient springSecurityService

	static scaffold = true

	def create() {
		[
					categoryInstanceList: Category.findAllByOwner(springSecurityService.currentUser)
				]
	}
	def edit() {
		def user = springSecurityService.currentUser

		def subCategory = SubCategory.get(params.id)
		if(subCategory.owner.equals(user)) {
			[
						subCategoryInstance: subCategory,
						categoryInstanceList: Category.findAllByOwner(subCategory.owner)
					]
		} else {
			flash.message = "You cannot edit because this is not your SubCategory"
			redirect action: show, id: subCategory.id
		}
	}
}
