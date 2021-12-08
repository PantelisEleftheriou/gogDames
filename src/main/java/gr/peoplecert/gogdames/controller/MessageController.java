
package gr.peoplecert.gogdames.controller;

import gr.peoplecert.gogdames.model.MessageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageController {
    
    @Autowired
    private SimpMessagingTemplate simpMessagingTemplate;
    
    @MessageMapping("/chat/{to}")
    public void sendMessage(@DestinationVariable String to,MessageModel message){
        //boolean isUser = //entityOfUser.getUser().contains(to);
       // if (isUser) {
            simpMessagingTemplate.convertAndSend("/topic/messages" + to, message );
            
        //}
        
    }
    
}
