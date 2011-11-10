package com.mathin.recipes

class SubCategory implements Comparable {
	static hasMany = [recipes:Recipe]

	String name
	Integer rank
	Category category

	static belongsTo = [category: Category]

	static constraints = {
		name(blank: false)
		category(blank: false)
	}
	@Override
	public int compareTo(Object object) {
		rank.compareTo(object.rank)
	}
}
