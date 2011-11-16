package com.mathin.recipes



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Recipe)
class RecipeTests {

	void testCompareTo() {

		Category mainDish = new Category(name:"Main Dish", rank:2)
		Recipe a = new Recipe(title:"A main dish",body:"body",category:mainDish)
		Recipe b = new Recipe(title:"B main dish",body:"body",category:mainDish)

		SortedSet set = new TreeSet()
		set.add(b)
		set.add(a)

		assertEquals(a,set.first())
		assertEquals(b,set.last())
	}
}
