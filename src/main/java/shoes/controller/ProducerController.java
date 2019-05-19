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
@RequestMapping("/admin/producer")
public class ProducerController {

    @Autowired
    ProducerService producerService;

    @Autowired
    ProductService productService;

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        Producer producer = producerService.findById(id);
        model.addAttribute("producer",producer);
        return "admin/addProducer";
    }
    @GetMapping("/add")
    public String addProducer(ModelMap model) {
        model.addAttribute("producer", new Producer());
        return "admin/addProducer";
    }

    @PostMapping("/save")
    public String saveCategory(@Valid @ModelAttribute("producer") Producer producer, ModelMap model) {
        Producer producer1 = producerService.findProducerByName(producer.getName().trim());
        if(producer1==null){
            producerService.create(producer);
            return "redirect:/admin/producer";
        }else {
            if(producer.getId()!=null) {
                producerService.create(producer);
                return "redirect:/admin/producer";

            }else {
                model.addAttribute("message", "Hãng sản xuất này đã tồn tại!");
                return "admin/addProducer";
            }
        }

    }

    @GetMapping("/delete/{id}")
    public String deleteProducer(@PathVariable int id, Model model) {
        Producer producer = producerService.findById(id);
        List<Product> productList = productService.findByProducer(producer);
        if(productList.size()>0) {
            model.addAttribute("message", "Hãng sản xuất này có sản phẩm. Không thể xóa!");
            List<Producer> producerList = producerService.findAll();
            model.addAttribute("producerList", producerList);
            return "admin/producer";
        }else {
            producerService.delete(producer);
            return "redirect:/admin/producer";
        }
    }
}
