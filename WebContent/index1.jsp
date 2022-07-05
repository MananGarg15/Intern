<html>
<head>
	<title >BigScreenShows</title>
	</head>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/styles.css">
   <link rel="stylesheet" href="css/home.css">
   <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
   <script type="text/javascript" src="js/jssor.js"></script>
   <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script src="js/slider.js"></script>
     <script src="js/slider1.js"></script>		
    <link rel="icon" type="image/jpg" href="image/logo.png"> 
	
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
     <div id="logo"><img src="image/create_thumb.png"  alt="logo" title="logo"/></div>
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
   <li class='active'><a href='index.jsp'>HOME</a></li>
   <li><a href='login_sess_check.jsp'>LOGIN</a></li>
   <li><a href='offers.jsp'>OFFERS</a></li>
   <li><a href='login.jsp'>ADMIN LOGIN</a></li>
   <li><a href='contactus.jsp'>CONTACT US</a></li>
   
   
   
</ul>
</div></div>  
   <!--navigation ends-->
   
  <!--slider begins-->
  <div id="slider1_container" style="position: relative; margin: 0 auto;
        top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
            <div style="position: absolute; display: block; background: url(image/loading.gif) no-repeat center center;
                top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
        </div>


    					</body>

</html>