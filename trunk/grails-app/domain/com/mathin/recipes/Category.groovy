package com.mathin.recipes

class Category implements Comparable {
	SortedSet subCategories
	static hasMany = [subCategories: SubCategory]
	
	String name
	Integer rank
	
	static constraints = { name(blank: false) }
	
	@Override
	public int compareTo(Object object) {
		rank.compareTo(object.rank)
	}
}
