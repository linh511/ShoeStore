package shoes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import shoes.entities.Product;
import shoes.repositories.ProductRepository;
import shoes.services.product.ProductService;

@Controller
public class HomeControler {

	@Autowired
	ProductService productService;

	@Autowired
	ProductRepository productRepository;

	@GetMapping("/home")
	public String goHome(Model model,
			@RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
			@RequestParam(name = "size", required = false, defaultValue = "4") Integer size) {

//		Sort sortable = null;
//		if (sort.equals("ASC")) {
//			sortable = Sort.by("id").ascending();
//		}
//		if (sort.equals("DESC")) {
//			sortable = Sort.by("id").descending();
//		}
		Pageable pageable = PageRequest.of(page, size);
		model.addAttribute("list1", productRepository.findProducts(pageable));
		System.out.println("SIZE: "+ productRepository.findProducts(pageable).getSize());
		
		for (Product x: productRepository.findProducts(pageable)) {
			System.out.println(x.getName());
		}
		return "customer/home";
	}

	@GetMapping("/about")
	public ModelAndView goAbout() {
		ModelAndView m = new ModelAndView("#");
		return m;
	}

	@GetMapping("/contact")
	public ModelAndView goContact() {
		ModelAndView m = new ModelAndView("#");
		return m;
	}

	@GetMapping("/product")
	public ModelAndView goProduct() {
		ModelAndView m = new ModelAndView("customer/product");
		m.addObject("productList", productService.findAll());
		return m;
	}

	@GetMapping("/product/view/{id}")
	public String view(@PathVariable int id, Model model) {
		Product product = productService.findById(id);
		model.addAttribute("product", product);
		return "customer/preview";
	}
}
