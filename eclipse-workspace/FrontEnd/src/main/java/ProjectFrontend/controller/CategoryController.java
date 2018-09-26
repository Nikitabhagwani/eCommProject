package ProjectFrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.dao.CategoryDao;
import com.niit.models.Category;
@Controller
public class CategoryController {
	@Autowired
	private CategoryDao categoryDao;
public CategoryController(){
	System.out.println("categoryController Bean is Created");
}
@RequestMapping(value="/all/getAllcategorys")
public String getAllProducts(Model model){
	List<Category> category=categoryDao.getAllCategorys();
	
	model.addAttribute("categoryList",category);
	
	return "listOfCategory";
}

@RequestMapping(value="/all/getcategory/{id}")
public String getcategory(@PathVariable int id,Model model){
	Category category=categoryDao.getCategory(id);
	model.addAttribute("categoryObj",category);
	return "viewcategory";
}
@RequestMapping(value="/admin/deletecategory/{id}")
public String deletecategory(@PathVariable int id,Model model){
	categoryDao.deleteCategory(id);
	return "redirect:/all/getAllcategorys";
}


@RequestMapping(value="/admin/getcategoryform")
public String getcategoryform(Model model){
	Category p=new Category();
	model.addAttribute("category",p);
//	model.addAttribute("categories",categoryDao.getAllCategories());
	//In categoryform, access  the values of all the properties of category p
	//in the form, p.getId(),p.getcategoryname(),p.getPrice(),p.getQuantity(),p.getcategorydesc()
	return "categoryForm";
}
@RequestMapping(value="/admin/addcategory")
public String addcategory(@ModelAttribute(name="category") Category category  ){
	categoryDao.saveCategory(category);
	return "redirect:/all/getAllcategorys";
}
@RequestMapping(value="/admin/getCupdateform/{id}")
public String getUpdatecategoryForm(@PathVariable int id,Model model){
	//how to get the category?
	Category category=categoryDao.getCategory(id);
	model.addAttribute("category",category);
//	model.addAttribute("categories",categoryDao.getAllCategories());
	/*categoryDao.saveCategory(category);*/
	return "updateCategoryForm";
}
@RequestMapping(value="/admin/updatecategory")
public String updateCategory(@ModelAttribute Category category){
	categoryDao.updateCategory(category);
	return "redirect:/all/getAllcategorys";
}
}