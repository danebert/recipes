package com.mathin.recipes

import static org.hamcrest.CoreMatchers.*
import static org.junit.Assert.assertThat
import grails.plugins.springsecurity.SpringSecurityService
import grails.test.GrailsMock
import grails.test.mixin.*

import org.junit.Before
import org.junit.Test

import com.mathin.SecUser

@TestFor(RecipeController)
@Mock([Recipe, Category, SubCategory, SecUser, SpringSecurityService])
class RecipeControllerTests {

	GrailsMock mockSpringSecurityService
	RecipeController controller
	SecUser user
	Category category
	SubCategory subCategory
	Recipe recipe

	@Before
	void before() {
		mockSpringSecurityService = mockFor(SpringSecurityService, true)

		user = new SecUser(username:'username', password:'password', displayName:'displayName')
		mockSpringSecurityService.demand.encodePassword { a -> 'password' }
		user.springSecurityService = mockSpringSecurityService.createMock()
		user.save(flush:true, failOnError:true)

		category = new Category(owner: user, name: 'category name', rank: 1)
		category.save(flush: true, failOnError: true)

		def otherCcategory = new Category(owner: user, name: 'other category name', rank: 2)
		otherCcategory.save(flush: true, failOnError: true)

		subCategory = new SubCategory(owner: user, category: category, name: 'sub name', rank: 1)
		subCategory.save(flush: true, failOnError: true)

		recipe = new Recipe(owner: user,category: category, title:'title', body:'body')
		recipe.save(flush: true, failOnError: true)

		controller = new RecipeController()
		controller.springSecurityService = mockSpringSecurityService.createMock()
	}

	@Test
	void editDoesNotAllowEditOfOtherUsersRecipe() {
		params.id = 1

		//act
		controller.edit()

		assertThat(flash.message, containsString('cannot edit'))
		assertThat(response.redirectedUrl, is('/recipe/show/1'))
	}

	@Test
	void editRendersEditViewForOwnedRecipe() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		params.id = 1

		//act
		def model = controller.edit()

		assertThat(model.recipeInstance, notNullValue())
	}

	@Test
	void deleteDoesNotAllowDeleteOfOtherUsersRecipe() {
		params.id = 1

		//act
		controller.delete()

		assertThat(flash.message, containsString('cannot delete'))
		assertThat(response.redirectedUrl, is('/recipe/show/1'))
	}

	@Test
	void deleteRedirectsToListIfRecipeNotFound() {
		params.id = 2

		//act
		controller.delete()

		assertThat(flash.message, is('default.not.found.message'))
		assertThat(response.redirectedUrl, is('/recipe/list'))
	}

	@Test
	void deleteRedirectsToListWhenRecipeDeletedWithMessage() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		params.id = 1

		//act
		controller.delete()

		assertThat(flash.message, is('default.deleted.message'))
		assertThat(response.redirectedUrl, is('/recipe/list'))
	}

	@Test
	void createPopulatesCategoriesInModel() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		params.id = 1

		//act
		def model = controller.create()
		assertThat(model.categoryInstanceList.size(), is(2))
	}

	@Test
	void createPopulatesCategoriesAndOwnerInModel() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		//act
		def model = controller.create()
		assertThat(model.categoryInstanceList.size(), is(2))
		assertThat(model.ownerInstance, is(user))
	}

	@Test
	void listPopulatesCategoriesAndOwnerInModel() {
		params.user = 'username'

		//act
		def model = controller.list()
		assertThat(model.categoryInstanceList.size(), is(2))
		assertThat(model.ownerInstance, is(user))
	}

	@Test
	void listPopulatesOneCategoryInModelIfSpecified() {
		params.user = 'username'
		params.category = 1

		//act
		def model = controller.list()
		assertThat(model.categoryInstanceList.name, is(category.name))
		assertThat(model.ownerInstance, is(user))
	}
}
