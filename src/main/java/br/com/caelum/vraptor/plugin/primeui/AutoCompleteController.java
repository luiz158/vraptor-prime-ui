package br.com.caelum.vraptor.plugin.primeui;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

@Controller
public class AutoCompleteController {
	
	@Inject
	private Result result;
	
	@Path("/autocomplete")
	public void home(){
	}
	
	@Path("autoCompleteForm")
	public void autoCompleteForm(String query){
		
		System.out.println(query);
		
		List<String> response = new ArrayList<>();
		
		for (int i = 0; i < 10; i++) {
			response.add(query + i);
		}
		result.use(Results.json()).withoutRoot().from(response).serialize();
	}

}
