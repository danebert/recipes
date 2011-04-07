package com.mathin.recipes;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.google.appengine.api.datastore.Text;

@PersistenceCapable
public class Recipe extends PersistedObject {

	@Persistent
	private String title;
	@Persistent
	private Text body;

	// @Persistent
	// private Category category;
	// @Persistent
	// private SubCategory subCategory;

	@NotNull
	@Size(min = 2, max = 50)
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

	// public Category getCategory() {
	// return category;
	// }
	//
	// public void setCategory(Category category) {
	// this.category = category;
	// }
	//
	// public SubCategory getSubCategory() {
	// return subCategory;
	// }
	//
	// public void setSubCategory(SubCategory subCategory) {
	// this.subCategory = subCategory;
	// }

}
