package com.mathin.recipes
import com.mathin.SecUser

class Category implements Comparable {

	transient springSecurityService

	SortedSet<SubCategory> subCategories
	SortedSet<Recipe> recipes

	static hasMany = [subCategories: SubCategory, recipes: Recipe]

	String name
	Integer rank
	SecUser owner

	static constraints = { name(blank: false) }

	static mapping ={
		id generator:'sequence', params:[sequence:'seq_category']
	}

	def beforeValidate() {
		if(!owner) {
			owner = springSecurityService.currentUser
		}

		if(!rank) {
			rank = 0
		}
	}

	def beforeInsert() {
		if(!owner) {
			owner = springSecurityService.currentUser
		}
	}

	@Override
	public int compareTo(Object object) {
		rank.compareTo(object.rank)
	}
}
