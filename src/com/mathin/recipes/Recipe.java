package com.mathin.recipes;

import java.util.Date;

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
	@Persistent
	private Integer rating;
	@Persistent
	private Date dateCreated;
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

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public Text getNotes() {
		return notes;
	}

	public void setNotes(Text notes) {
		this.notes = notes;
	}
}
