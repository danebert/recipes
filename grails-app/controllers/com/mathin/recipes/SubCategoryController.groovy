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
		def subCategory = SubCategory.get(params.id)

		[
					subCategoryInstance: subCategory,
					categoryInstanceList: Category.findAllByOwner(subCategory.owner)
				]
	}
}
