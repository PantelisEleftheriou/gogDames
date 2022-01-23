/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package handler;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

/**
 *
 * @author Pantelis
 */@Component
public class SpeakUpHandler extends TextWebSocketHandler {
    List<WebSocketSession> allsessions = new CopyOnWriteArrayList<>();
    @Override
    public void afterConnectionEstablished(WebSocketSession chatuser) throws Exception {
        if (!allsessions.contains(chatuser)) {
            allsessions.add(chatuser);
            System.out.println("user in chat " + allsessions.size());
        }
    }
    @Override
    public void afterConnectionClosed(WebSocketSession chatuser, CloseStatus status) throws Exception {
        allsessions.remove(chatuser);
        System.out.println("user removed, user in chat " + allsessions.size());
    }
    @Override
    protected void handleTextMessage(WebSocketSession chatuser, TextMessage message) throws Exception {
        for (WebSocketSession chatuser1 : allsessions) {
            chatuser1.sendMessage(message);
        }
    }
 }