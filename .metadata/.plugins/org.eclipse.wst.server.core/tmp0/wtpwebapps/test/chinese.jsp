<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chinese</title>
</head>
<body>
<form action="orderlistcontrollerusingusebean.jsp" method="post">
<input type="checkbox" value="Manchow Soup" name="chineseList">Manchow soup
<span style="font-family: Consolas"><input type="text" size="5" name="chineseQty" value="0">&nbsp;&nbsp;Nos</span><br>
<input type="checkbox" value="Fried Rice" name="chineseList">Fried Rice
<span style="font-family: Consolas"><input type="text" size="5" name="chineseQty" value="0">&nbsp;&nbsp;Nos</span><br>
<input type="checkbox" value="Serpa Rice" name="chineseList">Serpa Rice
<span style="font-family: Consolas"><input type="text" size="5" name="chineseQty" value="0">&nbsp;&nbsp;Nos</span><br><br>
<input type="hidden" name="listype" value="2">
<input type="submit" value="Add to my order" style="font-family: Consolas">
</form>
<a href="/OnlineFoodStore/category.jsp" style="font-family: Consolas">Categories</a>
</body>
</html>