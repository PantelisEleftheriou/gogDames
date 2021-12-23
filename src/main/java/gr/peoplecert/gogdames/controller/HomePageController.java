package gr.peoplecert.gogdames.controller;

import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.service.UserServiceInterfaceImpl;
import gr.peoplecert.gogdames.utils.Utility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.MessagingException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;


@Controller
@RequestMapping("/")
public class HomePageController {


    @Autowired
    UserServiceInterfaceImpl service;


    @GetMapping("/login")
    public String showHomePage() {
        return "login";
    }

    @PostMapping("/VerifyUser")
    public String registerUser(User user, Model model, HttpServletRequest request) throws MessagingException, UnsupportedEncodingException {
        service.registerUser(user);

        String siteUrl = Utility.getSiteUrl(request);
        service.sendVerificationEmail(user, siteUrl);

        model.addAttribute("page", "You need to verify your account");

        return "verify";
    }

}
