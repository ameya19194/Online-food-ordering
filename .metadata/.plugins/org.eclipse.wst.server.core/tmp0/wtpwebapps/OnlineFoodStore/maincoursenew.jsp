<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Course</title>
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
<td><input type="checkbox" value="Veg Kolhapuri" name="mainList"></td>
<td>Veg Kolhapuri</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Makhanwala" name="mainList"></td>
<td>Veg Makhanwala</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Bhuna Masala" name="mainList"></td>
<td>Bhuna Masala</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Chana Masala" name="mainList"></td>
<td>Chana Masala</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Paneer Makhanwala" name="mainList"></td>
<td>Paneer Makhanwala</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Paneer Tikka Masala" name="mainList"></td>
<td>Paneer Tikka Masala</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Palak Paneer" name="mainList"></td>
<td>Palak Paneer</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Dal Fry" name="mainList"></td>
<td>Dal Fry</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Steam Rice" name="mainList"></td>
<td>Steam Rice</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Jeera Rice" name="mainList"></td>
<td>Jeera Rice</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Veg Biryani" name="mainList"></td>
<td>Veg Biryani</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

<tr>
<td><input type="checkbox" value="Pulav" name="mainList"></td>
<td>Pulav</td>
<td><m:qtynos name="mainqty"></m:qtynos></td>
</tr>

</table>
<br>
<input type="hidden" name="listype" value="8">
<input type="submit" value="Add to my order" style="font-size: 15px">
</form>
<br>
<a href="/OnlineFoodStore/category.jsp">Back to Categories</a>&nbsp;&nbsp;
<a href="/OnlineFoodStore/details.jsp">Check my order</a>
</body>
</html>













