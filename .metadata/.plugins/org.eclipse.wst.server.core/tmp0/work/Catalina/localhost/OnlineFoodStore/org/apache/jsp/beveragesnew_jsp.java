/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.100
 * Generated at: 2020-03-26 13:19:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class beveragesnew_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/WEB-INF/mytags.tld", Long.valueOf(1536908386000L));
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody;

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
    _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.release();
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
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Beverages</title>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("input {\r\n");
      out.write("\tfont-family: Times;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a {\r\n");
      out.write("\tfont-family: Times;\r\n");
      out.write("}\r\n");
      out.write("td {\r\n");
      out.write("\tfont-family: Book Antiqua;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<form action=\"/OnlineFoodStore/orderlistusingindexlist.jsp\" method=\"post\">\r\n");
      out.write("\r\n");
      out.write("<table>\r\n");
      out.write("<tr>\r\n");
      out.write("<td><input type=\"checkbox\" value=\"Tea\" name=\"beverageslist\"></td>\r\n");
      out.write("<td>Tea</td>\r\n");
      out.write("<td>");
      if (_jspx_meth_m_005fqtynos_005f0(_jspx_page_context))
        return;
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td><input type=\"checkbox\" value=\"Coffee\" name=\"beverageslist\"></td>\r\n");
      out.write("<td>Coffee</td>\r\n");
      out.write("<td>");
      if (_jspx_meth_m_005fqtynos_005f1(_jspx_page_context))
        return;
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td><input type=\"checkbox\" value=\"Milk\" name=\"beverageslist\"></td>\r\n");
      out.write("<td>Milk</td>\r\n");
      out.write("<td>");
      if (_jspx_meth_m_005fqtynos_005f2(_jspx_page_context))
        return;
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td><input type=\"checkbox\" value=\"Bournvita\" name=\"beverageslist\"></td>\r\n");
      out.write("<td>Bournvita</td>\r\n");
      out.write("<td>");
      if (_jspx_meth_m_005fqtynos_005f3(_jspx_page_context))
        return;
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<br>\r\n");
      out.write("<input type=\"hidden\" name=\"listype\" value=\"1\">\r\n");
      out.write("<input type=\"submit\" value=\"Add to my order\" style=\"font-size: 15px\">\r\n");
      out.write("</form>\r\n");
      out.write("<br>\r\n");
      out.write("<a href=\"/OnlineFoodStore/category.jsp\">Back to Categories</a>&nbsp;&nbsp;\r\n");
      out.write("<a href=\"/OnlineFoodStore/details.jsp\">Check my order</a>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_m_005fqtynos_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  m:qtynos
    handlers.QtyTag _jspx_th_m_005fqtynos_005f0 = (handlers.QtyTag) _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.get(handlers.QtyTag.class);
    boolean _jspx_th_m_005fqtynos_005f0_reused = false;
    try {
      _jspx_th_m_005fqtynos_005f0.setPageContext(_jspx_page_context);
      _jspx_th_m_005fqtynos_005f0.setParent(null);
      // /beveragesnew.jsp(33,4) name = name type = java.lang.String reqTime = false required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_m_005fqtynos_005f0.setName("bevqty");
      int _jspx_eval_m_005fqtynos_005f0 = _jspx_th_m_005fqtynos_005f0.doStartTag();
      if (_jspx_th_m_005fqtynos_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.reuse(_jspx_th_m_005fqtynos_005f0);
      _jspx_th_m_005fqtynos_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_m_005fqtynos_005f0, _jsp_getInstanceManager(), _jspx_th_m_005fqtynos_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_m_005fqtynos_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  m:qtynos
    handlers.QtyTag _jspx_th_m_005fqtynos_005f1 = (handlers.QtyTag) _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.get(handlers.QtyTag.class);
    boolean _jspx_th_m_005fqtynos_005f1_reused = false;
    try {
      _jspx_th_m_005fqtynos_005f1.setPageContext(_jspx_page_context);
      _jspx_th_m_005fqtynos_005f1.setParent(null);
      // /beveragesnew.jsp(39,4) name = name type = java.lang.String reqTime = false required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_m_005fqtynos_005f1.setName("bevqty");
      int _jspx_eval_m_005fqtynos_005f1 = _jspx_th_m_005fqtynos_005f1.doStartTag();
      if (_jspx_th_m_005fqtynos_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.reuse(_jspx_th_m_005fqtynos_005f1);
      _jspx_th_m_005fqtynos_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_m_005fqtynos_005f1, _jsp_getInstanceManager(), _jspx_th_m_005fqtynos_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_m_005fqtynos_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  m:qtynos
    handlers.QtyTag _jspx_th_m_005fqtynos_005f2 = (handlers.QtyTag) _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.get(handlers.QtyTag.class);
    boolean _jspx_th_m_005fqtynos_005f2_reused = false;
    try {
      _jspx_th_m_005fqtynos_005f2.setPageContext(_jspx_page_context);
      _jspx_th_m_005fqtynos_005f2.setParent(null);
      // /beveragesnew.jsp(45,4) name = name type = java.lang.String reqTime = false required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_m_005fqtynos_005f2.setName("bevqty");
      int _jspx_eval_m_005fqtynos_005f2 = _jspx_th_m_005fqtynos_005f2.doStartTag();
      if (_jspx_th_m_005fqtynos_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.reuse(_jspx_th_m_005fqtynos_005f2);
      _jspx_th_m_005fqtynos_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_m_005fqtynos_005f2, _jsp_getInstanceManager(), _jspx_th_m_005fqtynos_005f2_reused);
    }
    return false;
  }

  private boolean _jspx_meth_m_005fqtynos_005f3(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  m:qtynos
    handlers.QtyTag _jspx_th_m_005fqtynos_005f3 = (handlers.QtyTag) _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.get(handlers.QtyTag.class);
    boolean _jspx_th_m_005fqtynos_005f3_reused = false;
    try {
      _jspx_th_m_005fqtynos_005f3.setPageContext(_jspx_page_context);
      _jspx_th_m_005fqtynos_005f3.setParent(null);
      // /beveragesnew.jsp(51,4) name = name type = java.lang.String reqTime = false required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_m_005fqtynos_005f3.setName("bevqty");
      int _jspx_eval_m_005fqtynos_005f3 = _jspx_th_m_005fqtynos_005f3.doStartTag();
      if (_jspx_th_m_005fqtynos_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fm_005fqtynos_0026_005fname_005fnobody.reuse(_jspx_th_m_005fqtynos_005f3);
      _jspx_th_m_005fqtynos_005f3_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_m_005fqtynos_005f3, _jsp_getInstanceManager(), _jspx_th_m_005fqtynos_005f3_reused);
    }
    return false;
  }
}
