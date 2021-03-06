package com.mathin.recipes

import com.mathin.SecUser

class Recipe implements Comparable {

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

	static mapping ={
		body type: 'text'
		id generator:'sequence', params:[sequence:'seq_recipe']
	}

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

	@Override
	public int compareTo(Object object) {
		title.compareTo(object.title)
	}
}
