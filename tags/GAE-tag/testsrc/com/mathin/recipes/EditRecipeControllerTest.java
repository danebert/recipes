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

public class EditRecipeControllerTest extends EasyMockSupport {

	private EditRecipeController controller;
	private PersistenceManager mockPersistenceManager;
	private UserService mockUserService;

	@Before
	public void setUp() throws Exception {
		mockPersistenceManager = createMock(PersistenceManager.class);
		mockUserService = createMock(UserService.class);
		controller = new EditRecipeController() {

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
		assertNotNull("No recipe in model", model.asMap().get("recipe"));
	}

	@Test
	public void testSetupFormWithRecipe() {
		Model model = new ExtendedModelMap();
		Recipe recipe = new Recipe();
		model.addAttribute("recipe", recipe);
		// unit under test
		controller.setupForm(model);
		assertEquals("Wrong recipe in model", recipe,
				model.asMap().get("recipe"));
	}

	@Test
	public void testEdit() {
		Model model = new ExtendedModelMap();

		Recipe recipe = new Recipe();
		String recipeKey = "24";
		EasyMock.expect(mockPersistenceManager.getObjectById(Recipe.class, 24L))
				.andReturn(recipe);
		mockPersistenceManager.close();

		replayAll();
		// unit under test
		controller.edit(recipeKey, model);
		assertEquals("recipe not added to model", recipe,
				model.asMap().get("recipe"));

		verifyAll();
	}

	@Test
	public void testProcessResultNew() {
		Recipe recipe = new Recipe();
		BindingResult result = new BindException(recipe, "recipe");

		EasyMock.expect(mockPersistenceManager.makePersistent(recipe))
				.andReturn(recipe);
		mockPersistenceManager.close();

		User user = new User("test@example.com", "example.com");
		EasyMock.expect(mockUserService.getCurrentUser()).andReturn(user);

		replayAll();

		// unit under test
		controller.processResult(recipe, result, new ExtendedModelMap());
		verifyAll();

		assertNotNull("dateCreated not set", recipe.getDateCreated());
		assertNotNull("user not set", recipe.getUser());
	}
}
