package gr.peoplecert.gogdames.controller;

import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.service.UserServiceInterfaceImpl;
import gr.peoplecert.gogdames.utils.Utility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.MessagingException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

@Controller
public class HomePageController {

    @Autowired
    UserServiceInterfaceImpl service;

    @GetMapping("/login")
    public String showLoginPage(ModelMap mm) {
        mm.addAttribute("newuser", new User());
        return "login1";
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
