package handlers;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;


public class QtyTag extends TagSupport

{
	private String name;
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	@Override
	public int doStartTag() throws JspException {
		JspWriter out=pageContext.getOut();
		try {
			out.print("<select name="+this.name+">");
			out.print("<option value = '0' >0</option>");
			out.print("<option value = '1' >1</option>");
			out.print("<option value = '2' >2</option>");
			out.print("<option value = '3' >3</option>");
			out.print("<option value = '4' >4</option>");
			out.print("<option value = '5' >5</option>");
			out.print("<option value = '6' >6</option>");
			out.print("<option value = '7' >7</option>");
			out.print("<option value = '8' >8</option>");
			out.print("<option value = '9' >9</option>");
			out.print("<option value = '10' >10</option>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}

}
