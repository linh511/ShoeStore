package shoes.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import shoes.entities.Product;
import shoes.services.product.ProductService;

@Controller
public class SearchController {
   @Autowired
   ProductService productService;
	
   @GetMapping("/search?{name}")
   public String search(@PathVariable String name, Model model) {
	   List<Product> productList = productService.findProductByName(name);
	   model.addAttribute("productList", productList);
	   return "customer/search";
   }
}
