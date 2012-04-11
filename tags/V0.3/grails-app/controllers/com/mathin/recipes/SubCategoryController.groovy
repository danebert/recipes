package com.mathin.recipes

import org.springframework.dao.DataIntegrityViolationException

class SubCategoryController {
	transient springSecurityService

	static scaffold = true

	def list() {
		def user = springSecurityService.currentUser
		
		if (!user){
			redirect(uri: "/")
			return
		}
		def subCategories = SubCategory.findAllByOwner(user)
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
			redirect action: show, id: subCategory.id
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
			redirect action: show, id: subCategoryInstance.id
		}
	}
}
