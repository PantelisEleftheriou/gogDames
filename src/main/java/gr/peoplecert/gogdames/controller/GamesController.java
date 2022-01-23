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
public class GamesController {
    @GetMapping("/tetris")
    public String tetrisGame() {
        return "tetris";
    }

    @GetMapping("/tictactoe")
    public String tictactoeGame() {
        return "tictactoe";
    }
    
    @GetMapping("/pong")
    public String pongGame() {
        return "pong";
    }
}
