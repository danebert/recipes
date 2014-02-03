package com.mathin.recipes

import static org.hamcrest.CoreMatchers.*
import static org.junit.Assert.assertThat
import grails.plugins.springsecurity.SpringSecurityService
import grails.test.GrailsMock
import grails.test.mixin.*

import org.junit.Before
import org.junit.Ignore
import org.junit.Test

import com.mathin.SecUser

@TestFor(CategoryController)
@Mock([Category, SecUser, SubCategory, SpringSecurityService])
class CategoryControllerTests {

	GrailsMock mockSpringSecurityService
	CategoryController controller
	SecUser user
	Category category

	@Before
	void before() {
		mockSpringSecurityService = mockFor(SpringSecurityService, true)

		user = new SecUser(username:'username', password:'password', displayName:'displayName')

		category = new Category(owner: user, name: 'category name', rank: 1)
		category.save(flush: true, failOnError: true)

		controller = new CategoryController()
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

		assertThat(model.categoryInstanceTotal, is(1))
		assertThat(model.categoryInstanceList, notNullValue())
	}

	@Test
	void orderRedirectsIfNoUser() {
		// act
		controller.order()

		assertThat(response.redirectedUrl, is('/'))
	}

	@Test
	void orderModelIncludesListAndSizeWhenUserPresent() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		// act
		def model = controller.order()

		assertThat(model.categoryInstanceTotal, is(1))
		assertThat(model.categoryInstanceList, notNullValue())
	}

	@Test
	void saveOrderSetsFlashMessage() {
		params.order = []

		// act
		def model = controller.saveOrder()
		assertThat(flash.message, is('Order Updated'))
	}

	@Test
	void saveOrderRendersOrderView() {
		params.order = []

		// act
		def model = controller.saveOrder()
		assertThat(response.redirectedUrl, is('/category/order'))
	}

	@Test
	void saveOrderUpdatesCatetories() {

		def category2 = new Category(owner: user, name: 'category name 2', rank: 2)
		category2.save(flush: true, failOnError: true)

		def category3 = new Category(owner: user, name: 'category name 2', rank: 3)
		category3.save(flush: true, failOnError: true)


		params.order = [3, 1, 2]

		// act
		controller.saveOrder()

		assertThat(category.rank, is(2))
		assertThat(category2.rank, is(3))
		assertThat(category3.rank, is(1))
	}

	@Test
	void editDoesNotAllowEditOfOtherUsersCategory() {
		params.id = 1

		//act
		controller.edit()

		assertThat(flash.message, containsString('cannot edit'))
		assertThat(response.redirectedUrl, is('/category/show/1'))
	}

	@Test
	void editRendersEditViewForOwnedCategory() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		params.id = 1

		//act
		def model = controller.edit()

		assertThat(model.categoryInstance, notNullValue())
	}

	@Test
	void deleteDoesNotAllowDeleteOfOtherUsersCategory() {
		params.id = 1

		//act
		controller.delete()

		assertThat(flash.message, containsString('cannot delete'))
		assertThat(response.redirectedUrl, is('/category/show/1'))
	}

	@Test
	void deleteRedirectsToListIfCategoryNotFound() {
		params.id = 2

		//act
		controller.delete()

		assertThat(flash.message, is('default.not.found.message'))
		assertThat(response.redirectedUrl, is('/category/list'))
	}

	@Test
	void deleteRedirectsToListWhenCategoryDeletedWithMessage() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		params.id = 1

		//act
		controller.delete()

		assertThat(flash.message, is('default.deleted.message'))
		assertThat(response.redirectedUrl, is('/category/list'))
	}

	@Ignore('this setup is not working to trigger the DataIntegrityConstraintViolationException')
	@Test
	void deleteRedirectsToShowWhenCategoryNotDeletedWithMessage() {
		mockSpringSecurityService.demand.getCurrentUser { -> user }

		new SubCategory(category: category,owner: user, name: 'sub', rank:1).save(flush:true, failOnError:true)
		params.id = 1

		//act
		controller.delete()

		assertThat(flash.message, is('default.not.deleted.message'))
		assertThat(response.redirectedUrl, is('/category/show/1'))
	}
}
