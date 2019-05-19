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
import shoes.entities.Producer;
import shoes.entities.Product;
import shoes.services.category.CategoryService;
import shoes.services.producer.ProducerService;
import shoes.services.product.ProductService;


@Controller
@RequestMapping("/admin/product")
public class ProductController {

    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ProducerService producerService;

    @GetMapping("/add")
    public String productPage(ModelMap model) {
        List<Category> categories = categoryService.findAll();
        List<Producer> producers = producerService.findAll();
        model.addAttribute("product", new Product());
        model.addAttribute("categoryList", categories);
        model.addAttribute("producerList", producers);
        return "admin/addProduct";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        List<Category> categories = categoryService.findAll();
        List<Producer> producers = producerService.findAll();
        model.addAttribute("categoryList", categories);
        model.addAttribute("producerList", producers);
        Product product = productService.findById(id);
        model.addAttribute("product", product);
        return "admin/addProduct";
    }

    @PostMapping("/save")
    public String saveProduct(@Valid @ModelAttribute("product") Product product, ModelMap model) {
        Product product1 = productService.checkProductName(product.getName().trim());
        if (product1 == null) {
            productService.create(product);
            return "redirect:/admin/product";
        } else {
            if (product.getId() != null) {
                productService.create(product);
                return "redirect:/admin/product";
            } else {
                model.addAttribute("message", "Tên sản phẩm đã tồn tại!");
                return "admin/addProduct";
            }
        }
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable int id, Model model) {
        Product product = productService.findById(id);
        productService.delete(product);
        return "redirect:/admin/product";
    }
}
