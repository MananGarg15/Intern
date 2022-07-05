
<%--this page is the new client regestration for the new user. paged on the login page. --%>


<html>
<head>
<script type="text/javascript" src="js/check.js">

</script>
</head>
<body>
<p>
  <%@ include file="index1.jsp"%>
</p>


<form name="user" action="client_registration.jsp" method="post" onsubmit="return check();" >
<center>
<h1> New Registration Form </h1>
<table>
<tr><td>Enter Username</td><td><input required type=text name=uname></td></tr>
<tr><td>Enter Password</td><td><input required type=password name=pass1></td></tr>
<tr><td>Retype Password</td><td><input required  type=password name=pass2></td></tr>
<tr><td>Email</td><td><input type=email required name=email></td></tr>
<tr><td>Contact Number</td><td><input required type=number name=phone></td></tr>

<tr><td colspan="2"><div align="center">

<img src="captcha.jsp"/><br>

  <input type=text name=cname>
  
</div></td></tr>


<tr><td colspan="2"><div align="center">
  <input type=submit  value=Register>
  <input name="reset" type="reset" />
</div></td>
</tr>
</table>
</center>
</form>
</body>
</html>