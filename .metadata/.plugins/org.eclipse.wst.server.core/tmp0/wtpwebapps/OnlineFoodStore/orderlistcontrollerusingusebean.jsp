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
<%
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
		if(y[j].equals("0"))
		{
			if( j<=(bevList.size()-1))
			{
			 bevList.remove(j);
			}
		}
		
		else
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
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
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
		if(y[j].equals("0"))
		{
			if( j<=(chList.size()-1))
			{
			 chList.remove(j);
			}
		}
		
		else
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
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/chinese.jsp").include(request, response);
	break;    		
}

case 3:
{
	List<String> snackList=new ArrayList<String>();
	List<String> snackQty=new ArrayList<String>();
	String[] x=request.getParameterValues("snacks");
	String[] y=request.getParameterValues("snacksqty");

	for(int j=0;j<=x.length-1;j++)
	{
		snackList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j].equals("0"))
		{
			if( j<=(snackList.size()-1))
			{
			 snackList.remove(j);
			}
		}
		
		else
		{
			snackQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(snackList);
		a.setQtyList(snackQty);
	}
	
	else
	{
		a.getItemlist().addAll(snackList);
		a.getQtyList().addAll(snackQty);
	}
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/snacks.jsp").include(request, response);
	break;    		
}

case 4:
{
	List<String> sandwichList=new ArrayList<String>();
	List<String> sandwichQty=new ArrayList<String>();
	String[] x=request.getParameterValues("sandwiches");
	String[] y=request.getParameterValues("sandqty");

	for(int j=0;j<=x.length-1;j++)
	{
		sandwichList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j].equals("0"))
		{
			if( j<=(sandwichList.size()-1))
			{
			 sandwichList.remove(j);
			}
		}
		
		else
		{
			sandwichQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(sandwichList);
		a.setQtyList(sandwichQty);
	}
	
	else
	{
		a.getItemlist().addAll(sandwichList);
		a.getQtyList().addAll(sandwichQty);
	}
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/sandwiches.jsp").include(request, response);
	break;    		
}

case 5:
{
	List<String> soupList=new ArrayList<String>();
	List<String> soupQty=new ArrayList<String>();
	String[] x=request.getParameterValues("souplist");
	String[] y=request.getParameterValues("soupqty");

	for(int j=0;j<=x.length-1;j++)
	{
		soupList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j].equals("0"))
		{
			if( j<=(soupList.size()-1))
			{
			 soupList.remove(j);
			}
		}
		
		else
		{
			soupQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(soupList);
		a.setQtyList(soupQty);
	}
	
	else
	{
		a.getItemlist().addAll(soupList);
		a.getQtyList().addAll(soupQty);
	}
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/soups.jsp").include(request, response);
	break;    		
}

case 6:
{
	List<String> indstartersList=new ArrayList<String>();
	List<String> indstartersQty=new ArrayList<String>();
	String[] x=request.getParameterValues("indstrlist");
	String[] y=request.getParameterValues("indstrqty");

	for(int j=0;j<=x.length-1;j++)
	{
		indstartersList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j].equals("0"))
		{
			if( j<=(indstartersList.size()-1))
			{
			 indstartersList.remove(j);
			}
		}
		
		else
		{
			indstartersQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(indstartersList);
		a.setQtyList(indstartersQty);
	}
	
	else
	{
		a.getItemlist().addAll(indstartersList);
		a.getQtyList().addAll(indstartersQty);
	}
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/indianstarters.jsp").include(request, response);
	break;    		
}

case 7:
{
	List<String> chinstartersList=new ArrayList<String>();
	List<String> chinstartersQty=new ArrayList<String>();
	String[] x=request.getParameterValues("chinstrlist");
	String[] y=request.getParameterValues("chinstrqty");

	for(int j=0;j<=x.length-1;j++)
	{
		chinstartersList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j].equals("0"))
		{
			if( j<=(chinstartersList.size()-1))
			{
			 chinstartersList.remove(j);
			}
		}
		
		else
		{
			chinstartersQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(chinstartersList);
		a.setQtyList(chinstartersQty);
	}
	
	else
	{
		a.getItemlist().addAll(chinstartersList);
		a.getQtyList().addAll(chinstartersQty);
	}
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/chinesestarters.jsp").include(request, response);
	break;    		
}

case 8:
{
	List<String> mainList=new ArrayList<String>();
	List<String> mainQty=new ArrayList<String>();
	String[] x=request.getParameterValues("mainList");
	String[] y=request.getParameterValues("mainqty");

	for(int j=0;j<=x.length-1;j++)
	{
		mainList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j].equals("0"))
		{
			if( j<=(mainList.size()-1))
			{
			 mainList.remove(j);
			}
		}
		
		else
		{
			mainQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(mainList);
		a.setQtyList(mainQty);
	}
	
	else
	{
		a.getItemlist().addAll(mainList);
		a.getQtyList().addAll(mainQty);
	}
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/maincourse.jsp").include(request, response);
	break;    		
}

case 9:
{
	List<String> rotiList=new ArrayList<String>();
	List<String> rotiQty=new ArrayList<String>();
	String[] x=request.getParameterValues("rotiList");
	String[] y=request.getParameterValues("rotiqty");

	for(int j=0;j<=x.length-1;j++)
	{
		rotiList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j].equals("0"))
		{
			if( j<=(rotiList.size()-1))
			{
			 rotiList.remove(j);
			}

		}
		
		else
		{
			rotiQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(rotiList);
		a.setQtyList(rotiQty);
	}
	
	else
	{
		a.getItemlist().addAll(rotiList);
		a.getQtyList().addAll(rotiQty);
	}
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/roti.jsp").include(request, response);
	break;    		
}


case 10:
{
	List<String> dessertList=new ArrayList<String>();
	List<String> dessertQty=new ArrayList<String>();
	String[] x=request.getParameterValues("dessertList");
	String[] y=request.getParameterValues("dessertqty");

	for(int j=0;j<=x.length-1;j++)
	{
		dessertList.add(x[j]);
	}
	
	for(int j=0;j<=y.length-1;j++)
	{
		if(y[j].equals("0"))
		{
			if( j<=(dessertList.size()-1))
			{
			 dessertList.remove(j);
			}
		}
		
		else
		{
			dessertQty.add(y[j]);
		}
		
	}
	if(a.getItemlist()==null)
	{
		a.setItemlist(dessertList);
		a.setQtyList(dessertQty);
	}
	
	else
	{
		a.getItemlist().addAll(dessertList);
		a.getQtyList().addAll(dessertQty);
	}
	out.print("<h4 style='font-family: Consolas'>Selected items have been added successfully</h4>");
	out.print("<h4 style='font-family: Consolas'>You can add new items to your order if u want to </h4>");
	request.getRequestDispatcher("/Categories/desserts.jsp").include(request, response);
	break;    		
}



default:
{
System.out.println("Error in coding");
break;
}

}


%>



</body>
</html>