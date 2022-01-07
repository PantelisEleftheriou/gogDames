<%-- 
    Document   : checkout
    Created on : Jan 4, 2022, 11:35:32 PM
    Author     : Pantelis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="/css/styles.css"/>
        <title>Checkout</title>
    </head>
    <body>
        <div class="container">
            <h1>
                <span style="color:whitesmoke;">Checkout</span>
                <span style="color:whitesmoke;">9.99 EUR</span>
            </h1>
            <form:form action="http://localhost:8080/payment/pay" method="post" id="the-form" modelAttribute="customersDTO">
                <div class="input input-text half-width" style="">
                    <span class="input-label" style="font-weight:bold; color:whitesmoke;">First Name / Όνομα</span>
                    <input class="input-label" style="background-color:transparent; border:0px; font-weight:bold;" type="text" value="${customersDTO.firstName}" name="firstName" readonly/>
                </div>
                <div class="input input-text half-width">
                    <span class="input-label" style="font-weight:bold; color:whitesmoke;">Last Name / Επίθετο</span>
                    <input class="input-field" style="background-color:transparent; border:0px; font-weight:bold;" type="text" value="${customersDTO.lastName}" name="lastName" readonly/>
                </div>
                <div class="input input-text full-width">
                    <span class="input-label" style="font-weight:bold; color:whitesmoke;">Email Address</span>
                    <input class="input-field" style="background-color:transparent; border:0px; font-weight:bold;" type="text" value="${customersDTO.email}" name="email" readonly/>
                </div>
                <div class="input input-text full-width">
                    <span class="input-label" style="font-weight:bold; color:whitesmoke;">Price / Τιμή</span>
                    <input class="input-symbol-euro" style="background-color:transparent; border:0px; font-weight:bold;" type="text" value="${customersDTO.price} EUR" name="price" readonly/>
                </div>
                <div class="input input-text full-width">
                    <input type="submit" value="Επομενο" class="btn btn-primary"/>
                </div>
            </form:form>
        </div>

        <div style="position:fixed; bottom:0; right:0; font-weight:bold;">
            (c) Copyright 2021 - gogD Solutions
        </div>
    </body>
</html>
