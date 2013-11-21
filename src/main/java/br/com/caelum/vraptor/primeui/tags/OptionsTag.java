package br.com.caelum.vraptor.primeui.tags;

import java.io.IOException;
import java.util.Iterator;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class OptionsTag extends SimpleTagSupport {
	
	private String var = "i";
	private Object itemLabel;
	private Object itemValue;
	private Iterable<?> items;
	
	@Override
	public void doTag() throws JspException, IOException {
		
		String htmlTempl = "<option value='%s'>%s</option>";
		ELContext elContext = getJspContext().getELContext();
		
		for (Object i : items) {
			getJspContext().setAttribute(var, i);
			
			ValueExpression value = getElExpression(itemValue);
			ValueExpression label = getElExpression(itemLabel);
			
			String html = String.format(htmlTempl, value.getValue(elContext), label.getValue(elContext));
			getJspContext().getOut().write(html);
			
		}
	}
	
	private ValueExpression getElExpression(Object obj) {
		if(obj instanceof ValueExpression){
			return (ValueExpression) obj;
		}else{
			String expr = String.format("#{%s.%s}",var,obj.toString());
			return ExpressionFactory.newInstance().createValueExpression(getJspContext().getELContext(), expr, Object.class);
		}
	}


	public String getVar() {
		return var;
	}
	public void setVar(String var) {
		this.var = var;
	}
	public Object getItemLabel() {
		return itemLabel;
	}
	public void setItemLabel(Object itemLabel) {
		this.itemLabel = itemLabel;
	}
	public Object getItemValue() {
		return itemValue;
	}
	public void setItemValue(Object itemValue) {
		this.itemValue = itemValue;
	}
	public Iterable<?> getItems() {
		return items;
	}
	public void setItems(Iterable<?> items) {
		this.items = items;
	}

}
