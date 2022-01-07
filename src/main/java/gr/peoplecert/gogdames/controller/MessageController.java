package gr.peoplecert.gogdames.controller;

import gr.peoplecert.gogdames.exception.BusinessException;
import gr.peoplecert.gogdames.model.MessageModel;
import gr.peoplecert.gogdames.model.User;
import gr.peoplecert.gogdames.service.UserServiceInterface;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageController {

    @Autowired
    private SimpMessagingTemplate simpMessagingTemplate;

    @Autowired
    private UserServiceInterface userServiceInterface;

    @MessageMapping("/chat/{id}")
    public void sendMessage(@DestinationVariable int id, MessageModel message) {
        System.out.println("Send message: " + message + " to -> " + id); //Debugging Purpose
        Optional<User> isUser = userServiceInterface.getUserById(id);
        if (isUser.isPresent()) {
            simpMessagingTemplate.convertAndSend("/topic/messages" + id, message);
        }
    }
}
