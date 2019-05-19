package shoes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import shoes.entities.User;
import shoes.services.user.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin/user")
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping("/detail/{id}")
    public String detailUser(@PathVariable int id, ModelMap model){
        User user = userService.findById(id);
        model.addAttribute("user",user);
        return "admin/userDetail";
    }
    @PostMapping("/save")
    public String saveUser(@ModelAttribute("user") User user, ModelMap model) {
        System.out.println("User"+user);
        System.out.println("ID:" +user.getId());
        System.out.println(user.getFullname());
        userService.create(user);
        return "redirect:/admin/user";
    }
}
