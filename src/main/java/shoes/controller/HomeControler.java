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

import shoes.entities.Category;
import shoes.entities.Product;
import shoes.repositories.ProductRepository;
import shoes.services.category.CategoryService;
import shoes.services.product.ProductService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeControler {

    @Autowired
    ProductService productService;

    @Autowired
    CategoryService categoryService;

    @GetMapping("/home")
    public String goHome(Model model,
                         @RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "4") Integer size) {

        List<Product> list1 = productService.findByPageAble(new PageRequest(0, 4));
        model.addAttribute("list1", list1);
        List<Product> list2 = productService.findByPageAble(new PageRequest(1, 8));
        model.addAttribute("list2", list2);
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
        m.addObject("categories", categoryService.findAll());
        return m;
    }

    @GetMapping("/product/category/{id}")
    public String viewByCategory(@PathVariable int id, Model model) {
        Category category = categoryService.findById(id);
        List<Product> listP = productService.findByCategory(category);
        model.addAttribute("listP", listP);
        model.addAttribute("categories", categoryService.findAll());
        return "customer/product";
    }

    @GetMapping("/product/view/{id}")
    public String view(@PathVariable int id, Model model) {
        Product product = productService.findById(id);
        model.addAttribute("product", product);
        return "customer/preview";
    }

    @GetMapping(value = "/search" ,params = "name")
    public String searchByName(@RequestParam("name") String name, Model model) {
        System.out.println(name);
        List<Product> listByName = productService.findProductByName(name);
        System.out.println("SIZE: "+listByName.size());
        model.addAttribute("listByName", listByName);
        return "customer/search";
    }

}
