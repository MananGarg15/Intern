<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/styles.css">
   <link rel="stylesheet" href="css/home.css">
   <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
   <script type="text/javascript" src="js/jssor.js"></script>
   <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script src="js/slider.js"></script>
		
    <link rel="icon" type="image/jpg" href="image/create_thumb.png"> 
 
<title>BigScreen Shows</title>
</head>
<body>
     <!-- div with welcome user message -->
            <% String em = (String) session.getAttribute("login_session");
        if (em != null) {%>
            <div style="width:1360px; height:40px;background-color:#18191b;margin-top:-8px;margin-left:-8px; color:white; font-weight:bolder">
            <span style="margin-left:500px;font-family:monospace; margin-top:18px;font-size:16px ">     
                Welcome,<% out.println(em); %>
            </span>
            <span style="margin-top:18px">[&nbsp;<a href="user_panel/viewprofile.jsp" style="text-decoration:none;color:rgb(128,0,0)">view profile</a>&nbsp;|&nbsp;
               [&nbsp;<a href="user_panel/change_password.jsp" style="text-decoration:none;color:rgb(128,0,0)">Change Password</a>&nbsp; 
               |&nbsp;<a href="user_panel/logout.jsp" style="text-decoration:none; color:rgb(128,0,0)">Logout</a>&nbsp;]
            </span>
        </div>
        <%}%>
<!--header starts-->
   <div  id="main_header">
     <div id="logo"><img src="image/logon.jpg" width="153px" height="180px" alt="logo" title="logo"/></div>
     <div id="sitename"><br><br><pre title="GO TICKETS" id="sname"><font id="name1"><a href="home.jsp" style="color:#FFFFFF; text-decoration:none">Just Ticket</a></font>
                           <font id="name2" color="#FFCC66">Any Show! Any Time! Anywhere...</font></pre> </div>
     <div>
     <span style="margin-top:5px;margin-left:60px"><a href="signup.jsp" style="color:white; font-weight:bolder; text-decoration:none; font-size:20px">SIGNUP</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <span style="margin-top:5px;margin-left:60px"><a href="login.jsp" style="color:white; font-weight:bolder; text-decoration:none; font-size:20px">LOGIN</a></span>
     </div>                      
    </div>
     <!--header ends-->
     
     <!--navigation bar starts-->
    <div style="width:1340px; height:46px; background-color:#3db2e1; margin-left:-8px">
   <div id='cssmenu' style="margin-left:400px; height:46px">
   <ul>
   <li class='active'><a href='home.jsp'>HOME</a></li>
   <li><a href='member_login.jsp'>STAFF LOGIN</a></li>
   <li><a href='offers.jsp'>OFFERS</a></li>
   <li><a href='login.jsp'>LOGIN</a></li>
   <li><a href='contactus.jsp'>CONTACT US</a></li>
   
</ul>
</div></div>  
   <!--navigation ends-->
    <style>
	 #form_container{
	background: url(image/movie-theater-audience.jpg) no-repeat center center fixed; 
  	-webkit-background-size: cover;
  	-moz-background-size: cover;
  	-o-background-size: cover;
  	background-size: cover;
	background-color: #fff;
}
#login_form {
   background: url(image/images.jpg) repeat scroll 0 0 rgba(0, 0, 0, 0);
   margin: 15% auto;
   padding: 20px;
}
	 </style>
    <h2 style="width:1340px; margin-left:-10px; margin-top:0px; text-align:center; font-size:34px;font-family:Cambria;color:#ffffff; background:#006600"><strong>LOGIN TO YOUR ACCOUNT</strong></h2>
        <div style="width: 1330px; height:500px; border:1px solid #66FFFF; margin-top:-28px" id="form_container">
           <!--login form start-->
           <div style="margin-left:350px; width:620px; height:350px; margin-top:125px">  
           <center>
           <form name="login_form"  method="post" action="login_action.jsp"  id="login_form">
            <fieldset>
		 <table>
          <tr>
          <td><LABEL for="email"><font color="#EEEEEE">EMAIL:</font><sup style="color:red;">*</sup> </LABEL></td>
		  <td width="300px" height="50px"> <input type="email" name= "email_id" id="email_id" placeholder="EMAIL@EXAMPLE.COM" /><br></td>
          <td width="200px"><i style="color: #99FFCC; font-weight:bold" id="pointemail"></i></td>
          </tr>
		  <tr>
          <td><LABEL for="password"><font color="#EEEEEE">PASSWORD:<sup style="color:red;">*</sup></font> </LABEL></td>
		  <td width="300px" height="50px"> <input type="password" name= "password" id="password" placeholder="PASSWORD" /><br></td>
          <td width="200px"><i style="color: #99FFCC; font-weight:bold" id="pointpass"></i></td>
          </tr>
           <tr>
  			<td></td><td><INPUT type="submit"  value="LOGIN" style="margin-left:3px; -moz-border-bottom-colors: none; 
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background-color: #003399;
  background-image: -moz-linear-gradient(center top,#f81f06,#cd0a09);
  background-repeat: repeat-x;
  border-color: #dc071e; width:170px;
  border-radius: 4px 4px 4px 4px; font-weight:bold;
  border-style: solid;
  border-width: 1px;
  box-shadow: 0 1px 0 rgba(255,255,255,0.2) inset,0 1px 2px rgba(0,0,0,0.05);
  color: #fff;
  cursor: pointer;
  display: inline-block;
  font-size: 13px;
  line-height: 18px;
  margin-bottom: 0;
  padding: 4px 10px;
  text-align: center;
  text-shadow: 1px 1px 1px #cd0a09;"onClick="return logvalidateForm()" ></td></tr>
           <tr><td></td><td width="50px height:20px"><i><a href="forgot_password.html" style="text-decoration:none; color:#000080; font-weight:bolder ">Forgot Password?</a></i></td><td></td>
             </tr>
          </table>
          </fieldset>
          </form>
          </center>
          </div>
          </div>
<!--css styling of footer-->
    <style>
     #frst{ color:#FF6699; font-weight:bolder;}
	 #second{ font-weight:bold; font-size:18px;}
	 #footer a{text-decoration:none; color:#949494}
	 #footer a:hover{color:#EEEEEE; text-decoration:underline}
    </style>
    <div id="footer" style="width:1340px; height:180px; position:relative; margin-top:8px; margin-left:-8px; background:#282828;">
      <div style=" width:20%; height:100%;"> 
         <h2 id="frst">Quick Links</h2><br>
         <span id="second"><a href="#">About Us</a></span><br><br>
         <span id="second"><a href="#">Contact Us</a></span><br><br>
         <span id="second"><a href="#">FAQs</a></span>
      </div>
      <div style=" width:20%; height:100%; float:left; margin-left:20%;margin-top:-200px"> 
         <h2 id="frst">Latest Movies</h2><br>
         <span id="second"><a href="#">Now Showing</a></span><br><br>
         <span id="second"><a href="#">Coming Soon</a></span>
      </div>
      <div style=" width:20%; height:100%; float:left; margin-left:40%; margin-top:-200px"> 
         <h2 id="frst">Help</h2><br>
         <span id="second"><a href="#">Terms & Condition</a></span><br><br>
         <span id="second"><a href="#">Privacy Policy</a></span><br><br>
         <span id="second"><a href="#">Developers</a></span>
       </div>
       <div style="width:20%; height:100%; float:left; margin-left:60%;margin-top:-200px"> 
         <h2 id="frst">News</h2><br>
         <span id="second"><a href="#">Movie Trailers</a></span><br><br>
         <span id="second"><a href="#">Movie Reviews</a></span><br><br>
         <span id="second"><a href="#">Bollywood News</a></span>
        </div>
         <div  style="width:20%; height:100%; float:left; margin-left:80%;margin-top:-200px"> 
         <h2 id="frst">Follow Us </h2><br>
         
        </div>
      
      
    
    </div>
</body>
</html>