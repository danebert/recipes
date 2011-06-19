package com.mathin.recipes;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.jdo.Transaction;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.users.User;
import com.mathin.appengine.GoogleDatastoreKeyEditor;

@Controller
@RequestMapping(value = "/edit/recipe")
@SessionAttributes("recipe")
public class EditRecipeController extends PersistedObjectController<Recipe> {
	private static final String VIEW_NAME = "edit/recipe";
	private static final Logger LOGGER = Logger
			.getLogger(EditRecipeController.class.getName());

	private PersistenceManager persistenceManager = getPersistenceManager();

	public EditRecipeController() {
		userService = getUserService();
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Key.class, new GoogleDatastoreKeyEditor());
	}

	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(Model model) {
		Recipe recipe;
		if (model.containsAttribute("recipe")) {
			recipe = (Recipe) model.asMap().get("recipe");
		} else {
			recipe = new Recipe();
		}
		model.addAttribute("recipe", recipe);
		populateCategories(model, getPersistenceManager());

		return VIEW_NAME;
	}

	@RequestMapping(value = "/{recipeKey}", method = RequestMethod.GET)
	public String edit(@PathVariable String recipeKey, Model model) {
		Long recipeId = Long.valueOf(recipeKey);
		Recipe recipe = getPersistenceManager().getObjectById(Recipe.class,
				recipeId);
		model.addAttribute("recipe", recipe);
		populateCategories(model, getPersistenceManager());
		return VIEW_NAME;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processResult(@Valid Recipe recipe,
			BindingResult result, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(VIEW_NAME);
		if (result.hasErrors()) {
			LOGGER.log(Level.WARNING, result.toString());
			modelAndView.getModel().put("recipe", recipe);
			return modelAndView;
		}

		populateUserAndDate(recipe);

		Transaction currentTransaction = getPersistenceManager()
				.currentTransaction();
		try {
			currentTransaction.begin();
			getPersistenceManager().makePersistent(recipe);
			currentTransaction.commit();
		} catch (Exception e) {
			LOGGER.log(Level.WARNING, "rolling back");
			e.printStackTrace();
			if (currentTransaction.isActive()) {
				currentTransaction.rollback();
			}
		} finally {
			getPersistenceManager().close();
		}
		populateCategories(model, getPersistenceManager());
		return modelAndView;
	}

	private void populateCategories(Model model,
			PersistenceManager persistenceManager) {
		User currentUser = userService.getCurrentUser();

		Query query = persistenceManager.newQuery(Category.class);
		query.setFilter("user == userParam");
		@SuppressWarnings("unchecked")
		List<Category> categories = (List<Category>) query.execute(currentUser);
		model.addAttribute("categories", categories);
	}

	@Override
	protected PersistenceManager getPersistenceManager() {
		if (null == persistenceManager || persistenceManager.isClosed()) {
			return super.getPersistenceManager();
		}
		return persistenceManager;
	}
}
