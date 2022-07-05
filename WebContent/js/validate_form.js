// JavaScript Document
 var namepattern=/^[a-zA-Z]+$/ ;
 var phonepattern = /^\d{10}$/;
  

// validate registration form
function regvalidateForm()
{
 
 var x=document.forms["register_form"]["name"];
 var y= document.forms["register_form"]["c_password"];
 if (x.value=="")
   {
  
  document.getElementById('pointname').innerHTML="Please enter the name.";
    x.focus();
  return false;
   }
 
 else if(x.value.length>20)
   {
  x.value="";
  document.getElementById('pointname').innerHTML="Please enter less than 20 characters.";
  x.focus();
  return false;
   }
 else if ((!namepattern.test(x.value)))
   {
  document.getElementById('pointname').innerHTML="Please enter only alphabets.";
    x.value="";
  x.focus();
  return false;
   } 
     document.getElementById('pointname').innerHTML='';
    x=document.register_form.email_id;
 if(x.value=="")
 {
  x.value="";
  document.getElementById('pointemail').innerHTML="Please enter the email id.";
  x.focus();
  return false;
 }
 document.getElementById('pointemail').innerHTML=""; 
  
   x=document.register_form.password;
	
   if (x.value=="")
   {
  
  document.getElementById('pointpass').innerHTML="Please enter the password.";
    x.focus();
  return false;
   }
 
 else if(x.value.length<7 && x.value.length>16)
   {
  x.value="";
  document.getElementById('pointpass').innerHTML="password should be between 7 to 16 character.";
  x.focus();
  return false;
   }
  

    document.getElementById('pointpass').innerHTML='';

   if (y.value=="")
   {
  
  document.getElementById('pointc_pass').innerHTML="Please re-enter the password.";
    y.focus();
  return false;
   }	
 else if(!x.value.match(y.value))
  { document.getElementById('pointc_pass').innerHTML="please enter the password same as  above";
     y.value="";
     y.focus();
    return false;}
    document.getElementById('pointc_pass').innerHTML='';  

 x=document.register_form.contact;

 if(x.value=="")
 {
  
  x.value="";
  document.getElementById('pointcontact').innerHTML="Please enter the contact number.";
  x.focus();
  return false;
 }
 else if(isNaN(x.value))
 {
  x.value="";
  document.getElementById('pointcontact').innerHTML="Please enter only digits.";
  x.focus();
  return false;
 }
 else if(x.value.length!=10)
 {
  x.value="";
  document.getElementById('pointcontact').innerHTML="Please enter only 10 digits.(Mobile number)";
  x.focus();
  return false;
 }
 else if(!phonepattern.test(x.value))
 {
  x.value="";
  document.getElementById('pointcontact').innerHTML="Please enter a valid contact number.";
  x.focus();
  return false;
 }
 
  if(document.getElementById('agree').checked)
  {
  return true;
  }
  else
  {
   document.getElementById('pointchk').innerHTML="You must agree to the terms first"; 
  return false;
} 
   return confirm("Do you want to submit the form?");
}

   function confirmreset()
 {
  if(confirm("Do you want to reset the form?"))
{
 document.getElementById('pointname').innerHTML="";
 document.getElementById('pointemail').innerHTML="";
 document.getElementById('pointpass').innerHTML="";
 document.getElementById('pointc_pass').innerHTML="";
 document.getElementById('pointcontact').innerHTML="";
 
 
 return true;
}
else
 return false;
 }   
 
 
 // validate login form
 
    function logvalidateForm()
    { 
	   
    var log =document.forms["login_form"]["email_id"];
	if(log.value=="")
 {
  log.value="";
  document.getElementById('pointemail').innerHTML="Please enter the email id.";
  log.focus();
  return false;
 }
document.getElementById('pointemail').innerHTML=""; 
  
  log =document.login_form.password;
	
   if (log.value=="")
   {
  
  document.getElementById('pointpass').innerHTML="Please enter the password.";
    log.focus();
  return false;
   }
}
 
 // validate forgot password form
 
    function forgotvalidateForm()
    { 
	   
    var log =document.forms["forgot_password_form"]["email_id"];
	if(log.value=="")
 {
  log.value="";
  document.getElementById('pointemail').innerHTML="Please enter the email id.";
  log.focus();
  return false;
 }
document.getElementById('pointemail').innerHTML=""; 
	}