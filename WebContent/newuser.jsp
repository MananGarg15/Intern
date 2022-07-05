<html>
<head>
<script type="text/javascript" src="js/check.js">

</script>
</head>
<body>
<p>
  <%@ include file="index1.jsp"%>
</p>

<% String s1=request.getParameter("id");
		%>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<form name="user" action="register.jsp?id=<%=s1%>" method="post" onsubmit="return check();" >
<center>
<table>
<tr><td>Enter Username</td><td><input required type=text name=uname></td></tr>
<tr><td>Enter Password</td><td><input required type=password name=pass1></td></tr>
<tr><td>Retype Password</td><td><input required  type=password name=pass2></td></tr>
<tr><td>Email</td><td><input type=email required name=email></td></tr>
<tr><td>Contact Number</td><td><input required type=number name=phone></td></tr>
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