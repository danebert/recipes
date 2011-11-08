package com.mathin.recipes

class Category {
	static hasMany = [subCategories: SubCategory]
	
	String name
	Integer rank
	
	static constraints = { name(blank: false) }
}
