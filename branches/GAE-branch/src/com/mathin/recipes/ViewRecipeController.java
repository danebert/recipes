package com.mathin.recipes;

import javax.jdo.PersistenceManager;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mathin.appengine.PMF;

@Controller
@RequestMapping(value = "/recipe")
public class ViewRecipeController {
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
		return "recipe/view";
	}
}
