package com.niit.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.springframework.transaction.annotation.Transactional;


import com.niit.models.Category;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {
@Autowired(required=true)
private SessionFactory sessionFactory;	

    
	public Category saveCategory(Category category) {//id=0,categoryname="pen",categorydesc="pen",price=100,quantity=10
        	Session session=(Session) sessionFactory.getCurrentSession();//get session object from SessionFactory
        	System.out.println("Id of the category before persisting " + category.getId());
        	session.save(category); //generate an insert query, insert the data into category table
        	System.out.println("Id of the category after persisting " + category.getId());
        	return category;//id will have some value 
	}

	public Category getCategory(int id) {
		Session session=(Session) sessionFactory.getCurrentSession();
		Category category=(Category)((org.hibernate.Session) session).get(Category.class, id);
		//session.get(category.class,id) -> select * from category where id=?
		return category;
	}

	public Category updateCategory(Category category) {
		Session session=sessionFactory.getCurrentSession();
		//category category=session.get(category.class, id);
		session.update(category);//update category set categoryname=?,categorydesc=?,price=?,quantity=? where id=?
		return category;
	}

	public Category deleteCategory(Category category) {
		Session session=sessionFactory.getCurrentSession();
		//category category=session.get(category.class, id);
		session.delete(category);//update category set categoryname=?,categorydesc=?,price=?,quantity=? where id=?
		return category;
			
	}
	public List<Category> getAllCategorys() {
		Session session=sessionFactory.getCurrentSession();
		//from category -> HQL
		//category is class name
		//from category -> Select * from category -> records from category table
		//record will get converted into category object
		//category object will get added into a list
		// List<category>
		Query query=(Query)session.createQuery("from Category");//category is an entity 
		List<Category> category=(List) query.list();
		for(Category c:category)
		{
			System.out.println(c.getcategoryname());
		}
		return category;
	}

	public void deleteCategory(int id) {
		
		Session session=sessionFactory.getCurrentSession();
		//Get category object for the given id
		Category category=(Category)session.get(Category.class, id);
		if(category!=null)
		session.delete(category);//delete from category where id=?

	}

	
}