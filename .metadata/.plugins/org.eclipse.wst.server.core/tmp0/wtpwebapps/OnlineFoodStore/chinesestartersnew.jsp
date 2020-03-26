<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chinese Starters</title>
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
<td><input type="checkbox" value="Paneer Hukka" name="chinstrlist"></td>
<td>Paneer Hukka</td>
<td><m:qtynos name="chinstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Lollipop" name="chinstrlist"></td>
<td>Veg Lollipop</td>
<td><m:qtynos name="chinstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Chinese Bhel" name="chinstrlist"></td>
<td>Chinese Bhel</td>
<td><m:qtynos name="chinstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Crispy" name="chinstrlist"></td>
<td>Veg Crispy</td>
<td><m:qtynos name="chinstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Potato Crispy" name="chinstrlist"></td>
<td>Potato Crispy</td>
<td><m:qtynos name="chinstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Spring Roll" name="chinstrlist"></td>
<td>Veg Spring Roll</td>
<td><m:qtynos name="chinstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Mushroom Spring Roll" name="chinstrlist"></td>
<td>Mushroom Spring Roll</td>
<td><m:qtynos name="chinstrqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Gobi Manchurian" name="chinstrlist"></td>
<td>Gobi Manchurian</td>
<td><m:qtynos name="chinstrqty"></m:qtynos></td>
</tr>

</table>
<br>
<input type="hidden" name="listype" value="7">
<input type="submit" value="Add to my order" style="font-size: 15px">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp">Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>












