package com.mathin.recipes;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.easymock.EasyMockSupport;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;

import com.mathin.recipes.domain.Category;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/spring-context.xml" })
public class EditCategoryControllerTest extends EasyMockSupport {
	@Autowired
	private EditCategoryController controller;

	// @Before
	// public void setup() {
	// controller = new EditCategoryController();
	// }

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
	public void testSetupEditForm() {
		Model model = new ExtendedModelMap();

		Category category = new Category();

		replayAll();
		// unit under test
		controller.setupEditForm(24L, model);
		assertEquals("category not added to model", category, model.asMap()
				.get("category"));

		verifyAll();
	}

	@Test
	public void testProcessResultNew() {
		Category category = new Category();
		BindingResult result = new BindException(category, "category");

		replayAll();

		// unit under test
		controller.processResult(category, result);
		verifyAll();

		assertNotNull("dateCreated not set", category.getDateCreated());
	}
}
