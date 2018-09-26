package ProjectFrontend.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import java.io.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.models.Product;
@Controller
public class ProductController {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categorydao;
public ProductController(){
	System.out.println("ProductController Bean is Created");
}
@RequestMapping(value="/all/getAllProducts")
public String getAllProducts(Model model){
	List<Product> products=productDao.getAllProducts();
	//Attribute name is the Key - productList
	//value - List<Product> products is the data
	model.addAttribute("productsList",products);
	//                 attributename   data
	return "listOfProduct";//logical view name
	//in listofproducts.jsp,access the model attribute "productsList"
}

@RequestMapping(value="/all/getproduct/{id}")
public String getProduct(@PathVariable int id,Model model){
	Product product=productDao.getProduct(id);
	model.addAttribute("productObj",product);
	return "viewproduct";
}

@RequestMapping(value="/admin/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id,Model model,HttpServletRequest request){
	productDao.deleteProduct(id);
	Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+id+".png");
	if(Files.exists(path)){
		try {
			Files.delete(path);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	return "redirect:/all/getAllProducts";
}



@RequestMapping(value="/admin/getproductform")
public String getproductform(Model model){
	Product p=new Product();
	model.addAttribute("product",p);
	model.addAttribute("categories",productDao.getAllCategories());
	//In productform, access  the values of all the properties of product p
	//in the form, p.getId(),p.getProductname(),p.getPrice(),p.getQuantity(),p.getProductdesc()
	return "productForm";
}

/*@RequestMapping(value="/admin/getproductform")
public String getproductform(Model model){
	Product p=new Product();
	model.addAttribute("product",p);
//	model.addAttribute("categories",productDao.getAllCategories());
	//In productform, access  the values of all the properties of product p
	//in the form, p.getId(),p.getProductname(),p.getPrice(),p.getQuantity(),p.getProductdesc()
	return "productForm";
}
*/
/*@RequestMapping(value="/admin/addproduct")
public String addProduct(@ModelAttribute(name="product") Product product,BindingResult result,Model model ,HttpServletRequest request  )

public String addProduct(@Validated @ModelAttribute(name="product") Product product,BindingResult result,Model model ,HttpServletRequest request ){
	//after validation, if result has any errors
	if(result.hasErrors()){//if it is true, result has errors
		model.addAttribute("categories",productDao.getAllCategories());
		return "productform";
	}
	
	productDao.saveProduct(product);
	
	MultipartFile img=product.getImage();
	//System.out.println(getServletContext().getRealPath("/"));
	//Defining a path
	Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getId()+".png");
	//transfer the image to the file
	if(!img.isEmpty()&&img!=null){
		try {
			img.transferTo(new File(path.toString()));
			//img.transferTo();
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	return "redirect:/all/getAllProducts";
}*/

@RequestMapping(value="/admin/addproduct")
public String addProduct(@Validated @ModelAttribute(name="product") Product product,BindingResult result,Model model ,HttpServletRequest request ){
	//after validation, if result has any errors
	if(result.hasErrors()){//if it is true, result has errors
		model.addAttribute("categories",productDao.getAllCategories());
		return "productform";
	}
	
	productDao.saveProduct(product);
	
	MultipartFile img=product.getImage();
	System.out.println(request.getServletContext().getRealPath("/"));
	//Defining a path
	Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getId()+".png");
	//transfer the image to the file
	if(!img.isEmpty()&&img!=null){
		try {
			img.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	return "redirect:/all/getAllProducts";
}





@RequestMapping(value="/admin/getupdateform/{id}")
public String getUpdateProductForm(@PathVariable int id,Model model){
	//how to get the product?
	Product product=productDao.getProduct(id);
	model.addAttribute("product",product);
	model.addAttribute("categories",productDao.getAllCategories());
	return "updateProductForm";


}
@RequestMapping(value="/admin/updateproduct")
public String updateProduct(@Validated @ModelAttribute Product product,BindingResult result,Model model,HttpServletRequest request){//product will have updated values
	   if(result.hasErrors()){
		   model.addAttribute("categories",productDao.getAllCategories());
		   return "updateProductForm";
	   }
		productDao.updateProduct(product);
		MultipartFile img=product.getImage();
		System.out.println(request.getServletContext().getRealPath("/"));
		//Defining a path
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getId()+".png");
		//transfer the image to the file
		if(!img.isEmpty()&&img!=null){
			try {
				img.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/all/getAllProducts";

}
@RequestMapping(value="/all/searchByCategory")
public String searchByCategory(@RequestParam String searchCondition ,Model model){
	if(searchCondition.equals("All"))
		model.addAttribute("searchCondition","");
	else
	model.addAttribute("searchCondition",searchCondition);
	model.addAttribute("productsList",productDao.getAllProducts());
	return "listOfProduct";
	
}


}