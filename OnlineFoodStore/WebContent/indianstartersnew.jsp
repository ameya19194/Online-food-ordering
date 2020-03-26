<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indian Starters</title>
<script type="text/javascript">

</script>
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
<td><input type="checkbox" value="Veg Seekh Kabab" name="indstrlist"></td>
<td>Veg Seekh Kabab</td>
<td><m:qtynos name="indstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Mushroom Tikka" name="indstrlist"></td>
<td>Mushroom Tikka</td>
<td><m:qtynos name="indstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Babycorn Tikka" name="indstrlist"></td>
<td>Babycorn Tikka</td>
<td><m:qtynos name="indstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Gobi Tandoori" name="indstrlist"></td>
<td>Gobi Tandori</td>
<td><m:qtynos name="indstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Paneer Tikka Dry" name="indstrlist"></td>
<td>Paneer Tikka Dry</td>
<td><m:qtynos name="indstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Paneer Lasooni Tikka" name="indstrlist"></td>
<td>Paneer Lasooni Tikka</td>
<td><m:qtynos name="indstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Paneer Achari Tikka" name="indstrlist"></td>
<td>Paneer Achari Tikka</td>
<td><m:qtynos name="indstrqty"></m:qtynos></td>
</tr>

</table>
<br>
<input type="hidden" name="listype" value="6">
<input type="submit" value="Add to my order" style="font-size: 15px">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp">Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>












