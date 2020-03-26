<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Details</title>
<style type="text/css">
table, th, td {
    border: 1px solid black;
    font-family: Garamond;
    border-collapse: collapse;
    
}

th, td {
    padding: 5px;
}

th
{
background-color: rgba(0, 200, 0, 0.2);
}
h
{
 font-family: Garamond; 
}

input, label {
	font-family: Garamond;
}

#topcorner
{
position:absolute;
   top:0;
   right:10px;
}
</style>
<script type="text/javascript">
function validateform(){  
	var x=document.reg.address.value;  
	var y=x.trim();
	if (y==null || y==""){  
	  alert("Address cannot be blank");
	  return false;  
	}
	
	if(x.length>100)
	{
		alert("Address should be less than 100 characters");
		  return false;
	}
	}  
</script>
</head>
<body>


<jsp:useBean id='a' class="bean.CustomerOrder" scope="session"></jsp:useBean>
<c:set var="a" scope="session" value="${sessionScope.a}"/>

<c:if test="${a.getItemlist()==null || a.getItemlist().size()==0}">
<h3 style="font-family: Times; color: red;" align="center">Sorry but you haven't ordered anything yet.</h3>
<h4><a href="category.jsp" style="font-family: Times">Back to Categories</a></h4>
</c:if>
<%
if(a.getItemlist()!=null && a.getItemlist().size()!=0){
	a.deleteDuplicates();
	a.reduceQty();
	pageContext.setAttribute("a", a, PageContext.SESSION_SCOPE);
	//System.out.println(a.getItemlist().size());
}

%>


<c:if test="${a.getItemlist()!=null && a.getItemlist().size()!=0}">
<h1 style="font-family: Tahoma" align="center"><u>Your Order details</u></h1>
<table>
<col width="200px">
<col width="100px">
<col width="150px">
<col width="70px">
<tr><th>Name</th><th>Qty(Nos)</th><th>Unit Price(Rs.)</th></tr>
<c:forEach var="j" begin="0" end="${a.getItemlist().size()-1}">

<tr>
<td>${a.getItemlist().get(j)}</td>
<td>${a.getQtyList().get(j)}</td>
<td>${a.getPriceByItemName(a.getItemlist().get(j))}</td>
<td><form action="remove.jsp"><input type="hidden" value="${j}" name="hidden"><input type="submit" value="Remove" style="font-family: Times"></form></td>
<td><form action="decrement.jsp"><input type="hidden" value="${j}" name="hidden"><input type="submit" style="font-size: 18px" value="<"></form></td>
<td><form action="increment.jsp"><input type="hidden" value="${j}" name="hidden"><input type="submit" style="font-size: 18px" value=">"></form></td>
</tr>
</c:forEach>
</table>
<br>
<h4 style="font-family: Garamond"><u>Order Bill: Rs.${a.calculateTotalPrice()}</u></h4>
<br>
<form action="orderconfirmed.jsp" method="post" onsubmit="return validateform()" name="reg">
<label for="addr"><b>Address:</b></label>
<textarea id="addr" name='address' cols='60' rows='4'></textarea><span style="color: gray;font-size: 13px">(Max 100 characters)</span>
<span id="adderr"></span>
<br>
<span style="font-family: Garamond">Area/Locality</span>
<select name="area" style="font-family: Times">
<option value="Kurla">Kurla</option>
<option value="Vidyavihar">Vidyavihar</option>
<option value="Ghatkopar">Ghatkopar</option>
<option value="Vikhroli">Vikhroli</option>
<option value="Kanjur Marg">Kanjur Marg</option>
<option value="Bhandup">Bhandup</option>
<option value="Nahur">Nahur</option>
<option value="Mulund">Mulund</option>
</select>
<select name="direction" style="font-family: Times">
<option value="East">East</option>
<option value="West">West</option>
</select>
<br>
<br>
<h3><a href="category.jsp" style="font-family: Garamond; font-size: 18px" id="topcorner">Back to categories</a></h3>
<div align="center"><input type='submit' value='Confirm Order' style="font-size: 20px; color:maroon; font-family: Garamond"></div>
</form>
</c:if>


<%-- <br>
<h4 style="font-family: Consolas">Order Bill: Rs.${a.calculateTotalPrice()}</h4>
<br>
<form action="orderconfirmed.jsp" method="post">
<label for="addr">Address:</label>
<textarea id="addr" name='address' cols='60' rows='4'></textarea>
<div align="center">-----------------------------------------------------------</div>
<input type='submit' value='Confirm Order'>
</form> --%>



</body>
</html>