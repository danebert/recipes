package com.mathin.recipes;

import java.util.Calendar;
import java.util.TimeZone;

import javax.jdo.PersistenceManagerFactory;

import com.mathin.recipes.domain.PersistedObject;

public abstract class PersistedObjectController<T extends PersistedObject> {
	private PersistenceManagerFactory persistenceManagerFactory;

	// @Resource(name = "persistenceManagerFactory")
	public void setPersistenceManagerFactory(PersistenceManagerFactory pmf) {
		persistenceManagerFactory = pmf;
	}

	public PersistenceManagerFactory getPersistenceManagerFactory() {
		return persistenceManagerFactory;
	}

	protected void populateUserAndDate(PersistedObject persistedObject) {
		if (null == persistedObject.getDateCreated()) {
			Calendar calendar = Calendar.getInstance(TimeZone
					.getTimeZone("America/Los_Angeles"));
			persistedObject.setDateCreated(calendar.getTime());
		}

		// if (null == persistedObject.getUser()) {
		// User user = userService.getCurrentUser();
		// persistedObject.setUser(user);
		// }
	}

}