package com.mathin.recipes.dao;

import javax.jdo.PersistenceManagerFactory;

import com.mathin.recipes.domain.PersistedObject;

public class BaseDao<T extends PersistedObject> {

	private PersistenceManagerFactory persistenceManagerFactory;

	public void setPersistenceManagerFactory(PersistenceManagerFactory pmf) {
		persistenceManagerFactory = pmf;
	}

	public PersistenceManagerFactory getPersistenceManagerFactory() {
		return persistenceManagerFactory;
	}

	public T getById(Class<T> clazz, Long id) {
		return getPersistenceManagerFactory().getPersistenceManager()
				.getObjectById(clazz, id);
	}
}