<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Beverages</title>
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
<td><input type="checkbox" value="Tea" name="beverageslist"></td>
<td>Tea</td>
<td><span><input type="text" size="5" name="bevqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Coffee" name="beverageslist"></td>
<td>Coffee</td>
<td><span><input type="text" size="5" name="bevqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Milk" name="beverageslist"></td>
<td>Milk</td>
<td><span><input type="text" size="5" name="bevqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Bournvita" name="beverageslist"></td>
<td>Bournvita</td>
<td><span><input type="text" size="5" name="bevqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>
</table>
<br>
<input type="hidden" name="listype" value="1">
<input type="submit" value="Add to my order">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp">Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>













