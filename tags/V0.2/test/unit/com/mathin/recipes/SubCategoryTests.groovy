package com.mathin.recipes



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(SubCategory)
class SubCategoryTests {

	void testCompareTo() {
		Category salad = new Category(name:"Salad",rank:1)

		SubCategory pasta = new SubCategory(name:"Pasta",rank:2, category:salad)
		SubCategory green = new SubCategory(name:"Green",rank:1, category:salad)

		SortedSet set = new TreeSet();
		set.add(pasta);
		set.add(green);

		assertEquals(green,set.first());
		assertEquals(pasta,set.last());
	}
}
