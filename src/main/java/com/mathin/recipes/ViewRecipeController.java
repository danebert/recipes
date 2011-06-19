package com.mathin.recipes;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/recipe")
public class ViewRecipeController {
	@RequestMapping(value = "/{recipeId}", method = RequestMethod.GET)
	public String edit(@PathVariable String recipeKey, Model model) {

		return "recipe/view";
	}
}
