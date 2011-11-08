package com.mathin.recipes



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Category)
class CategoryTests {

	void testCompareTo() {

		Category mainDish = new Category(name:"Main Dish", rank:2)
		Category salad = new Category(name:"Salad",rank:1)

		SortedSet set = new TreeSet();
		set.add(mainDish);
		set.add(salad);

		assertEquals(salad,set.first());
		assertEquals(mainDish,set.last());
	}
}
