package com.mathin.appengine;

import java.beans.PropertyEditorSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.jdo.PersistenceManager;

import com.mathin.recipes.PersistedObject;

public class JDOEditor<T extends PersistedObject> extends PropertyEditorSupport {
	private static final Logger LOGGER = Logger.getLogger(JDOEditor.class
			.getName());
	private PersistenceManager persistenceManager;
	private Class<T> clazz;

	public JDOEditor(Class<T> clazz, PersistenceManager persistenceManager) {
		this.clazz = clazz;
		this.persistenceManager = persistenceManager;
	}

	@Override
	public void setAsText(String text) {
		if (text == null || text.length() == 0) {
			setValue(null);
		} else {
			T object = null;
			try {
				object = persistenceManager.getObjectById(clazz,
						Long.valueOf(text));
			} catch (Exception e) {
				LOGGER.log(Level.SEVERE, "Cannot parse key: " + text, e);
			}
			setValue(object);
		}
	}

	@Override
	public String getAsText() {
		T value = (T) getValue();
		return value != null ? value.getId().toString() : "";
	}

}
