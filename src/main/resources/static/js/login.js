function registration(event)
{
    event.preventDefault()

    var fname= document.getElementById("t1").value;
    var lname= document.getElementById("t2").value;
    // var dob= document.getElementById("t3").value;
    var email= document.getElementById("t4").value;
    var pwd= document.getElementById("t5").value;
    var uname= document.getElementById("t6").value;

    var pwd_expression = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/;
    var letters = /^[A-Za-z]+$/;
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if(fname=='')
    {
        alert('Please enter your first name');
    }
    else if(!letters.test(fname))
    {
        alert('Name field required only alphabet characters');
    }
    else if(lname=='')
    {
        alert('Please enter your last name');
    }
    else if(!letters.test(lname))
    {
        alert('Name field required only alphabet characters');
    }
    else if(email=='')
    {
        alert('Please enter your user email id');
    }
    else if (!filter.test(email))
    {
        alert('Invalid email');
    }
    else if(uname=='')
    {
        alert('Please enter the user name.');
    }
    else if(!letters.test(uname))
    {
        alert('User name field required only alphabet characters');
    }
    else if(pwd=='')
    {
        alert('Please enter Password');
    }
    else if(!pwd_expression.test(pwd))
    {
        alert ('Upper case, Lower case, Special character and Numeric letter are required in Password filed');
    }
    else if(document.getElementById("t5").value.length < 6)
    {
        alert ('Password minimum length is 6');
    }
    else if(document.getElementById("t5").value.length > 12)
    {
        alert ('Password max length is 12');
    }
    else
    {
        alert('Registration completed successfully, please check your email for verification' );
    }
}
// function clearFunc()
// {
// 	document.getElementById("t1").value="";
// 	document.getElementById("t2").value="";
// 	document.getElementById("t3").value="";
// 	document.getElementById("t4").value="";
// 	document.getElementById("t5").value="";
//   document.getElementById("t6").value="";
//   //document.getElementById("t7").value="";
// }