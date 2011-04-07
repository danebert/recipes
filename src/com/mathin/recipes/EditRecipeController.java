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

import com.mathin.appengine.PMF;

@Controller
@RequestMapping(value = "/recipe/edit")
@SessionAttributes("recipe")
public class EditRecipeController {
	private static final Logger LOGGER = Logger
			.getLogger(EditRecipeController.class.getName());

	// @InitBinder
	// public void initBinder(WebDataBinder binder) {
	// binder.registerCustomEditor(Recipe.class, new JDOEditor(Recipe.class,
	// PMF.get().getPersistenceManager()));
	// }

	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(Model model) {
		Recipe recipe;
		if (model.containsAttribute("recipe")) {
			recipe = (Recipe) model.asMap().get("recipe");
		} else {
			recipe = new Recipe();
		}
		model.addAttribute("recipe", recipe);
		return "recipe/edit";
	}

	@RequestMapping(value = "/{recipeKey}", method = RequestMethod.GET)
	public String edit(@PathVariable String recipeKey, Model model) {
		PersistenceManager persistenceManager = PMF.get()
				.getPersistenceManager();

		try {
			Long recipeId = Long.valueOf(recipeKey);
			Recipe recipe = persistenceManager.getObjectById(Recipe.class,
					recipeId);
			model.addAttribute("recipe", recipe);
		} finally {
			persistenceManager.close();
		}
		return "recipe/edit";
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processResult(@Valid Recipe recipe, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		PersistenceManager persistenceManager = PMF.get()
				.getPersistenceManager();
		modelAndView.setViewName("recipe/edit");
		if (result.hasErrors()) {
			LOGGER.log(Level.WARNING, "errors");
			modelAndView.getModel().put("recipe", recipe);
			return modelAndView;
		}
		try {
			persistenceManager.makePersistent(recipe);
		} finally {
			persistenceManager.close();
		}
		LOGGER.log(Level.WARNING, "here");
		return modelAndView;
	}
}
