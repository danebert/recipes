package com.mathin.recipes

class SubCategory {
	static hasMany = [recipes:Recipe]

	String name
	Integer rank
	Category category
	static constraints = {
		name(blank: false)
		category(blank: false)
	}
}
