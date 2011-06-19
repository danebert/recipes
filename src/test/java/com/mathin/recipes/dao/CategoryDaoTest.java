package com.mathin.recipes.dao;

import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mathin.recipes.domain.Category;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/spring-context.xml" })
public class CategoryDaoTest {

	@Resource
	private CategoryDao categoryDao;

	@Test
	public void testGetById() {

		Category category = categoryDao.getById(Category.class, 42L);
		assertNotNull("category not retrived", category);
	}

}
