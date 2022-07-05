<html>
<body bgcolor=#eeeee>
<center>
<form method=post>
<%@ page import="library.DBInfo1"%>

<%@ page import="java.sql.*"%>
<%@ page import="library.Random_id"%>
<%@ page import="java.io.*"%>


<%
int flag=0;
String s1=request.getParameter("uname");
String s2=request.getParameter("pass");
String userType="";
		Connection con=DBInfo1.getConnection();
			String query="select * from user_table ";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			while(res.next())
			{
				if(s1.equalsIgnoreCase(res.getString(2)))
				{
					if(s2.equals(res.getString(3)))
					{	
					flag=1;
						session.setAttribute("id",res.getInt(1));
						userType=res.getString(6);
					}
				}
			}
			if(flag==0)
			{
			session.invalidate();
			response.sendRedirect("member_login.jsp");
			}
			else if(flag==1 && userType.equalsIgnoreCase("staff"))
			 {
			  response.sendRedirect("book.jsp");
			 }
			 else if(flag==1 && userType.equalsIgnoreCase("client"))
			 {
			  response.sendRedirect("book.jsp");
			 }
		
%>
</form>
</center>
</body>
</html>