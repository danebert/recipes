package com.mathin.recipes;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

@PersistenceCapable
public class Recipe extends PersistedObject {

	@Persistent
	private String title;
	@Persistent
	private Text body;

	@Persistent
	private Key categoryKey;

	// @Persistent
	// private SubCategory subCategory;
	@Persistent
	private Integer rating;
	@Persistent
	private Text notes;

	@NotNull
	@Size(min = 2, max = 100)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@NotNull
	public Text getBody() {
		return body;
	}

	public void setBody(Text body) {
		this.body = body;
	}

	// @NotNull
	public Key getCategoryKey() {
		return categoryKey;
	}

	public void setCategoryKey(Key categoryKey) {
		this.categoryKey = categoryKey;
	}

	//
	// public SubCategory getSubCategory() {
	// return subCategory;
	// }
	//
	// public void setSubCategory(SubCategory subCategory) {
	// this.subCategory = subCategory;
	// }

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public Text getNotes() {
		return notes;
	}

	public void setNotes(Text notes) {
		this.notes = notes;
	}

}
