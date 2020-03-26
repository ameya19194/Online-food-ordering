<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Soups</title>
<script type="text/javascript">

</script>
<style type="text/css">
input {
	font-family: Consolas;
}

a {
	font-family: Consolas;
}
</style>
</head>
<body>
<form action="/OnlineFoodStore/orderlistcontrollerusingusebean.jsp" method="post">

<table>
<tr>
<td><input type="checkbox" value="Tomato Soup" name="souplist"></td>
<td>Tomato Soup</td>
<td><span><input type="text" size="5" name="soupqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Manchow Soup" name="souplist"></td>
<td>Manchow Soup</td>
<td><span><input type="text" size="5" name="soupqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Sweet Corn Soup" name="souplist"></td>
<td>Sweet Corn Soup</td>
<td><span><input type="text" size="5" name="soupqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Palak Soup" name="souplist"></td>
<td>Palak Soup</td>
<td><span><input type="text" size="5" name="soupqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Babycorn Soup" name="souplist"></td>
<td>Babycorn Soup</td>
<td><span><input type="text" size="5" name="soupqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Hot and Sour Soup" name="souplist"></td>
<td>Hot and Sour Soup</td>
<td><span><input type="text" size="5" name="soupqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

</table>
<br>
<input type="hidden" name="listype" value="5">
<input type="submit" value="Add to my order">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp">Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>













