package com.niit.dao;
import java.util.List;



import com.niit.models.Category;

public interface CategoryDao {
Category saveCategory(Category category);
Category getCategory(int id);
Category updateCategory(Category category);
//category deletecategory(int id);
List<Category> getAllCategorys();
void deleteCategory(int id);
}