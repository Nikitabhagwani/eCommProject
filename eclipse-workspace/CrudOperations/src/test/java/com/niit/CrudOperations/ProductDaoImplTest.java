package com.niit.CrudOperations;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Service;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.models.Product;

import junit.framework.TestCase;

@Service
public class ProductDaoImplTest extends TestCase {
	 ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class);
	   ProductDao productDao=(ProductDao)context.getBean("productDaoImpl");
	public void testSaveProduct() {
		
	}

	/*public void testGetProduct() {
	   Product product3=productDao.getProduct(1);
	   Product product1=productDao.getProduct(3);//id=3,
	   Product product2=productDao.getProduct(4);//id==4
	   //Null or Not null
	   assertNotNull(product1);
	   assertNotNull(product3);
	   assertNull(product2);
	   
	   //check for prices [actual price returned is same as expected price for id=3
	   double expectedPrice=1000;
	   double actualPrice=product1.getPrice();
	   assertTrue(expectedPrice==actualPrice);
	}*/

}