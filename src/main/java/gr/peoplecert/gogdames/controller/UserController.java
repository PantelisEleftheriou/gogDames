package gr.peoplecert.gogdames.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @GetMapping("/registration/{userName}")
    public ResponseEntity<Void> register(@PathVariable String userName) {
        //Handling registered user request with userName?
        try {
                //TODO Get a User and validate the name input.
        } catch (Exception exception) {
            return ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok().build();
    }
    
    //TODO Get All users to the chat.
   /* @GetMapping("/getAllUsers")
    public Set<String> getAllUsers(){
        return //TODO Return a set of users.
    }*/
}
