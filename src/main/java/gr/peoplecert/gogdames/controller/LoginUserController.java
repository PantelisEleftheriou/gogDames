/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gr.peoplecert.gogdames.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Pantelis
 */
@Controller
public class LoginUserController {

    @GetMapping("/home")
    public String userHome() {
        return "user";
    }

    @GetMapping("/settings")
    public String userSettings() {
        return "userSettings";
    }
}
