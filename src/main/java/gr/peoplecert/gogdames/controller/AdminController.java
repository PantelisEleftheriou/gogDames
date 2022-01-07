/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gr.peoplecert.gogdames.controller;

import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.service.UserServiceInterface;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Pantelis
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserServiceInterface userServiceInterface;

    @GetMapping("/mainPage")
    public String admin() {
        return "admin";
    }

    @GetMapping("/getChat")
    public String getChat() {
        return "chat";
    }

    @GetMapping("/getTemp")
    public String getTemp() {
        return "temp";
    }


    @GetMapping("/modifyGames")
    public String games() {

        return "modifyGames";
    }

    @ResponseBody
    @GetMapping("/getUserById/{userId}")
    public ResponseEntity<User> userById(@PathVariable("userId") int userId) {
        return new ResponseEntity(userServiceInterface.getUserById(userId), HttpStatus.OK);
    }

    @GetMapping("/modifyUsers")
    public String users(Model model) {
        List<User> allUsers = userServiceInterface.findAll();
        model.addAttribute("allUsers", allUsers);
        model.addAttribute("user", new User());
        return "modifyUsers";
    }

    @GetMapping("/deleteUser/{userId}")
    public String deleteUser(@PathVariable("userId") int userId, ModelMap m) {
        m.addAttribute("user", userServiceInterface.getUserById(userId));
        userServiceInterface.deleteUser(userId);
        return "redirect:/admin/modifyUsers";
    }

    @PostMapping("/addUser")
    public String addUser(User user) {
        userServiceInterface.addUser(user);
        return "redirect:/admin/modifyUsers";
    }

    @PostMapping("/updateUser/{userId}")
    public String update(User user, @PathVariable("userId") int userId) {
        userServiceInterface.updateUser(user, userId);
        return "redirect:/admin/modifyUsers";
    }
}
