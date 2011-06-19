package com.mathin.recipes;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.easymock.EasyMockSupport;
import org.junit.Before;
import org.junit.Test;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;

import com.mathin.recipes.domain.Recipe;

public class EditRecipeControllerTest extends EasyMockSupport {

	private EditRecipeController controller;

	@Before
	public void setUp() throws Exception {
		controller = new EditRecipeController() {
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

		replayAll();

		// unit under test
		controller.processResult(recipe, result, new ExtendedModelMap());
		verifyAll();

		assertNotNull("dateCreated not set", recipe.getDateCreated());
	}
}
