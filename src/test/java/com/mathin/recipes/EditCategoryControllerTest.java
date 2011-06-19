package com.mathin.recipes;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.easymock.EasyMockSupport;
import org.junit.Test;
import org.junit.runner.RunWith;
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
	@Resource
	private EditCategoryController controller;

	@Test
	public void testSetupFormWithNoCatgory() {
		Model model = new ExtendedModelMap();
		// unit under test
		controller.setupForm(model);
		assertNotNull("No category in model", model.asMap().get("category"));
	}

	@Test
	public void testSetupFormWithCategory() {
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
