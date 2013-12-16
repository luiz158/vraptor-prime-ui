package br.com.caelum.vraptor.plugin.primeui.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.plugin.primeui.model.DataGenerator;
import br.com.caelum.vraptor.primeui.themes.ThemeSelector;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class WidgetsController {
	
	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	@Path("layout")
	public void layout(){}
	
	@Path("form")
	public void form(){
		result.include("products", new DataGenerator().generateProducts(5));
	}
	
	@Path("submit")
	public void submit(String inputText, String password, String textArea, List<String> picklist){
		
		System.out.println(picklist);
		
		if(inputText == null){
			validator.add(createMessage("input field cannot be null"));
		}
		
		if(password == null){
			validator.add(createMessage("password field cannot be null"));
		}
		
		if(inputText == null){
			validator.add(createMessage("textarea field cannot be null"));
		}
		
		validator.onErrorForwardTo(this).form();
		
		result.redirectTo(this).form();
	}

	private SimpleMessage createMessage(String message) {
		return new SimpleMessage("Error", message);
	}
}
