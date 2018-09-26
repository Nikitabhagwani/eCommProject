package com.niit.CrudOperations;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.CategoryDao;
import com.niit.dao.CategoryDaoImpl;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.models.Category;
import com.niit.models.Product;

public class App {

	public static void main(String args[]) {
	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class,CategoryDaoImpl.class);
     ProductDao productDao = (ProductDao)context.getBean("productDaoImpl");
     CategoryDao categoryDao=(CategoryDao) context.getBean("categoryDaoImpl");
     System.out.println("nikki");
     Category obj = new Category();
	Product product = new Product();
	product.setProductname("tap");
	product.setProductdesc("water taps");
	product.setQuantity(20);
	product.setPrice(100);
	
	productDao.saveProduct(product);
	
	Product product2= productDao.getProduct(1);
	product2.setProductname("Taps");
	product2.setProductdesc("Water Taps");
	product2.setQuantity(20);
	product2.setPrice(100);
	
	productDao.updateProduct(product2);
	
	
	
	//productDao.deleteProduct(product3);
	

obj.setcategoryname("tap");
obj.setcategorydesc("water taps");
obj.setQuantity(20);
obj.setPrice(100);
	
categoryDao.saveCategory(obj);
	}
}