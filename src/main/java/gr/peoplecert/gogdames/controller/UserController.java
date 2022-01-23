package gr.peoplecert.gogdames.controller;

import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.service.UserServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLOutput;
import java.util.List;
import java.util.Set;

@RestController
public class UserController {

    @Autowired
    UserServiceInterface userServiceInterface;

    @GetMapping("/registration/{userName}")
    public ResponseEntity<Void> register(@PathVariable String userName) {
        System.out.println("Handling resistered user request with " + userName);//Debugging Purpose
        //Handling registered user request with userName?
        try {
        } catch (Exception exception) {
            return ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok().build();
    }

    //TODO Get All users to the chat.
    @GetMapping("/getAllUsers")
    public List<User> getAllUsers() {
        return userServiceInterface.findAll();
    }
}
