<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove</title>
</head>
<body>
<jsp:useBean id='a' class="bean.CustomerOrder" scope="session"></jsp:useBean>
<%
String j=request.getParameter("hidden");
int index=Integer.parseInt(j);
a.getItemlist().remove(index);
a.getQtyList().remove(index);

response.sendRedirect("details.jsp");
%>
<%-- <jsp:forward page="details.jsp"></jsp:forward> --%>

</body>
</html>