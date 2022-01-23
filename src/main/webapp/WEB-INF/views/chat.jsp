<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Custom messanger</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.0/handlebars.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/list.js/1.1.1/list.min.js"></script>
    <!--    libs for stomp and sockjs-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <!--    end libs for stomp and sockjs-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet"
          type="text/css">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="container clearfix">
    <div class="people-list" id="people-list">
        <div class="search">
            <input id="userName" placeholder="search" type="text"/>
            <button onclick="registration()">Enter the chat</button>
            <button onclick="fetchAll()">Refresh</button>
        </div>
        <ul class="list" id="usersList">
        </ul>
    </div>
    <div class="chat">
        <div class="chat-header clearfix">
            <img alt="avatar" height="55px"
                 src="https://rtfm.co.ua/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png"
                 width="55px"/>
            <div class="chat-about">
                <div class="chat-with" id="selectedUserId"></div>
                <div class="chat-num-messages"></div>
            </div>
            <i class="fa fa-star"></i>
        </div> <!-- end chat-header -->
        <div class="chat-history">
            <ul>
            </ul>
        </div> <!-- end chat-history -->
        <div class="chat-message clearfix">
            <textarea id="message-to-send" name="message-to-send" placeholder="Type your message" rows="3"></textarea>
            <i class="fa fa-file-o"></i> &nbsp;&nbsp;&nbsp;
            <i class="fa fa-file-image-o"></i>
            <button id="sendBtn">Send</button>
        </div> <!-- end chat-message -->
    </div> <!-- end chat -->
</div> <!-- end container -->
<script id="message-template" type="text/x-handlebars-template">
    <li class="clearfix">
        <div class="message-data align-right">
            <span class="message-data-time">{{time}}, Today</span> &nbsp; &nbsp;
            <span class="message-data-name">You</span> <i class="fa fa-circle me"></i>
        </div>
        <div class="message other-message float-right">
            {{messageOutput}}
        </div>
    </li>
</script>
<script id="message-response-template" type="text/x-handlebars-template">
    <li>
        <div class="message-data">
            <span class="message-data-name"><i class="fa fa-circle online"></i> {{userName}}</span>
            <span class="message-data-time">{{time}}, Today</span>
        </div>
        <div class="message my-message">
            {{response}}
        </div>
    </li>
</script>
<script src="js/custom.js"></script>
<script src="js/chat.js"></script>
</body>
</html>