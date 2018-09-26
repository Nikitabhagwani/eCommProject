package com.niit.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {
	@Id  // - property id unique and not null
	@GeneratedValue(strategy=GenerationType.AUTO) //auto generation - automatically generate the value for id
private int id;
private String categoryname;
private String categorydesc;
private int quantity;
private double price;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getcategoryname() {
	return categoryname;
}
public void setcategoryname(String categoryname) {
	this.categoryname = categoryname;
}
public String getcategorydesc() {
	return categorydesc;
}
public void setcategorydesc(String categorydesc) {
	this.categorydesc = categorydesc;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}



}
