<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbutility.MyDBConnector"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Confirmed</title>

<style type="text/css">

table, th, td {
    border: 0px solid black;
    font-family: Consolas;
    border-collapse: collapse;
}

th, td {
    padding: 4px;
}


div,p,h
{
font-family: Consolas;
}

#topcorner
{
position:absolute;
   top:0;
   right:10px;
}

#topcornercat
{
position:absolute;
   top:0;
   right:60px;
}
</style>
</head>
<body>
<jsp:useBean id='a' class="bean.CustomerOrder" scope="session"></jsp:useBean>

<div style="line-height: 10px;" align="center"><h1 style="font-family: Lucida Console">Food Studio</h1>
<h4>Nahur(East), Opp Fortis Hospital, Mumbai-400042.</h4>
<h4>Tel no:- 9821955842, 9773544527</h4>
</div>
<div align="left">-----------------------------------------------</div>

<h5 style="font-family: Lucida Console;" align="center" >Thank you ${sessionScope.User} for ordering from us</h5>

<%
ServletContext ctx=getServletConfig().getServletContext();
		
		if(ctx.getAttribute("newId")!=null)
		{//System.out.print("in 1 if");
			int newcount=(Integer)ctx.getAttribute("newId")+1;
			ctx.setAttribute("newId", newcount);
		}
		
		
		else if(ctx.getAttribute("newId")==null)
		{//System.out.print("in 2 if");
			int count=1;
			ctx.setAttribute("newId", count);	
		}

		
		
int newid=(Integer)ctx.getAttribute("newId");

pageContext.setAttribute("sessionid", String.valueOf(newid));
String address=request.getParameter("address");
pageContext.setAttribute("address", address);
String area=request.getParameter("area");
pageContext.setAttribute("area", area);
String direction=request.getParameter("direction");
pageContext.setAttribute("direction", direction);
Date d=new Date();
pageContext.setAttribute("d", d);
pageContext.setAttribute("bean", a);
%>
<!-- DB Code -->
<%
PreparedStatement pstmt=null;
Connection con=MyDBConnector.getConnection();


for(int i=0; i<a.getItemlist().size();i++)
{
pstmt=con.prepareStatement("insert into orderdb(id,item,qty,address,area,direction)values(?,?,?,?,?,?);");	
pstmt.setInt(1,Integer.parseInt((String)pageContext.getAttribute("sessionid")));
pstmt.setString(2, a.getItemlist().get(i));
pstmt.setString(3, a.getQtyList().get(i));
pstmt.setString(4,(String)pageContext.getAttribute("address"));
pstmt.setString(5, (String)pageContext.getAttribute("area"));
pstmt.setString(6, (String)pageContext.getAttribute("direction"));
pstmt.executeUpdate();
}


System.out.println("New order placed. Order Id: "+Integer.parseInt((String)pageContext.getAttribute("sessionid")));
%>
<!-- DB Code -->
<h5>Order Id: ${pageScope.sessionid}</h5>
<h5>Date: ${pageScope.d}</h5>
<div align="left">-----------------------------------------------</div>

<%
out.print("<table>");
out.print("<col width='200'>");
out.print("<col width='120'>");
out.print("<col width='120'>");
out.print("<tr><th>Item Name</th><th>Qty(Nos)</th><th>Price(Rs.)</th></tr> ");
for(int j=0;j<=a.getItemlist().size()-1;j++)
{
   out.print("<tr><td>"+a.getItemlist().get(j)+"</td><td>"+a.getQtyList().get(j)+"</td><td>"+a.getPriceByItemName(a.getItemlist().get(j))+"</td></tr>");
}
out.print("</table>");

%>
<div align="left">-----------------------------------------------</div>

<h4 style="font-family: Consolas">Total Price: Rs. ${pageScope.bean.calculateTotalPrice()}</h4>
<h4 style="font-family: Consolas">Your food will be delivered at: <span style='font-family: Consolas; font-size: 13px'>${pageScope.address}</span></h4>
<div align="left">-----------------------------------------------</div>


<%-- <%
if(((String)pageContext.getAttribute('address')).endsWith('.'))
{
	out.print("<h5 style='font-family: Consolas'>${pageScope.address}</h5>");
}

else
{
	out.print("<h5 style='font-family: Consolas'>${pageScope.address}</h5>");
}
%>
 --%>
<br><br>
<div align="center">xxxx--Thank you--xxxx</div>
<a href="Logout" id="topcorner" style="font-family: Garamond">Logout</a>
<a href="removeall.jsp" id="topcornercat" style="font-family: Garamond">New Order</a>
<%-- <%
out.print("<table border='1px'>");
out.print("<tr><th style='align-content: center'>Item Name</th><th style='align-content: center'>Qty(Nos)</th><th style='align-content: center'>Price(Rs.)</th></tr> ");
for(int j=0;j<=a.getItemlist().size()-1;j++)
{
   out.print("<tr><td>"+a.getItemlist().get(j)+"</td><td>"+a.getQtyList().get(j)+"</td><td>"+a.getPriceByItemName(a.getItemlist().get(j))+"</td></tr>");
++++++++}
out.print("</table>");
%>
<br>
<h4>Your food will be delivered at: </h4>
<h5>${pageScope.address}</h5> --%> 
</body>
</html>