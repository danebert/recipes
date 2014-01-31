package com.mathin.recipes

import static org.hamcrest.CoreMatchers.*
import static org.junit.Assert.assertThat
import grails.plugins.springsecurity.SpringSecurityService
import grails.test.GrailsMock
import grails.test.mixin.*

import org.junit.Before
import org.junit.Test

import com.mathin.SecUser

@TestFor(Category)
@Mock(SpringSecurityService)
class CategoryTests {

	Category category
	GrailsMock mockSpringSecurityService

	@Before
	void before() {
		category = new Category(name: 'name', rank: 1, owner: new SecUser())
		mockSpringSecurityService = mockFor(SpringSecurityService)
		category.springSecurityService = mockSpringSecurityService.createMock()
	}

	@Test
	void testCompareTo() {

		Category mainDish = new Category(name:"Main Dish", rank:2)
		Category salad = new Category(name:"Salad", rank:1)

		SortedSet set = new TreeSet()
		set.add(mainDish)
		set.add(salad)
		assertThat(set.first(), is(salad))
		assertThat(set.last(), is(mainDish))
	}

	@Test
	void constraintsValid() {
		category.validate()
		println category.errors
		assertThat(category.validate(), is(true))
	}

	@Test
	void constraintsNameBlank() {
		category.name = ''
		assertThat(category.validate(), is(false))
		assertThat(category.errors['name'], notNullValue())
	}

	@Test
	void ownerSetToCurrentUserIfNullBeforeValidate() {
		category.owner = null
		def expectedUser = new SecUser()
		mockSpringSecurityService.demand.getCurrentUser { -> expectedUser }

		category.validate()
		assertThat(category.owner,is(expectedUser))
	}

	@Test
	void ownerSetToCurrentUserIfNullBeforeInsert() {
		category.owner = null
		def expectedUser = new SecUser()
		mockSpringSecurityService.demand.getCurrentUser { -> expectedUser }

		category.save()
		assertThat(category.owner,is(expectedUser))
	}
}
