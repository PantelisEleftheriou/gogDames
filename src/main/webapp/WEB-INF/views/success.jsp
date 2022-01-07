<%-- 
    Document   : success
    Created on : Jan 4, 2022, 11:36:33 PM
    Author     : Pantelis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <title>Payment Success</title>
    </head>
    <body>
        <main>
            <div class="container justify-content-center">
                <h4>Η συναλλαγή μέσω Paypal ολοκληρώθηκε επιτυχώς!</h4>
                <table class="table">
                    <tr>
                        <td><b>Πληρωτής</b></td>
                        <td>${payer.firstName} ${payer.lastName}</td>      
                    </tr>
                    <tr>
                        <td><b>Σύνολο</b></td>
                        <td>${transaction.amount.total} ${transaction.amount.currency}</td>
                    </tr>    
                </table>
                <br/>
                <h6>Σας ευχαριστούμε για την προτίμησή σας.</h6>
            </div>
        </main>
    </body>
</html>
