package ProjectFrontend.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CartItemDao;
import com.niit.dao.ProductDao;
import com.niit.models.CartItem;

@Controller
public class HomeController {
	@Autowired
	private ProductDao productDao;	
	   @Autowired
		private CartItemDao cartItemDao;
public HomeController(){
	System.out.println("HomeController bean is instantiated");
}
//http://localhost:8080/project1frontend/home - This request will be handled
//by this handler method homePage()
@RequestMapping("/")
public String homePages()
{
	return "homepage";
}

@RequestMapping("/homepage")

public String homes(HttpSession session) {
		
		session.setAttribute("categories",productDao.getAllCategories());
	
/*public String hmpage(HttpSession session,@AuthenticationPrincipal Principal principal){
	session.setAttribute("categories",productDao.getAllCategories());
	String email=principal.getName();
	List<CartItem> cartItems=cartItemDao.getCart(email);
	session.setAttribute("cartSize",cartItems.size());*/
	return "homepage";

}



@RequestMapping("/aboutus")
public String abtus()
{
	return "aboutus";
}









@RequestMapping(value="/product")
public String prdct()
{
	return "product";
}

@RequestMapping("/gallery")
public String gall()
{
	return "gallery";
}

@RequestMapping("/contact")
public String cntct()
{
	return "contact";
}

@RequestMapping(value="/service")
public String srvice()
{
	return "service";
}

@RequestMapping(value="/feedback")
public String feedbck()
{
	return "feedback";
}



@RequestMapping(value="/login")
public String log()
{
	return "login";
}


@RequestMapping(value="/loginerror")
public String loginFailed(Model model){
	model.addAttribute("error","Invalid credentials..");
	return "login";
}
@RequestMapping(value="/logout")
public String logout(Model model){
	model.addAttribute("msg","Loggedout successfully...");
	return "login";
}


}
