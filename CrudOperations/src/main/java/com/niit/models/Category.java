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

}
