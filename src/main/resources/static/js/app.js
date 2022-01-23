/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var ws
$(document).ready(function () {
    // OPEN
    ws = new WebSocket("ws://localhost:8080/speakup");
//RECEIVE
    ws.onmessage = function (d) {
        $("#chathistory").append('<li>' + d.data + '</li>');
    };
// SEND
    $("#ask").click(function () {
        ws.send($("#chat").val() );
    });
// CLOSE
    $("#close").click(function () {
        ws.close();
    });
});