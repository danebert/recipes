package com.mathin.recipes;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;

@PersistenceCapable
public class SubCategory extends PersistedObject {

	@Persistent
	private Category category;
	@Persistent
	private String name;
	@Persistent
	private Integer order;

	public void setCategory(Category category) {
		this.category = category;
	}

	public Category getCategory() {
		return category;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setOrder(Integer order) {
		this.order = order;
	}

	public Integer getOrder() {
		return order;
	}
}
