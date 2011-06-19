package com.mathin.recipes;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.jdo.PersistenceManager;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/edit/category")
@SessionAttributes("category")
public class EditCategoryController extends PersistedObjectController<Category> {
	private static final String VIEW_NAME = "edit/category";
	private static final Logger LOGGER = Logger
			.getLogger(EditCategoryController.class.getName());

	public EditCategoryController() {
		userService = getUserService();
	}

	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(Model model) {
		Category category;
		if (model.containsAttribute("category")) {
			category = (Category) model.asMap().get("category");
		} else {
			category = new Category();
		}
		model.addAttribute("category", category);
		return VIEW_NAME;
	}

	@RequestMapping(value = "/{categoryKey}", method = RequestMethod.GET)
	public String edit(@PathVariable String categoryKey, Model model) {
		PersistenceManager persistenceManager = getPersistenceManager();

		try {
			Long categoryId = Long.valueOf(categoryKey);
			Category category = persistenceManager.getObjectById(
					Category.class, categoryId);
			model.addAttribute("category", category);
		} finally {
			persistenceManager.close();
		}
		return VIEW_NAME;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processResult(@Valid Category category,
			BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(VIEW_NAME);
		if (result.hasErrors()) {
			LOGGER.log(Level.WARNING, result.toString());
			modelAndView.getModel().put("category", category);
			return modelAndView;
		}

		populateUserAndDate(category);

		PersistenceManager persistenceManager = getPersistenceManager();
		try {
			persistenceManager.makePersistent(category);
		} finally {
			persistenceManager.close();
		}
		return modelAndView;
	}
}
