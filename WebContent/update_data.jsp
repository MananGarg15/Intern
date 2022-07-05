<html>
<body bgcolor=#eeeee>
<%@ include file="index1.jsp"%>
<center>
<form >
<table border='1'>


		<%@ page import="java.sql.*" %>
		<%@ page import="library.DBInfo1" %>
		
		<%
		if(request.getParameter("id")==null)
		{
		out.println("No Data Selected ! Move Back");
		}
		else
		{
		
			int id=Integer.parseInt(request.getParameter("id"));
			
			Connection con=DBInfo1.getConnection();
			String theatre="",movie="",type="",medium="",isLive="";
			int row=0,col=0,price=0,rows=0;
			String query="select theatre_id from theatre_of_city where cinema_id="+id+"";
			PreparedStatement ps=con.prepareStatement(query);
			int id1=id;
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				id=rs.getInt(1);
			}
			
			query="select * from theatre_of_city where theatre_id='"+id+"'";
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				row=rs.getInt(4);
				col=rs.getInt(5);
			}
			%>
			<tr><td>No of Rows:</td><td><input type=number name=row value='<%=row%>'></td></tr>
			<tr><td>No of Cols:</td><td><input type=number name=col value='<%=col%>'></td></tr>
			<%
			
			query="select * from cinema_master where cinema_id="+id1+"";
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
			
				medium=rs.getString(3);
				isLive=rs.getString(4);
			
			
			
			%>
			<tr><td>
			Select Medium</td><td>
			<Select name=medium>
			<option value='<%=medium%>'><%=medium%></option>
			</select></td></tr>
			<tr><td>
			Select Condition</td><td>
			<select name=isLive>
			<option value='<%=isLive%>'><%=isLive%></option>
			</select></td></tr>
			<%}
			
			
			
			
			int theatre_show_time_id=0,movie_id=0;
			query="select * from theatre_show_time where theatre_id='"+id+"'";
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				theatre_show_time_id=rs.getInt(1);// to upadate the user choice
				movie_id=rs.getInt(5);
			}
			
			
			
			
			
			
			
			
			query="select * from movie_master where movie_id='"+movie_id+"'";
						ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			String start_date="",end_date="";
			double rating=0.0;
			while(rs.next())
			{
				movie=rs.getString(2);
				
				rating=rs.getDouble(6);
			}
			%>		

			<tr><td>Movie:</td><td><input type=text name=row value='<%=movie%>'></td></tr>
			<tr><td>Start Date:</td><td><input type=date name=start_date ></td></tr>
			<tr><td>End Date</td><td><input type=date name=end_date ></td></tr>
			<tr><td>Rating</td><td><input type=number name=rating value='<%=rating%>'></td></tr>
			
<%

					
			query="select * from ticket_rate where theatre_id='"+id+"'";
						ps=con.prepareStatement(query);
						
						int i=1;
			rs=ps.executeQuery();
		
			
			
			while(rs.next())
			{
				type=rs.getString(3);
				price=rs.getInt(4);
				rows=rs.getInt(5);
				
			
			%>
			
			<tr><td>Price for <%=type.toUpperCase()%>: </td><td><input type=number name=price<%=type%> value='<%=price%>'></td></tr>
			
			<tr><td>Rows in <%=type.toUpperCase()%>: </td><td><input type=number name=row<%=type%> value='<%=rows%>'></td></tr>
			
			
			<%}%>
			
		
		
		
</table>	
<input type=submit value=Update >
</form>
<%}%>
</center>
</body>
</html>