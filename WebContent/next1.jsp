    <% 
    String str=request.getParameter("cname");
	String str1=(String)session.getAttribute("captchacode");
	if(str.equals(str1))
	{
	 out.println("Captcha matched");
	 
	}
	else
	{
	out.println("captcha not matched,Try Again!");
	%>
	<BR>
	<%@include file="captcha1.jsp"%>
	
	
	<%
	}
	


    
	%>