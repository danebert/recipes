package com.mathin.recipes

class SubCategory {

	String name
	Integer rank
	Category category
	static constraints = {
		name(blank: false)
		category(blank: false)
	}
}
