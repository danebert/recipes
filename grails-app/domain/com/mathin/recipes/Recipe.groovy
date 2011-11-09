package com.mathin.recipes

class Recipe {
	
	String title
	String body
	Category category
	SubCategory subCategory
	Date dateCreated

	static constraints = {
		title(blank:false)
		body(blank:false)
		category(blank:false)
		subCategory(nullable:true)
	}
	
	static mapping ={
		body type: 'text'
	}

		def beforeInsert() {
			dateCreated = new Date()
	}
}
