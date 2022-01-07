package gr.peoplecert.gogdames.controller;

import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.service.UserServiceInterfaceImpl;
import gr.peoplecert.gogdames.utils.Utility;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.MessagingException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.io.UnsupportedEncodingException;

@Controller
public class HomePageController {

    @Autowired
    UserServiceInterfaceImpl service;

    @GetMapping("/")
    public String showLoginPage() {
        return "login";
    }

    @GetMapping("/register")
    public String showRegisterPage(ModelMap mm) {
        mm.addAttribute("newuser", new User());
        return "register";
    }

    @PostMapping("/registeruser")
    public String registerUser(@ModelAttribute("newuser") User user, ModelMap model, HttpServletRequest request) throws MessagingException, UnsupportedEncodingException, javax.mail.MessagingException {

        service.registerUser(user);

        String siteUrl = Utility.getSiteUrl(request);
        service.sendVerificationEmail(user, siteUrl);

        model.addAttribute("page", "You need to verify your account");

        return "verify";
    }


    @GetMapping("/verification")
    @ResponseBody
    public String verified(ModelMap mm,  User user) {
        mm.addAttribute("verifyuser", user);

        return "Your Registation completed!!!";
    }
}
