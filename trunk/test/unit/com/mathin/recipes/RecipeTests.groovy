package com.mathin.recipes

import static org.hamcrest.CoreMatchers.*
import static org.junit.Assert.assertThat
import grails.plugins.springsecurity.SpringSecurityService
import grails.test.GrailsMock
import grails.test.mixin.*

import org.junit.Before
import org.junit.Test

import com.mathin.SecUser

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Recipe)
class RecipeTests {
	Category salad
	Recipe recipe
	GrailsMock mockSpringSecurityService

	@Before
	void before() {
		salad = new Category(name:"Salad",rank:1)
		recipe = new Recipe(category: salad, title: 'title', body: 'body', owner: new SecUser())
		mockSpringSecurityService = mockFor(SpringSecurityService)
		recipe.springSecurityService = mockSpringSecurityService.createMock()
	}

	@Test
	void constraintsValid() {
		recipe.validate()
		println recipe.errors
		assertThat(recipe.validate(), is(true))
	}

	@Test
	void constraintsTitleBlank() {
		recipe.title = ''
		assertThat(recipe.validate(), is(false))
		assertThat(recipe.errors['title'], notNullValue())
	}

	@Test
	void constraintsCategoryBlank() {
		recipe.category = null
		assertThat(recipe.validate(), is(false))
		assertThat(recipe.errors['category'], notNullValue())
	}

	@Test
	void constraintsBodyBlank() {
		recipe.body = ''
		assertThat(recipe.validate(), is(false))
		assertThat(recipe.errors['body'], notNullValue())
	}

	@Test
	void ownerSetToCurrentUserIfNullBeforeValidate() {
		recipe.owner = null
		def expectedUser = new SecUser()
		mockSpringSecurityService.demand.getCurrentUser { -> expectedUser }

		recipe.validate()
		assertThat(recipe.owner,is(expectedUser))
	}

	@Test
	void ownerSetToCurrentUserIfNullBeforeInsert() {
		recipe.owner = null
		def expectedUser = new SecUser()
		mockSpringSecurityService.demand.getCurrentUser { -> expectedUser }

		recipe.save()
		assertThat(recipe.owner,is(expectedUser))
	}

	@Test
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
