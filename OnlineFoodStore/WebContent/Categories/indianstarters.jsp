<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indian Starters</title>
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
<td><input type="checkbox" value="Veg Seekh Kabab" name="indstrlist"></td>
<td>Veg Seekh Kabab</td>
<td><span><input type="text" size="5" name="indstrqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Mushroom Tikka" name="indstrlist"></td>
<td>Mushroom Tikka</td>
<td><span><input type="text" size="5" name="indstrqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Babycorn Tikka" name="indstrlist"></td>
<td>Babycorn Tikka</td>
<td><span><input type="text" size="5" name="indstrqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Gobi Tandoori" name="indstrlist"></td>
<td>Gobi Tandori</td>
<td><span><input type="text" size="5" name="indstrqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Paneer Tikka Dry" name="indstrlist"></td>
<td>Paneer Tikka Dry</td>
<td><span><input type="text" size="5" name="indstrqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Paneer Lasooni Tikka" name="indstrlist"></td>
<td>Paneer Lasooni Tikka</td>
<td><span><input type="text" size="5" name="indstrqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Paneer Achari Tikka" name="indstrlist"></td>
<td>Paneer Achari Tikka</td>
<td><span><input type="text" size="5" name="indstrqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

</table>
<br>
<input type="hidden" name="listype" value="6">
<input type="submit" value="Add to my order">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp">Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>













