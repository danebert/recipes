package com.mathin.recipes

import org.springframework.dao.DataIntegrityViolationException

class SubCategoryController {
	transient springSecurityService

	static scaffold = true

	def list() {
		populateForCurrentUser()
	}

	def order() {
		populateForCurrentUser()
	}

	def saveOrder() {

		flash.message = 'Order Updated'

		def categoryId
		for (int i; i < params.order.size(); i++) {

			def subCategory = SubCategory.get(params.order[i])
			subCategory.rank = i + 1
			subCategory.save(flush:true)
			categoryId = subCategory.category.id
		}
		redirect action: 'order',  params: [category: categoryId]
	}

	private def populateForCurrentUser() {
		def user = springSecurityService.currentUser

		if (!user){
			redirect(uri: "/")
			return
		}
		def subCategories
		if(params.category){
			def category = Category.get(params.category)
			subCategories = SubCategory.findAllByOwnerAndCategory(user, category, [sort:"rank", order: "asc"])
		} else {
			subCategories = SubCategory.findAllByOwner(user, [sort:"rank", order: "asc"])
		}

		[
			subCategoryInstanceTotal: subCategories.size(),
			subCategoryInstanceList: subCategories
		]
	}

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
			redirect action: 'show', id: subCategory.id
		}
	}

	def delete() {
		def user = springSecurityService.currentUser
		def subCategoryInstance = SubCategory.get(params.id)
		if (!subCategoryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'subCategory.label', default: 'SubCategory'),
				params.id
			])
			redirect(action: "list")
			return
		}
		if(subCategoryInstance.owner.equals(user)) {
			try {
				subCategoryInstance.delete(flush: true)
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'subCategory.label', default: 'SubCategory'),
					params.id
				])
				redirect(action: "list")
			}
			catch (DataIntegrityViolationException e) {
				flash.message = message(code: 'default.not.deleted.message', args: [
					message(code: 'subCategory.label', default: 'SubCategory'),
					params.id
				])
				redirect(action: "show", id: params.id)
			}
		} else {
			flash.message = "You cannot delete because this is not your SubCategory"
			redirect action: 'show', id: subCategoryInstance.id
		}
	}
}
