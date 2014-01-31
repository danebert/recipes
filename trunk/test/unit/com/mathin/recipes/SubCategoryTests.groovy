package com.mathin.recipes

import static org.hamcrest.CoreMatchers.*
import static org.junit.Assert.assertThat
import grails.plugins.springsecurity.SpringSecurityService
import grails.test.GrailsMock
import grails.test.mixin.*

import org.junit.Before
import org.junit.Test

import com.mathin.SecUser

@TestFor(SubCategory)
@Mock(SpringSecurityService)
class SubCategoryTests {

	Category salad
	SubCategory subCategory
	GrailsMock mockSpringSecurityService

	@Before
	void before() {
		salad = new Category(name:"Salad",rank:1)
		subCategory = new SubCategory(category: salad, name: 'name', rank: 1, owner: new SecUser())
		mockSpringSecurityService = mockFor(SpringSecurityService)
		subCategory.springSecurityService = mockSpringSecurityService.createMock()
	}

	@Test
	void testCompareTo() {
		Category salad = new Category(name:"Salad",rank:1)

		SubCategory pasta = new SubCategory(name:"Pasta",rank:2, category:salad)
		SubCategory green = new SubCategory(name:"Green",rank:1, category:salad)

		SortedSet set = new TreeSet()
		set.add(pasta)
		set.add(green)

		assertEquals(green,set.first())
		assertEquals(pasta,set.last())
	}


	@Test
	void constraintsValid() {
		subCategory.validate()
		println subCategory.errors
		assertThat(subCategory.validate(), is(true))
	}

	@Test
	void constraintsNameBlank() {
		subCategory.name = ''
		assertThat(subCategory.validate(), is(false))
		assertThat(subCategory.errors['name'], notNullValue())
	}

	@Test
	void constraintsCategoryBlank() {
		subCategory.category = null
		assertThat(subCategory.validate(), is(false))
		assertThat(subCategory.errors['category'], notNullValue())
	}

	@Test
	void ownerSetToCurrentUserIfNullBeforeValidate() {
		subCategory.owner = null
		def expectedUser = new SecUser()
		mockSpringSecurityService.demand.getCurrentUser { -> expectedUser }

		subCategory.validate()
		assertThat(subCategory.owner,is(expectedUser))
	}

	@Test
	void ownerSetToCurrentUserIfNullBeforeInsert() {
		subCategory.owner = null
		def expectedUser = new SecUser()
		mockSpringSecurityService.demand.getCurrentUser { -> expectedUser }

		subCategory.save()
		assertThat(subCategory.owner,is(expectedUser))
	}
}
