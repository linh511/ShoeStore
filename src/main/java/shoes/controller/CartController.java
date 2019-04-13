package shoes.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import shoes.cart.Cart;
import shoes.entities.User;
import shoes.services.product.ProductService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	ProductService productService;
	
	@GetMapping("show")
	public String showCart() {
		return "customer/cart";
	}
	
	@GetMapping("/add/{id}")
	public String addToCart(@PathVariable int id, HttpSession session)  {
	  Cart cart = (Cart) session.getAttribute("cart");
	  User user = (User) session.getAttribute("user1");
	  if(cart==null) {
		  cart = new Cart();
	  }
	  if(cart.containsKey(id)) {
		  cart.add(id, cart.get(id).getProduct());
	  }else {
		  cart.add(id, productService.findById(id));
	  }
	  session.setAttribute("user1", user);
	  session.setAttribute("cart", cart);
      return "customer/cart";
	}
	@GetMapping("delete/{id}")
	public String deleteItem(@PathVariable int id, HttpSession session) {
		Cart cart = (Cart) session.getAttribute("cart");
		cart.remove(id);
		if(cart.isEmpty()) {
			cart = null;
			session.setAttribute("cart", cart);
		}
		return "customer/cart";
	}
}
