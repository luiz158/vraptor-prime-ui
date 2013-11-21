package br.com.caelum.vraptor.plugin.primeui.controller;

import java.lang.reflect.Array;
import java.util.Arrays;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.plugin.primeui.model.DataGenerator;
import br.com.caelum.vraptor.plugin.primeui.model.Product;

@Controller
public class WidgetsController {
	
	@Inject
	private Result result;
	
	@Path("layout")
	public void layout(){}
	
	@Path("form")
	public void form(){
		result.include("products", new DataGenerator().generateProducts(5));
	}
}
