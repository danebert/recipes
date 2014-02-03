package com.mathin.recipes

import com.mathin.SecUser

class SubCategory implements Comparable {

	transient springSecurityService
	SortedSet<Recipe> recipes

	static hasMany = [recipes:Recipe]

	String name
	Integer rank
	Category category
	SecUser owner

	static belongsTo = [category: Category]

	static constraints = {
		name(blank: false)
		category(blank: false)
	}
	static mapping ={
		id generator:'sequence', params:[sequence:'seq_sub_category']
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
