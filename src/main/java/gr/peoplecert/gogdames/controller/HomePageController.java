package gr.peoplecert.gogdames.controller;

import gr.peoplecert.gogdames.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class HomePageController {

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
