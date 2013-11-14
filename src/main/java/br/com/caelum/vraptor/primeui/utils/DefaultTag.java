package br.com.caelum.vraptor.primeui.utils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class DefaultTag extends BodyTagSupport {

	private String varName;
	private Object defaultValue = "";

	public void setVarName(String var) {
		this.varName = var;
	}

	public void setDefaultValue(Object value) {
		if(value != null){
			this.defaultValue = value;
		}
	}

	public int doEndTag() throws JspException {
		Object originalValue = pageContext.getAttribute(varName);

		if (originalValue == null || 
		   (originalValue != null && originalValue.toString().trim().isEmpty())) {
			pageContext.setAttribute(varName, defaultValue);
		}

		return EVAL_PAGE;
	}

}
