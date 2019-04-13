package shoes.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shoes.entities.Category;
import shoes.entities.Product;
import shoes.services.category.CategoryService;
import shoes.services.product.ProductService;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable int id, Model model) {
		Category category = categoryService.findById(id);
		model.addAttribute("category",category);
		return "admin/addCategory";
	}
	@GetMapping("/add")
	public String addCategory(ModelMap model) {
		model.addAttribute("category", new Category());
		return "admin/addCategory";
	}
	
	@PostMapping("/save")
	public String saveCategory(@Valid @ModelAttribute("category") Category category, ModelMap model) {
		categoryService.create(category);
		List<Category> categoryList = categoryService.findAll();
		model.addAttribute("categoryList", categoryList);
		return "admin/category";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteCategory(@PathVariable int id, Model model) {
		Category category = categoryService.findById(id);
		List<Product> productList = productService.findByCategory(category);
		if(productList.size()>0) {
			model.addAttribute("message", "Danh mục này có sản phẩm. Không thể xóa!");
		}else {
			categoryService.delete(category);
		}
		List<Category> categoryList = categoryService.findAll();
		model.addAttribute("categoryList", categoryList);
		return "admin/category";
	}
}