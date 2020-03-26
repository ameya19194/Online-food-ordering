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

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	bevList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Tea"))
{
	indexList.add(0);
}	

if(list.equals("Coffee"))
{
	indexList.add(1);
}

if(list.equals("Milk"))
{
	indexList.add(2);
}

if(list.equals("Bournvita"))
{
	indexList.add(3);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	bevQty.add(y[index]);
}

for(int m=0; m<bevQty.size(); m++)
{
	if(Integer.parseInt(bevQty.get(m))>20)
	{
		bevQty.set(m, "20");
	}
}

//System.out.println(bevQty);

Iterator<String> itr1=bevQty.iterator();
Iterator<String> itr2=bevList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(bevList);
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

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/beveragesnew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/beveragesnew.jsp").include(request, response);
break;	
}
	
}

case 2:
{
	List<String> chList=new ArrayList<String>();
	List<String> chQty=new ArrayList<String>();
	String[] x=request.getParameterValues("chineseList");
	String[] y=request.getParameterValues("chineseQty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	chList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Shezwan Rice"))
{
	indexList.add(0);
}	

if(list.equals("Fried Rice"))
{
	indexList.add(1);
}

if(list.equals("Serpa Rice"))
{
	indexList.add(2);
}

if(list.equals("Shezwan Noodles"))
{
	indexList.add(3);
}

if(list.equals("Hukka Noodles"))
{
	indexList.add(4);
}

if(list.equals("Serpa Noodles"))
{
	indexList.add(5);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	chQty.add(y[index]);
}

//System.out.println(chQty);

Iterator<String> itr1=chQty.iterator();
Iterator<String> itr2=chList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(chList);
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

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/chinesenew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/chinesenew.jsp").include(request, response);
break;	
}		
}

case 3:
{
	List<String> snackList=new ArrayList<String>();
	List<String> snackQty=new ArrayList<String>();
	String[] x=request.getParameterValues("snacks");
	String[] y=request.getParameterValues("snacksqty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	snackList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Idli"))
{
	indexList.add(0);
}	

if(list.equals("Medu Vada"))
{
	indexList.add(1);
}

if(list.equals("Dahi Vada"))
{
	indexList.add(2);
}

if(list.equals("Upma"))
{
	indexList.add(3);
}

if(list.equals("Sheera"))
{
	indexList.add(4);
}

if(list.equals("Poha"))
{
	indexList.add(5);
}

if(list.equals("Batata Vada"))
{
	indexList.add(6);
}

if(list.equals("Veg Cutlet Vada"))
{
	indexList.add(7);
}

if(list.equals("Puri Bhaji"))
{
	indexList.add(8);
}

if(list.equals("Misal Pav"))
{
	indexList.add(9);
}

if(list.equals("Chole Bhature"))
{
	indexList.add(10);
}

if(list.equals("Pav Bhaji"))
{
	indexList.add(11);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	snackQty.add(y[index]);
}

//System.out.println(snackQty);

Iterator<String> itr1=snackQty.iterator();
Iterator<String> itr2=snackList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(snackList);
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

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/snacksnew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/snacksnew.jsp").include(request, response);
break;	
}
	
}

case 4:
{
	List<String> sandList=new ArrayList<String>();
	List<String> sandQty=new ArrayList<String>();
	String[] x=request.getParameterValues("sandwiches");
	String[] y=request.getParameterValues("sandqty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	sandList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Veg Sandwich"))
{
	indexList.add(1);
}	

if(list.equals("Veg Cheese Sandwich"))
{
	indexList.add(2);
}

if(list.equals("Veg Toast"))
{
	indexList.add(3);
}

if(list.equals("Veg Cheese Toast"))
{
	indexList.add(4);
}

if(list.equals("Veg Burger"))
{
	indexList.add(5);
}

if(list.equals("Veg Cheese Burger"))
{
	indexList.add(6);
}

if(list.equals("Bread Butter"))
{
	indexList.add(0);
}



}
//System.out.print(indexList);
for(int index:indexList)
{
	sandQty.add(y[index]);
}

//System.out.println(sandQty);

Iterator<String> itr1=sandQty.iterator();
Iterator<String> itr2=sandList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(sandList);
if(a.getItemlist()==null)
{
	a.setItemlist(sandList);
	a.setQtyList(sandQty);
}

else
{
	a.getItemlist().addAll(sandList);
	a.getQtyList().addAll(sandQty);
}

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/sandwichesnew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/sandwichesnew.jsp").include(request, response);
break;	
}
	
}

case 5:
{
	List<String> soupList=new ArrayList<String>();
	List<String> soupQty=new ArrayList<String>();
	String[] x=request.getParameterValues("souplist");
	String[] y=request.getParameterValues("soupqty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	soupList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Tomato Soup"))
{
	indexList.add(0);
}	

if(list.equals("Manchow Soup"))
{
	indexList.add(1);
}

if(list.equals("Sweet Corn Soup"))
{
	indexList.add(2);
}

if(list.equals("Palak Soup"))
{
	indexList.add(3);
}

if(list.equals("Babycorn Soup"))
{
	indexList.add(4);
}

if(list.equals("Hot and Sour Soup"))
{
	indexList.add(5);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	soupQty.add(y[index]);
}

//System.out.println(soupQty);

Iterator<String> itr1=soupQty.iterator();
Iterator<String> itr2=soupList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(soupList);
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

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/soupsnew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/soupsnew.jsp").include(request, response);
break;	
}
	
}

case 6:
{
	List<String> indstrList=new ArrayList<String>();
	List<String> indstrQty=new ArrayList<String>();
	String[] x=request.getParameterValues("indstrlist");
	String[] y=request.getParameterValues("indstrqty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	indstrList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Veg Seekh Kabab"))
{
	indexList.add(0);
}	

if(list.equals("Mushroom Tikka"))
{
	indexList.add(1);
}

if(list.equals("Babycorn Tikka"))
{
	indexList.add(2);
}

if(list.equals("Gobi Tandoori"))
{
	indexList.add(3);
}

if(list.equals("Paneer Tikka Dry"))
{
	indexList.add(4);
}

if(list.equals("Paneer Lasooni Tikka"))
{
	indexList.add(5);
}

if(list.equals("Paneer Achari Tikka"))
{
	indexList.add(6);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	indstrQty.add(y[index]);
}

//System.out.println(indstrQty);

Iterator<String> itr1=indstrQty.iterator();
Iterator<String> itr2=indstrList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(indstrList);
if(a.getItemlist()==null)
{
	a.setItemlist(indstrList);
	a.setQtyList(indstrQty);
}

else
{
	a.getItemlist().addAll(indstrList);
	a.getQtyList().addAll(indstrQty);
}

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/indianstartersnew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/indianstartersnew.jsp").include(request, response);
break;	
}
	
}

case 7:
{
	List<String> chstrList=new ArrayList<String>();
	List<String> chstrQty=new ArrayList<String>();
	String[] x=request.getParameterValues("chinstrlist");
	String[] y=request.getParameterValues("chinstrqty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	chstrList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Paneer Hukka"))
{
	indexList.add(0);
}	

if(list.equals("Veg Lollipop"))
{
	indexList.add(1);
}

if(list.equals("Chinese Bhel"))
{
	indexList.add(2);
}

if(list.equals("Veg Crispy"))
{
	indexList.add(3);
}

if(list.equals("Potato Crispy"))
{
	indexList.add(4);
}

if(list.equals("Veg Spring Roll"))
{
	indexList.add(5);
}

if(list.equals("Mushroom Spring Roll"))
{
	indexList.add(6);
}

if(list.equals("Gobi Manchurian"))
{
	indexList.add(7);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	chstrQty.add(y[index]);
}

//System.out.println(chstrQty);

Iterator<String> itr1=chstrQty.iterator();
Iterator<String> itr2=chstrList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(chstrList);
if(a.getItemlist()==null)
{
	a.setItemlist(chstrList);
	a.setQtyList(chstrQty);
}

else
{
	a.getItemlist().addAll(chstrList);
	a.getQtyList().addAll(chstrQty);
}

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/chinesestartersnew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/chinesestartersnew.jsp").include(request, response);
break;	
}
	
}

case 8:
{
	List<String> maincourseList=new ArrayList<String>();
	List<String> maincourseQty=new ArrayList<String>();
	String[] x=request.getParameterValues("mainList");
	String[] y=request.getParameterValues("mainqty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	maincourseList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Veg Kolhapuri"))
{
	indexList.add(0);
}	

if(list.equals("Veg Makhanwala"))
{
	indexList.add(1);
}

if(list.equals("Bhuna Masala"))
{
	indexList.add(2);
}

if(list.equals("Chana Masala"))
{
	indexList.add(3);
}

if(list.equals("Paneer Makhanwala"))
{
	indexList.add(4);
}

if(list.equals("Paneer Tikka Masala"))
{
	indexList.add(5);
}

if(list.equals("Palak Paneer"))
{
	indexList.add(6);
}

if(list.equals("Dal Fry"))
{
	indexList.add(7);
}

if(list.equals("Steam Rice"))
{
	indexList.add(8);
}

if(list.equals("Jeera Rice"))
{
	indexList.add(9);
}

if(list.equals("Veg Biryani"))
{
	indexList.add(10);
}

if(list.equals("Pulav"))
{
	indexList.add(11);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	maincourseQty.add(y[index]);
}

//System.out.println(chstrQty);

Iterator<String> itr1=maincourseQty.iterator();
Iterator<String> itr2=maincourseList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(chstrList);
if(a.getItemlist()==null)
{
	a.setItemlist(maincourseList);
	a.setQtyList(maincourseQty);
}

else
{
	a.getItemlist().addAll(maincourseList);
	a.getQtyList().addAll(maincourseQty);
}

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/maincoursenew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/maincoursenew.jsp").include(request, response);
break;	
}
	
}


case 9:
{
	List<String> rotiList=new ArrayList<String>();
	List<String> rotiQty=new ArrayList<String>();
	String[] x=request.getParameterValues("rotiList");
	String[] y=request.getParameterValues("rotiqty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	rotiList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Roti"))
{
	indexList.add(0);
}	

if(list.equals("Chapati"))
{
	indexList.add(1);
}

if(list.equals("Naan"))
{
	indexList.add(2);
}

if(list.equals("Bread"))
{
	indexList.add(3);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	rotiQty.add(y[index]);
}

//System.out.println(rotiQty);

Iterator<String> itr1=rotiQty.iterator();
Iterator<String> itr2=rotiList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(rotiList);
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

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/rotinew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/rotinew.jsp").include(request, response);
break;	
}
	
}


case 10:
{
	List<String> desList=new ArrayList<String>();
	List<String> desQty=new ArrayList<String>();
	String[] x=request.getParameterValues("dessertList");
	String[] y=request.getParameterValues("dessertqty");

	List<Integer> indexList=new ArrayList<Integer>();
if(x!=null){
	
	for(int j=0;j<=x.length-1;j++)
{
	desList.add(x[j]);
}

for(String list:x)
{
if(list.equals("Pepsi"))
{
	indexList.add(0);
}	

if(list.equals("Maaza"))
{
	indexList.add(1);
}

if(list.equals("Lassi"))
{
	indexList.add(2);
}

if(list.equals("Mango Juice"))
{
	indexList.add(3);
}

if(list.equals("Strawberry Juice"))
{
	indexList.add(4);
}

if(list.equals("Vanilla Scoop"))
{
	indexList.add(5);
}

if(list.equals("Strawberry Scoop"))
{
	indexList.add(6);
}

}
//System.out.print(indexList);
for(int index:indexList)
{
	desQty.add(y[index]);
}

//System.out.println(desQty);

Iterator<String> itr1=desQty.iterator();
Iterator<String> itr2=desList.iterator();

while (itr1.hasNext()) {
	itr2.next();
	if(itr1.next().equals("0"))
	{
		itr1.remove();
		itr2.remove();
	}
	
}
//System.out.println(desList);
if(a.getItemlist()==null)
{
	a.setItemlist(desList);
	a.setQtyList(desQty);
}

else
{
	a.getItemlist().addAll(desList);
	a.getQtyList().addAll(desQty);
}

out.print("<h4 style='font-family: Times;color:maroon'>Selected items have been added successfully.");
out.print("Add new items to your order or check your order and confirm it.</h4>");
request.getRequestDispatcher("/dessertsnew.jsp").include(request, response);
break;    		

}

if(x==null)
{
request.getRequestDispatcher("/dessertsnew.jsp").include(request, response);
break;	
}
	
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