package com.niit.dao;
import java.util.List;
import com.niit.models.Product;
public interface ProductDao {
Product saveProduct(Product product);
Product getProduct(int id);
Product updateProduct(Product product);
//Product deleteProduct(int id);
List<Product> getAllProducts();
void deleteProduct(int id);
}