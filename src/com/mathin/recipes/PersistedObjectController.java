package com.mathin.recipes;

import java.util.Calendar;
import java.util.TimeZone;

import javax.jdo.PersistenceManager;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.mathin.appengine.PMF;

public abstract class PersistedObjectController<T extends PersistedObject> {
	protected UserService userService;

	protected void populateUserAndDate(PersistedObject persistedObject) {
		if (null == persistedObject.getDateCreated()) {
			Calendar calendar = Calendar.getInstance(TimeZone
					.getTimeZone("America/Los_Angeles"));
			persistedObject.setDateCreated(calendar.getTime());
		}

		if (null == persistedObject.getUser()) {
			User user = userService.getCurrentUser();
			persistedObject.setUser(user);
		}
	}

	protected PersistenceManager getPersistenceManager() {
		PersistenceManager persistenceManager = PMF.get()
				.getPersistenceManager();
		return persistenceManager;
	}

	protected UserService getUserService() {
		return UserServiceFactory.getUserService();
	}

}