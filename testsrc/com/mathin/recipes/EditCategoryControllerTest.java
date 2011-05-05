package com.mathin.recipes;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import javax.jdo.PersistenceManager;

import org.easymock.EasyMock;
import org.easymock.EasyMockSupport;
import org.junit.Before;
import org.junit.Test;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;

public class EditCategoryControllerTest extends EasyMockSupport {

	private EditCategoryController controller;
	private PersistenceManager mockPersistenceManager;
	private UserService mockUserService;

	@Before
	public void setUp() throws Exception {
		mockPersistenceManager = createMock(PersistenceManager.class);
		mockUserService = createMock(UserService.class);
		controller = new EditCategoryController() {

			@Override
			protected PersistenceManager getPersistenceManager() {
				return mockPersistenceManager;
			}

			@Override
			protected UserService getUserService() {
				return mockUserService;
			}
		};
	}

	@Test
	public void testSetupFormWithNoRecipe() {
		Model model = new ExtendedModelMap();
		// unit under test
		controller.setupForm(model);
		assertNotNull("No category in model", model.asMap().get("category"));
	}

	@Test
	public void testSetupFormWithRecipe() {
		Model model = new ExtendedModelMap();
		Category category = new Category();
		model.addAttribute("category", category);
		// unit under test
		controller.setupForm(model);
		assertEquals("Wrong category in model", category,
				model.asMap().get("category"));
	}

	@Test
	public void testEdit() {
		Model model = new ExtendedModelMap();

		Category category = new Category();
		String categoryKey = "24";
		EasyMock.expect(
				mockPersistenceManager.getObjectById(Category.class, 24L))
				.andReturn(category);
		mockPersistenceManager.close();

		replayAll();
		// unit under test
		controller.edit(categoryKey, model);
		assertEquals("category not added to model", category, model.asMap()
				.get("category"));

		verifyAll();
	}

	@Test
	public void testProcessResultNew() {
		Category category = new Category();
		BindingResult result = new BindException(category, "category");

		EasyMock.expect(mockPersistenceManager.makePersistent(category))
				.andReturn(category);
		mockPersistenceManager.close();

		User user = new User("test@example.com", "example.com");
		EasyMock.expect(mockUserService.getCurrentUser()).andReturn(user);

		replayAll();

		// unit under test
		controller.processResult(category, result);
		verifyAll();

		assertNotNull("dateCreated not set", category.getDateCreated());
		assertNotNull("user not set", category.getUser());
	}
}
