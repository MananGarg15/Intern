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
   <li><a href='member_login.jsp'>LOGIN</a></li>
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
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px;
            height: 500px; overflow: hidden;">
            <div>
                <img u="image" src="image/Baahubali-2-1024x512.jpg" />    
            </div>
            <div>
                <img u="image" src="image/ant-man-poster.jpg" />
                
            </div>
           
			 <div>
                <img u="image" src="image/banner1.jpg" alt="banner_image" title="banner" />
            </div>
             <div>
                <img u="image" src="image/Able-Theater.jpg" alt="banner_image" title="banner" />
            </div>
			 <div>
                <img u="image" src="image/banner3.jpg" alt="banner_image" title="banner" />
            </div>
            <div>
                <img u="image" src="image/bajrangi-bhaijaan-poster-1.jpg" alt="banner_image" title="banner" />
            </div>
             <div>
                <img u="image" src="image/maxresdefault9.jpg" alt="banner_image" title="banner" />
            </div>
           <div>
                <img u="image" src="image/The-Avengers81.jpg" alt="banner_image" title="banner" />
            </div>
         </div>
       </div>
    <!--slider ends-->
    
    
    
		
<div id="table">
	<center>	<table align=left border=1 style=margin-left:40px;><caption><font color=green>Movies</font></caption>
		<tr><th>Movie</th><th>Start_Date</th><th>End_date</th><th>Rating</th></tr>
		<%@ page import="library.DBInfo1"%>
		<%@ page import="java.sql.*"%>
	<%
	String movie="",start_date="",end_date="";int rating=0;
		Connection con1=DBInfo1.getConnection();
		String query1="select * from movie_master";
		PreparedStatement ps1=con1.prepareStatement(query1);
		ResultSet res1=ps1.executeQuery();
		
                                if(!res1.isBeforeFirst())
                                {
                                    %>
                                        <tr>
                                        <td colspan="4"><center><%out.print("No Files!"); %></center></td>
                                        </tr>
                                    <%
                                }    
                                
		while(res1.next())
		{
			movie=res1.getString(2);
			start_date=res1.getString(3);
			end_date=res1.getString(4);
			rating=res1.getInt(6);
		%>
		<tr><td><%=movie%></td><td><%=start_date%></td><td><%=end_date%></td><td><%=rating%></td></tr>
		<%	
		}
	%>
	</table>
</center>	


</div>

    <!--css styling of footer--> 
    
 
   <style>
     #frst{ ; font-weight:bolder;}
	 #second{ font-weight:bold; font-size:18px;}
	 #footer a{text-decoration:none; color:black}
	 #footer a:hover{color:#EEEEEE; text-decoration:underline}
    </style>
    < <table bgcolor="#ffffff" width=100%>
            <tr style="color:navy;size:16px; font-family:Times New Roman"><td width=7%></td>
           <td><h4>Main Links</h4><br> 
    										<h5 style="margin-top:-20px">Home<br>
                                            About us<br>
                                            
                                            Visitors<br>
                                            Contact us<br>
                                            Mail us</h5>
            </td>						    
                                            
            <td ><h4>Services</h4><br>
                <h5 style="margin-top:-20px">Movie tickets<br>
                							 Plays<br>
           									 Sports<br>
                                             
                                            Events<br>
                                                      Leisure activities<br>     
             </td>
             <td width=20%> <img src="image/create_thumb.png" align="absmiddle"> </td>                              
                                             
              <td><h4>Exclusives</h4>
              	   <h5>Corporate Vouchers<br>
                   								Gift Cards<br>
                                                Refer my Friend<br>
                                                Reserve your seat<br>
                                                </h5>
              </td>
              <td><h4>Other Links</h4>
              	   <h5 >Sitemap<br>
                   								Faq<br>
                   								T&c<br>
                                                Privacy Policy<br>
                                                Refund Policy<br>
                                                Licence</h5>
             </td><td width=7%></td>                                                             
              </tr>
            </table>
      
    
    </div>

		</body>

	<style>
	*{
	margin:0px;
	padding:0px;
	
	}
	body{
	text-align:left;
	width:100%;
	display:block;
	background:#de67ca7;
	}
	
	#mainbody{
	display-block;
	margin:10px auto;
	width:1200px;
	height:750px;
	background:silver;
	border:3px solid black;
	}
	#topheader
	{
	
	border-bottom:2px solid blue;
	padding:20px;
	background:radial-gradient(center,red 0%,#eeeee 50%);
	text-align:center;
	}
	#hd1
	{
	display:block;
	width:300px;
	height:30px;
	border:1px solid black;
	background:-webkit-linear-gradient(top,red,black);
	padding:15px;
	margin:20px auto;
	border-radius:10px;
	color:#d8f1f8;
	box-shadow:rgb(110,110,110)10px 10px 8px;
	-webkit-box-shadow:rgba(110,110,110,0.8)10px 10px 8px;
	}
	#navigation{
	
	display:block;
	background:#666;
	padding:5px;
	border-bottom:2px solid green;
	height:45px;
	}
	
	#table{
	clear:both;
	
	display:block;
	margin-top:20px;
	margin-left:350;
	}
	#nav_list{
		
	width:410px;
	display:block;
	margin:0px auto;
	height:30px;
		
	}
	#nav_list ul{
		
		list-style-type:none;
		float: left;
		
	}
	
	#nav_list ul li{
		
		float: left;
	}
	#nav_list ul li a{
		display:block;
		border:2px solid #000;
		text-decoration:none;
		margin:8px;
		height:20px;
		font-size:0.8em;
		font-weight:bold;
		color:#fde;
		width:80px;
		background:-webkit-gradient(linear,left top,left bottom,from(#666),to(#333));
		border-radius:5px;
		box-shadow:1px 1px 4px silver;
		-webkit-box-shadow:rgba(110,110,110,0.8)5px 5px 4px;
		text-align:center;
	}
	#nav_list li a:havor{
	
	background:-webkit-gradient(linear,left top,left bottom,from(#000),to(#333));
	-webkit-box-shadow:rgb(110,110,110,0.6)10px 10px 8px;
	}
	
	</style>
</html>