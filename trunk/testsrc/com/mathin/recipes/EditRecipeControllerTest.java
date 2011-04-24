package com.mathin.recipes;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import javax.jdo.PersistenceManager;

import org.easymock.EasyMock;
import org.junit.Before;
import org.junit.Test;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

public class EditRecipeControllerTest {

	private EditRecipeController controller;
	private PersistenceManager mockPersistenceManager;

	@Before
	public void setUp() throws Exception {
		mockPersistenceManager = EasyMock.createMock(PersistenceManager.class);
		controller = new EditRecipeController() {

			@Override
			protected PersistenceManager getPersistenceManager() {
				return mockPersistenceManager;
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

		EasyMock.replay(mockPersistenceManager);
		// unit under test
		controller.edit(recipeKey, model);
		assertEquals("recipe not added to model", recipe,
				model.asMap().get("recipe"));

		EasyMock.verify(mockPersistenceManager);
	}
}
