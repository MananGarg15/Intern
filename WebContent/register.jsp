<%@ page import="library.DBInfo1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="library.Random_id"%>

<%
String s1=request.getParameter("id");

int flag=0;
String user=request.getParameter("uname");
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
String mail=request.getParameter("email");
String phone=request.getParameter("phone");
String usertype="staff";

int user_id=new Random_id().getId(5);
String url="insert into `user_table`(`user_id`,`username`,`password`,`email`,`phone`,`user_type`) values ( ?,?,?,?,?,?)";
Connection con=DBInfo1.getConnection();
PreparedStatement ps1=con.prepareStatement(url);
ps1.setInt(1,user_id);
ps1.setString(5,phone);
ps1.setString(2,user);
ps1.setString(3,pass1);
ps1.setString(4,mail);
ps1.setString(6, usertype);
flag=ps1.executeUpdate();

if(flag==0)
	response.sendRedirect("newuser.jsp?id="+s1+"");
	
else
	response.sendRedirect("admin1.jsp?id="+s1+"");
%>