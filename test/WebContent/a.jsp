<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>a</title>
<script type="text/javascript">
/* var checkedValue = null; 

function validate(){
	document.write("In validate");
	var inputElements = document.getElementsByClassName('qty').value;
	for(var i=0; inputElements[i]; ++i){
	      if(inputElements[i].checked){
	           checkedValue = inputElements[i].value;
	           document.write('<br/>'+checkedValue);
	      }
}

} */
</script>
</head>
<body>
<%-- <%
//List<String> l=null;
List<String> l=new ArrayList<String>();
l.add(0, "Ameya");
pageContext.setAttribute("list", l,PageContext.PAGE_SCOPE);
%>
<c:set var="list" scope="session" value="${pageScope.list}"></c:set>
<c:if test="${list!=null && list.size()!=0}">
1
</c:if>

<c:if test="${list==null || list.size()==0 }">
2
</c:if> --%>
<%

ServletContext ctx=getServletContext();
if(ctx.getAttribute("newId")==null)
{
	int count=1;
	ctx.setAttribute("newId", count);
}

if(ctx.getAttribute("newId")!=null)
{
	int count=(Integer)ctx.getAttribute("newId");
	ctx.setAttribute("newId", count++);
}
%>

<form action="b.jsp" method="post">
<%-- <input type="checkbox" name="snacks" value="Idli">
<input type="checkbox" name="snacks" value="Dosa">
<input type="checkbox" name="snacks" value="Batata Vada">
<input type="checkbox" name="snacks" value="Puri Bhaji">
<input type="checkbox" name="snacks" value="Misal Pav">
<input type="checkbox" name="snacks" value="Pav Bhaji">

<!--  <select name="1">
               <option value = "1" >1</option>
               <option value = "2" >2</option>
               <option value = "3" >3</option>
               <option value = "4" >4</option>
             </select>
             
<select name="2">
               <option value = "1">1</option>
               <option value = "2" >2</option>
               <option value = "3" >3</option>
               <option value = "4" >4</option>
             </select>  
             
          
<select name="3">
               <option value = "1">1</option>
               <option value = "2" >2</option>
               <option value = "3" >3</option>
               <option value = "4" >4</option>
               <option value = "10" >10</option>
             </select>          
             
<select name="4">
               <option value = "1">1</option>
               <option value = "2" >2</option>
               <option value = "3" >3</option>
               <option value = "4" >4</option>
               <option value = "15" >15</option>
             </select>  --> 
           <m:qtynos name="snackList"></m:qtynos>  --%>                 
<input type="submit" value="Submit">                  

</form>
</body>
</html>