package br.com.caelum.vraptor.primeui.utils;

import java.io.IOException;
import java.io.StringWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class JSStoreTag  extends SimpleTagSupport{
	
	private static final String VRAPTOR_PRIME_UI_JS = "VRAPTOR_PRIME_UI_JS";
	private static final Pattern scriptFinder = Pattern.compile("<script[^>]*>(.*?)</script>", Pattern.DOTALL | Pattern.CASE_INSENSITIVE);
	
	@Override
	public void doTag() throws JspException, IOException {
		StringWriter writer = new StringWriter();
		getJspBody().invoke(writer);
		appendToJS(writer);
	}
	
	private void appendToJS(StringWriter writer) {
		String code = getContentWithoutScriptTag(writer);

		StringBuilder content = getJSContent();
		content.insert(content.length() - 3,"\n");
		content.insert(content.length() - 3, code);

	}
	
	private String getContentWithoutScriptTag(StringWriter writer) {
		String body = writer.toString();
		Matcher matcher = scriptFinder.matcher(body);
		if(matcher.find()) {
			return matcher.group(1);
		}
		throw new IllegalArgumentException("Javascript must be between <script> tags : " + body);
	}

	private StringBuilder getJSContent() {
		ServletRequest request = ((PageContext) getJspContext()).getRequest();
		StringBuilder content = (StringBuilder) request.getAttribute(VRAPTOR_PRIME_UI_JS);
		
		if(content == null){
			content = new StringBuilder();
			content.append("$(function(){});");
			request.setAttribute(VRAPTOR_PRIME_UI_JS, content);
		}
		
		return content;
	}
	
}
