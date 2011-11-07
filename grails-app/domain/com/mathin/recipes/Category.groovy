package com.mathin.recipes

class Category {
	String name
	Integer rank
	static constraints = { name(blank: false) }
}
