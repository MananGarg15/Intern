<%
	
	if(session.getAttribute("id")!=null)
		{
		response.sendRedirect("book.jsp");
		}
	else
		response.sendRedirect("member_login.jsp");
	
%>