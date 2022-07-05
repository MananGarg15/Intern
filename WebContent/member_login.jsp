<html>
<body >
<%@ include file="index1.jsp"%>
<center>

<form action="member.jsp" method="post" >
<table>

<div id=header><header><h1>Login!!</h1></header></div>
<tr><td>Enter Username</td><td><input type=text name="uname" required></td></tr>
<br><tr><td>Enter Password</td><td><input type=password name="pass" required></td></tr>


<tr><td colspan="2"><div align="center">
  <input type=submit>  
  <input name="Reset" type=reset value="Reset">
</div></td></tr>
</table>


<hr>
<nav id="nav">
<li>
<ul>
<a href="newclient.jsp">New User?</a>
</ul>

</li>
</nav>

</form>
</center>
</body>
<style>
	#nav li{
		display:inline-block;
		list-style:none;
	}

</style>
</html>