package com.mathin.recipes

import static org.hamcrest.CoreMatchers.*
import static org.junit.Assert.assertThat
import grails.plugins.springsecurity.SpringSecurityService
import grails.test.GrailsMock
import grails.test.mixin.*

import org.junit.Before
import org.junit.Test

import com.mathin.SecUser

@TestFor(SubCategoryController)
@Mock([Category, SubCategory, SecUser, SpringSecurityService])
class SubCategoryControllerTests {

	GrailsMock mockSpringSecurityService
	SubCategoryController controller
	SecUser user
	Category category
	SubCategory subCategory

	@Before
	void before() {
		mockSpringSecurityService = mockFor(SpringSecurityService, true)

		user = new SecUser(username:'username', password:'password', displayName:'displayName')

		category = new Category(owner: user, name: 'category name', rank: 1)
		category.save(flush: true, failOnError: true)

		subCategory = new SubCategory(owner: user, category: category, name: 'sub name', rank: 1)
		subCategory.save(flush: true, failOnError: true)

		controller = new SubCategoryController()
		controller.springSecurityService = mockSpringSecurityService.createMock()
	}

	@Test
	void listRedirectsIfNoUser() {
		// act
		controller.list()

		assertThat(response.redirectedUrl, is('/'))
	}

	@Test
	void listModelIncludesListAndSizeWhenUserPresent() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		// act
		def model = controller.list()

		assertThat(model.subCategoryInstanceTotal, is(1))
		assertThat(model.subCategoryInstanceList, notNullValue())
	}

	@Test
	void editDoesNotAllowEditOfOtherUsersSubCategory() {
		params.id = 1

		//act
		controller.edit()

		assertThat(flash.message, containsString('cannot edit'))
		assertThat(response.redirectedUrl, is('/subCategory/show/1'))
	}

	@Test
	void editRendersEditViewForOwnedSubCategory() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		params.id = 1

		//act
		def model = controller.edit()

		assertThat(model.subCategoryInstance, notNullValue())
	}

	@Test
	void deleteDoesNotAllowDeleteOfOtherUsersSubCategory() {
		params.id = 1

		//act
		controller.delete()

		assertThat(flash.message, containsString('cannot delete'))
		assertThat(response.redirectedUrl, is('/subCategory/show/1'))
	}

	@Test
	void deleteRedirectsToListIfSubCategoryNotFound() {
		params.id = 2

		//act
		controller.delete()

		assertThat(flash.message, is('default.not.found.message'))
		assertThat(response.redirectedUrl, is('/subCategory/list'))
	}

	@Test
	void deleteRedirectsToListWhenSubCategoryDeletedWithMessage() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		params.id = 1

		//act
		controller.delete()

		assertThat(flash.message, is('default.deleted.message'))
		assertThat(response.redirectedUrl, is('/subCategory/list'))
	}

	@Test
	void createPopulatesCategoriesInModel() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		//act
		def model = controller.create()
		assertThat(model.categoryInstanceList.size(), is(1))
	}
}
