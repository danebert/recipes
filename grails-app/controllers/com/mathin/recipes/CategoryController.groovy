package com.mathin.recipes

import org.springframework.dao.DataIntegrityViolationException

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

	def delete() {
		def user = springSecurityService.currentUser

		def categoryInstance = Category.get(params.id)

		if (!categoryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'category.label', default: 'Category'),
				params.id
			])
			redirect(action: "list")
			return
		}

		if(categoryInstance.owner.equals(user)) {

			try {
				categoryInstance.delete(flush: true)
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'category.label', default: 'Category'),
					params.id
				])
				redirect(action: "list")
			}
			catch (DataIntegrityViolationException e) {
				flash.message = message(code: 'default.not.deleted.message', args: [
					message(code: 'category.label', default: 'Category'),
					params.id
				])
				redirect(action: "show", id: params.id)
			}
		} else {
			flash.message = "You cannot delete because this is not your Category"
			redirect action: show, id: categoryInstance.id
		}
	}
}
