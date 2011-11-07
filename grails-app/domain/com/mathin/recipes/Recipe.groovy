package com.mathin.recipes

class Recipe {

	String title
	String body
	Category category
	SubCategory subCategory
	Date createdDate

	static constraints = {
		title(blank:false)
		body(blank:false)
	}
}
