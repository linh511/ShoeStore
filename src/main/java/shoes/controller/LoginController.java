package shoes.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shoes.cart.Cart;
import shoes.entities.User;
import shoes.services.user.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	UserService userService;

	@GetMapping
	public String loginForm(ModelMap model, HttpSession session) {
		model.addAttribute("user", new User());
		Cart cart = (Cart) session.getAttribute("cart");
		session.setAttribute("cart", cart);
		return "login";
	}

	@PostMapping
	public String authLogin(@Valid @ModelAttribute("user") User user, HttpSession session, ModelMap model) {
		user = userService.findUserByUsernameAndPassword(user.getUsername(), user.getPassword());
		Cart cart = (Cart) session.getAttribute("cart");
		if (user != null) {
			if (user.getRole().getName().equals("admin")) {
				session.setAttribute("user1", user);
				return "admin/home";
			} else if (user.getRole().getName().equals("customer")) {
				if (cart != null) {
					model.addAttribute("user", user);
					session.setAttribute("user1", user);
					session.setAttribute("mycart", cart);
					System.out.println("Cart: " + cart.size());
					return "customer/order";
				} else {
					session.setAttribute("user1", user);
					return "customer/home";
				}
			}
		} else {
			return "login";
		}
		return null;
	}
}
