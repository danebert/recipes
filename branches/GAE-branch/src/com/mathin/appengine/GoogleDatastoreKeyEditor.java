package com.mathin.appengine;

import java.beans.PropertyEditorSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

/**
 * Created by IntelliJ IDEA.
 * 
 * @author shane
 * @since Jul 1, 2009 9:19:33 PM
 */
public class GoogleDatastoreKeyEditor extends PropertyEditorSupport {
	private static final Logger LOGGER = Logger
			.getLogger(GoogleDatastoreKeyEditor.class.getName());

	@Override
	public void setAsText(String text) {
		if (text == null || text.length() == 0) {
			setValue(null);
		} else {
			Key key = null;
			try {
				key = KeyFactory.stringToKey(text);
			} catch (Exception e) {
				LOGGER.log(Level.SEVERE, "Cannot parse key: " + text, e);
			}
			setValue(key);
		}
	}

	@Override
	public String getAsText() {
		Key value = (Key) getValue();
		return value != null ? KeyFactory.keyToString(value) : "";
	}
}
