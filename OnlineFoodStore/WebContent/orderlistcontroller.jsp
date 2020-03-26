<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbutility.MyDBConnector"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OrderListController</title>
</head>
<body>
<% 
String type=request.getParameter("listype");
int i=Integer.parseInt(type);
String sessionid=session.getId();
Connection con=MyDBConnector.getConnection();
//con.setAutoCommit(false);
PreparedStatement pstmt=null;
switch(i)
{
case 1:
{
	String[] bevList=request.getParameterValues("beverageslist");	
	String[] bevQty=request.getParameterValues("bevqty");	
	
	for(int j=0; j<=bevList.length-1;j++)
	{
		pstmt=con.prepareStatement("insert into orderdb(id,item,qty) values(?,?,?)");
		pstmt.setString(1, sessionid);
		pstmt.setString(2, bevList[j]);
		pstmt.setString(3, bevQty[j]);	
		int updateCount=pstmt.executeUpdate();
		if(updateCount!=0)
		{
			out.print("<h3 style='font-family: Consolas'>Selected items have been added successfully</h3>");
			out.print("<h3 style='font-family: Consolas'>You can add new items to the list if u want to </h3>");
			request.getRequestDispatcher("/Categories/beverages.jsp").include(request, response);
		}
	}
	break;
}

case 2:
{
	String[] chList=request.getParameterValues("chineseList");	
	String[] chQty=request.getParameterValues("chineseQty");
	
	for(int j=0; j<=chList.length-1;j++)
	{
		pstmt=con.prepareStatement("insert into orderdb(id,item,qty) values(?,?,?)");
		pstmt.setString(1, sessionid);
		pstmt.setString(2, chList[j]);
		pstmt.setString(3, chQty[j]);	
		int updateCount=pstmt.executeUpdate();
		if(updateCount!=0)
		{

			out.print("<h3 style='font-family: Consolas'>Selected items have been added successfully</h3>");
			out.print("<h3 style='font-family: Consolas'>You can add new items to the list if u want to </h3>");
			request.getRequestDispatcher("/Categories/chinese.jsp").include(request, response);
		}
	}
	break;
	
}
default:
{
	System.out.print("Error in coding");
    break;
}
}
%>

</body>
</html>