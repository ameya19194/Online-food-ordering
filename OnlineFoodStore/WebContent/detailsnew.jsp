<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Details</title>
<style type="text/css">
table, th, td {
    border: 1px solid black;
    font-family: Consolas;
    border-collapse: collapse;
}

th, td {
    padding: 5px;
}

th
{
background-color: rgba(0, 200, 0, 0.2);
}
h4
{
 font-family: Consolas;
}

input {
	font-family: Consolas;
}
</style>
</head>
<body>
<h1 style="font-family: Consolas">Your Order details</h1>
<jsp:useBean id='a' class="bean.CustomerOrder" scope="session"></jsp:useBean>

<%
if(a.getItemlist()!=null)
{
	out.print("<table border='1px'>");
	out.print("<tr><th style='align-content: center'>Item Name</th><th style='align-content: center'>Qty(Nos)</th><th style='align-content: center'>Price(Rs.)</th></tr> ");
	for(int j=0;j<=a.getItemlist().size()-1;j++)
	{
	  
	   System.out.println(j);
	   pageContext.setAttribute("count", j, PageContext.REQUEST_SCOPE);
	   out.print("<tr><td>"+a.getItemlist().get(j)+"</td><td>"+a.getQtyList().get(j)+"</td><td>"+a.getPriceByItemName(a.getItemlist().get(j))+"</td>"+"<td><form action='remove.jsp'><input type='hidden' value='${requestScope.count}' name='hidden'><input type='submit' value='Remove'></input></form></tr>");
	}
	out.print("</table>");
	
	out.print("</br>"+"<h4>Total Cost: "+"Rs."+a.calculateTotalPrice()+"</h4>");
	out.print("<br/>");
    out.print("<br/><form action='orderconfirmed.jsp' method='post'>");
    out.print("Address: <textarea name='address' cols='60' rows='4'></textarea>");
    out.print("<input type='submit' value='Confirm Order'>");
    out.print("</form>");

}

else
{
out.print("You haven't ordered anything yet.");

}
%>

</body>
</html>