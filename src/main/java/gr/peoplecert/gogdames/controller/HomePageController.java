package gr.peoplecert.gogdames.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class HomePageController {

    @GetMapping("/")
    public String showHomePage() {
        return "register.html";
    }

}
