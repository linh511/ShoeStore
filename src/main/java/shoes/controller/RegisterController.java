package shoes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import shoes.entities.Role;
import shoes.entities.User;
import shoes.services.role.RoleService;
import shoes.services.user.UserService;

import javax.validation.Valid;


@Controller
@RequestMapping("/register")
public class RegisterController {
    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    @GetMapping
    public String goRegister(ModelMap model) {
        model.addAttribute("user", new User());
        model.addAttribute("display","hidden");
        return "register";
    }

    @PostMapping
    public String registerUser(@Valid @ModelAttribute("user") User user, ModelMap model) {
        User user1 = userService.findUserByUsername(user.getUsername());
        if(user1 == null){
            user.setRole(roleService.findById(2));
            user.setGender(true);
            user.setStatus(true);
            userService.create(user);
            model.addAttribute("messageUser", "");
            return "register";
        }else {
            model.addAttribute("messageUser", "Tài khoản này đã tồn tại!");
            return null;
        }

    }
}
