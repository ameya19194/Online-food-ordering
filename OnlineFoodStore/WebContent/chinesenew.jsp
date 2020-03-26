<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chinese</title>
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
<td><input type="checkbox" value="Shezwan Rice" name="chineseList"></td>
<td>Shezwan Rice</td>
<td><m:qtynos name="chineseQty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Fried Rice" name="chineseList"></td>
<td>Fried Rice</td>
<td><m:qtynos name="chineseQty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Serpa Rice" name="chineseList"></td>
<td>Serpa Rice</td>
<td><m:qtynos name="chineseQty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Shezwan Noodles" name="chineseList"></td>
<td>Shezwan Noodles</td>
<td><m:qtynos name="chineseQty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Hukka Noodles" name="chineseList"></td>
<td>Hukka Noodles</td>
<td><m:qtynos name="chineseQty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Serpa Noodles" name="chineseList"></td>
<td>Serpa Noodles</td>
<td><m:qtynos name="chineseQty"></m:qtynos></td>
</tr>

</table>
<br>
<input type="hidden" name="listype" value="2">
<input type="submit" value="Add to my order" style="font-size: 15px">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp">Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>