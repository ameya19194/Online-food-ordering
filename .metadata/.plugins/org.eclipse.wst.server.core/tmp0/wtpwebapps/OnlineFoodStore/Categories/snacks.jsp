<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Snacks</title>
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

<form action="/OnlineFoodStore/orderlistusingindexlist.jsp" method="post">

<table>
<tr>
<td><input type="checkbox" value="Idli" name="snacks"></td>
<td>Idli</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Medu Vada" name="snacks"></td>
<td>Medu Vada</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Dahi Vada" name="snacks"></td>
<td>Dahi Vada</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Upma" name="snacks"></td>
<td>Upma</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Sheera" name="snacks"></td>
<td>Sheera</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Poha" name="snacks"></td>
<td>Poha</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Batata Vada" name="snacks"></td>
<td>Batata Vada</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Cutlet Vada" name="snacks"></td>
<td>Veg Cutlet</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Puri Bhaji" name="snacks"></td>
<td>Puri Bhaji</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Misal Pav" name="snacks"></td>
<td>Misal Pav</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Chole Bhature" name="snacks"></td>
<td>Chole Bhature</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

<tr>
<td><input type="checkbox" value="Pav Bhaji" name="snacks"></td>
<td>Pav Bhaji</td>
<td><span><input type="text" size="5" name="snacksqty" value="0">&nbsp;&nbsp;Nos</span></td>
</tr>

</table>
<br>

<input type="hidden" name="listype" value="3">
<input type="submit" value="Add to my order">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp"> Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>