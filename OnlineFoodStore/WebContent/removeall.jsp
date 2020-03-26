<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove All</title>
</head>
<body>
<jsp:useBean id='a' class="bean.CustomerOrder" scope="session"></jsp:useBean>
<%
a.getItemlist().clear();
a.getQtyList().clear();
a.setItemlist(null);
a.setQtyList(null);
%>
<jsp:forward page="category.jsp"></jsp:forward>
</body>
</html>