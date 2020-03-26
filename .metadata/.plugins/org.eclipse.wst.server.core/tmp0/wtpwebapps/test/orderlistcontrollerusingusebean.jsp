<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%
String type=request.getParameter("listype");
int i=Integer.parseInt(type);
String sessionid=session.getId();
pageContext.setAttribute("sessionid", sessionid);
%>
<jsp:useBean id='a' class="bean.CustomerOrder" scope="session"></jsp:useBean>

<%
switch(i)
{
case 1:
{
	List<String> bevList=new ArrayList<String>();
	List<String> bevQty=new ArrayList<String>();
	String[] x=request.getParameterValues("beverageslist");
	String[] y=request.getParameterValues("bevqty");

	for(int j=0;j<=x.length-1;j++)
	{
		bevList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j]!="")
		{
			bevQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(bevList);
		a.setQtyList(bevQty);
	}
	
	else
	{
		a.getItemlist().addAll(bevList);
		a.getQtyList().addAll(bevQty);
	}
	out.print("<h3 style='font-family: Consolas'>Selected items have been added successfully</h3>");
	out.print("<h3 style='font-family: Consolas'>You can add new items to the list if u want to </h3>");
	request.getRequestDispatcher("/Categories/beverages.jsp").include(request, response);
	break;    		
}

case 2:
{
	List<String> chList=new ArrayList<String>();
	List<String> chQty=new ArrayList<String>();
	String[] x=request.getParameterValues("chineseList");
	String[] y=request.getParameterValues("chineseQty");

	for(int j=0;j<=x.length-1;j++)
	{
		chList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j]!="")
		{
			chQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(chList);
		a.setQtyList(chQty);
	}
	
	else
	{
		a.getItemlist().addAll(chList);
		a.getQtyList().addAll(chQty);
	}
	out.print("<h3 style='font-family: Consolas'>Selected items have been added successfully</h3>");
	out.print("<h3 style='font-family: Consolas'>You can add new items to the list if u want to </h3>");
	request.getRequestDispatcher("/Categories/chinese.jsp").include(request, response);
	break;    		
}

default:
{
System.out.println("Error in coding");
break;
}

}


%>
 --%>
<%
String[] s=request.getParameterValues("chineseQty");
List<String> l=new ArrayList<String>();

for(int j=0;j<=s.length-1;j++)
{
	if(s[j].equals("0"))
	{
	System.out.println("Do nothing");
	}
	
	else
	{
		 l.add(s[j]);
	}
}

System.out.print(l);
%>

</body>
</html>