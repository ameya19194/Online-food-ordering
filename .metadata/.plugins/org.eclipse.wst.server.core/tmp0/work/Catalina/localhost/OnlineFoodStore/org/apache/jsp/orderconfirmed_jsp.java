/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.100
 * Generated at: 2020-03-26 11:18:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import dbutility.MyDBConnector;
import java.util.Date;

public final class orderconfirmed_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Order Confirmed</title>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("table, th, td {\r\n");
      out.write("    border: 0px solid black;\r\n");
      out.write("    font-family: Consolas;\r\n");
      out.write("    border-collapse: collapse;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("th, td {\r\n");
      out.write("    padding: 4px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("div,p,h\r\n");
      out.write("{\r\n");
      out.write("font-family: Consolas;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#topcorner\r\n");
      out.write("{\r\n");
      out.write("position:absolute;\r\n");
      out.write("   top:0;\r\n");
      out.write("   right:10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#topcornercat\r\n");
      out.write("{\r\n");
      out.write("position:absolute;\r\n");
      out.write("   top:0;\r\n");
      out.write("   right:60px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      bean.CustomerOrder a = null;
      synchronized (session) {
        a = (bean.CustomerOrder) _jspx_page_context.getAttribute("a", javax.servlet.jsp.PageContext.SESSION_SCOPE);
        if (a == null){
          a = new bean.CustomerOrder();
          _jspx_page_context.setAttribute("a", a, javax.servlet.jsp.PageContext.SESSION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div style=\"line-height: 10px;\" align=\"center\"><h1 style=\"font-family: Lucida Console\">Food Studio</h1>\r\n");
      out.write("<h4>Nahur(East), Opp Fortis Hospital, Mumbai-400042.</h4>\r\n");
      out.write("<h4>Tel no:- 9821955842, 9773544527</h4>\r\n");
      out.write("</div>\r\n");
      out.write("<div align=\"left\">-----------------------------------------------</div>\r\n");
      out.write("\r\n");
      out.write("<h5 style=\"font-family: Lucida Console;\" align=\"center\" >Thank you ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.User}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(" for ordering from us</h5>\r\n");
      out.write("\r\n");

ServletContext ctx=getServletConfig().getServletContext();
		
		if(ctx.getAttribute("newId")!=null)
		{//System.out.print("in 1 if");
			int newcount=(Integer)ctx.getAttribute("newId")+1;
			ctx.setAttribute("newId", newcount);
		}
		
		
		else if(ctx.getAttribute("newId")==null)
		{//System.out.print("in 2 if");
			int count=1;
			ctx.setAttribute("newId", count);	
		}

		
		
int newid=(Integer)ctx.getAttribute("newId");

pageContext.setAttribute("sessionid", String.valueOf(newid));
String address=request.getParameter("address");
pageContext.setAttribute("address", address);
String area=request.getParameter("area");
pageContext.setAttribute("area", area);
String direction=request.getParameter("direction");
pageContext.setAttribute("direction", direction);
Date d=new Date();
pageContext.setAttribute("d", d);
pageContext.setAttribute("bean", a);

      out.write("\r\n");
      out.write("<!-- DB Code -->\r\n");

PreparedStatement pstmt=null;
Connection con=MyDBConnector.getConnection();


for(int i=0; i<a.getItemlist().size();i++)
{
pstmt=con.prepareStatement("insert into orderdb(id,item,qty,address,area,direction)values(?,?,?,?,?,?);");	
pstmt.setInt(1,Integer.parseInt((String)pageContext.getAttribute("sessionid")));
pstmt.setString(2, a.getItemlist().get(i));
pstmt.setString(3, a.getQtyList().get(i));
pstmt.setString(4,(String)pageContext.getAttribute("address"));
pstmt.setString(5, (String)pageContext.getAttribute("area"));
pstmt.setString(6, (String)pageContext.getAttribute("direction"));
pstmt.executeUpdate();
}


System.out.println("New order placed. Order Id: "+Integer.parseInt((String)pageContext.getAttribute("sessionid")));

      out.write("\r\n");
      out.write("<!-- DB Code -->\r\n");
      out.write("<h5>Order Id: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.sessionid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</h5>\r\n");
      out.write("<h5>Date: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.d}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</h5>\r\n");
      out.write("<div align=\"left\">-----------------------------------------------</div>\r\n");
      out.write("\r\n");

out.print("<table>");
out.print("<col width='200'>");
out.print("<col width='120'>");
out.print("<col width='120'>");
out.print("<tr><th>Item Name</th><th>Qty(Nos)</th><th>Price(Rs.)</th></tr> ");
for(int j=0;j<=a.getItemlist().size()-1;j++)
{
   out.print("<tr><td>"+a.getItemlist().get(j)+"</td><td>"+a.getQtyList().get(j)+"</td><td>"+a.getPriceByItemName(a.getItemlist().get(j))+"</td></tr>");
}
out.print("</table>");


      out.write("\r\n");
      out.write("<div align=\"left\">-----------------------------------------------</div>\r\n");
      out.write("\r\n");
      out.write("<h4 style=\"font-family: Consolas\">Total Price: Rs. ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.bean.calculateTotalPrice()}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</h4>\r\n");
      out.write("<h4 style=\"font-family: Consolas\">Your food will be delivered at: <span style='font-family: Consolas; font-size: 13px'>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.address}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</span></h4>\r\n");
      out.write("<div align=\"left\">-----------------------------------------------</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<br><br>\r\n");
      out.write("<div align=\"center\">xxxx--Thank you--xxxx</div>\r\n");
      out.write("<a href=\"Logout\" id=\"topcorner\" style=\"font-family: Garamond\">Logout</a>\r\n");
      out.write("<a href=\"removeall.jsp\" id=\"topcornercat\" style=\"font-family: Garamond\">New Order</a>\r\n");
      out.write(" \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
