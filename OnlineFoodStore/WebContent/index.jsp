<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food Studio</title>
</head>
<body>
<h1 style="font-family: Consolas; background-color: background-color:hsl(0, 100%, 90%);" align="center">Welcome to Food Studio</h1>
<form action="controller" method="post">
<label for="usrid" style="font-family: Consolas">Username</label>
<input type="text" name="usr" id="usrid" style="font-family: Consolas">
<label for="usrpass" style="font-family: Consolas">Password</label>
<input type="password" name="pass" id="usrpass">
<input type="submit" value="Log In" style="font-family: Consolas">
</form>
</body>
</html>