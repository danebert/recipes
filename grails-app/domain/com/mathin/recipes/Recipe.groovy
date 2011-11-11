package com.mathin.recipes

import com.mathin.SecUser

class Recipe {

	transient springSecurityService

	String title
	String body
	Category category
	SubCategory subCategory
	Date dateCreated

	SecUser owner

	static constraints = {
		title(blank:false)
		body(blank:false)
		category(blank:false)
		subCategory(nullable:true)
	}

	static mapping ={ body type: 'text' }

	def beforeValidate() {
		if(!owner) {
			owner = springSecurityService.currentUser
		}
	}

	def beforeInsert() {
		dateCreated = new Date()
		if(!owner) {
			owner = springSecurityService.currentUser
		}
	}
}
