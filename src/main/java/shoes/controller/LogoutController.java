package shoes.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shoes.entities.User;

@Controller
@RequestMapping("/logout")
public class LogoutController {
     @GetMapping
     public String logoutAcount(HttpSession session, ModelMap model) {
    	 model.addAttribute("user", new User());
    	 session.removeAttribute("user");
    	 session.invalidate();
    	 return "login";
     }
}
