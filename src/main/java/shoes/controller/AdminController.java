package shoes.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import shoes.entities.Category;
import shoes.entities.Product;
import shoes.services.category.CategoryService;
import shoes.services.order.OrderService;
import shoes.services.producer.ProducerService;
import shoes.services.product.ProductService;
import shoes.services.user.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	ProductService productService;
	
	@Autowired
	ProducerService producerService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	OrderService orderService;
	
	@GetMapping("/home")
	public ModelAndView homePage() {
		ModelAndView m = new ModelAndView("admin/home");
		return m;
	}
	@GetMapping("/product")
	public ModelAndView productPage() {
		ModelAndView m = new ModelAndView("admin/product");
		m.addObject("productList", productService.findAll());
		return m;
	}
	
	@GetMapping("/user")
	public ModelAndView memberPage() {
		ModelAndView m = new ModelAndView("admin/user");
		m.addObject("userList", userService.findAll());
		return m;
	}
	
	@GetMapping("/producer")
	public ModelAndView producerPage() {
		ModelAndView m = new ModelAndView("admin/producer");
		m.addObject("producerList", producerService.findAll());
		return m;
	}
	@GetMapping("/category")
	public ModelAndView categoryPage() {
		ModelAndView m = new ModelAndView("admin/category");
		m.addObject("categoryList", categoryService.findAll());
		return m;
	}
	@GetMapping("/order")
	public ModelAndView orderPage() {
		ModelAndView m = new ModelAndView("admin/order");
		m.addObject("orderList", orderService.findAll());
		return m;
	}
	@GetMapping("/viewbyCategory/{id}")
	public ModelAndView viewByCategoryPage(@PathVariable int id) {
		ModelAndView m = new ModelAndView("admin/product");
		Category category = categoryService.findById(id);
		List<Product> productList = productService.findByCategory(category);
		m.addObject("productList", productList);
		return m;
	}
}
