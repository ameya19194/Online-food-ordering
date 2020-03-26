<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<style type="text/css">
a
{
font-family: Book Antiqua;
}

#topcorner
{
position:absolute;
   top:0;
   right:10px;
}

</style>
</head>
<body>
<h4 style="font-family: Palatino; font-size: 20px" align="center">
<%
out.println("Welcome to Category List"+" "+session.getAttribute("User"));
out.println("<br><br>Select a category and add desired items to your order.");
%>
</h4>
<div style="font-size: 13px; font-family: Palatino">Note:-<br>1. You can order max 20 nos of each food item.
<br>
2. Food items selected but with quantity zero will not be added to your order.
</div>

<ul style="list-style: disc;">
<li><a href="/OnlineFoodStore/snacksnew.jsp" >Snacks</a></li>
<li><a href="/OnlineFoodStore/beveragesnew.jsp" >Beverages</a></li>
<li><a href="/OnlineFoodStore/sandwichesnew.jsp" >Sandwiches</a></li>
<li><a href="/OnlineFoodStore/soupsnew.jsp" >Soups</a></li>
<li><a href="/OnlineFoodStore/indianstartersnew.jsp" >Indian Starters</a></li>
<li><a href="/OnlineFoodStore/chinesestartersnew.jsp" >Chinese Starters</a></li>
<li><a href="/OnlineFoodStore/chinesenew.jsp" >Chinese Main course</a> </li>
<li><a href="/OnlineFoodStore/rotinew.jsp" >Roti/Chapati</a> </li>
<li><a href="/OnlineFoodStore/maincoursenew.jsp" >Main Course</a></li>
<li><a href="/OnlineFoodStore/dessertsnew.jsp" >Deserts and Soft Drinks</a></li>
</ul>

<a href="Logout" id="topcorner" style="font-family: Garamond">Logout</a>


<h4><a href="details.jsp" style="font-family: Garamond; color: red;">Check my Order</a></h4> 

</body>
</html>