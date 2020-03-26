<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sandwiches</title>
<style type="text/css">
input {
	font-family: Times;
}

a {
	font-family: Times;
}

td {
	font-family: Book Antiqua;
}
</style>
</head>
<body>
<form action="/OnlineFoodStore/orderlistusingindexlist.jsp" method="post">

<table>
<tr>
<td><input type="checkbox" value="Bread Butter" name="sandwiches"></td>
<td>Bread Butter</td>
<td><m:qtynos name="sandqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Sandwich" name="sandwiches"></td>
<td>Veg Sandwich</td>
<td><m:qtynos name="sandqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Cheese Sandwich" name="sandwiches"></td>
<td>Veg Cheese Sandwich</td>
<td><m:qtynos name="sandqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Toast" name="sandwiches"></td>
<td>Veg Toast</td>
<td><m:qtynos name="sandqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Cheese Toast" name="sandwiches"></td>
<td>Veg Cheese Toast</td>
<td><m:qtynos name="sandqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Burger" name="sandwiches"></td>
<td>Veg Burger</td>
<td><m:qtynos name="sandqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Cheese Burger" name="sandwiches"></td>
<td>Veg Cheese Burger</td>
<td><m:qtynos name="sandqty"></m:qtynos></td>
</tr>

</table>
<br>

<input type="hidden" name="listype" value="4">
<input type="submit" value="Add to my order" style="font-size: 15px">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp"> Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>