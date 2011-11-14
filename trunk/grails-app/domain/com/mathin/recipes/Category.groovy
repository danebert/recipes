package com.mathin.recipes
import com.mathin.SecUser

class Category implements Comparable {

	transient springSecurityService

	SortedSet<SubCategory> subCategories

	static hasMany = [subCategories: SubCategory, recipes: Recipe]

	String name
	Integer rank
	SecUser owner

	static constraints = {
		name(blank: false)
		id generator:'sequence',params:[name:'seq_category']
	}

	def beforeValidate() {
		if(!owner) {
			owner = springSecurityService.currentUser
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
