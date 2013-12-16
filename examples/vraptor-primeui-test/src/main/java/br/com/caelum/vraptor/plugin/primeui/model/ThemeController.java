package br.com.caelum.vraptor.plugin.primeui.model;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.primeui.themes.ThemeSelector;

@Controller
public class ThemeController {
	
	@Inject
	private ThemeSelector themeSelector;
	
	@Path("/changeTheme/{theme}")
	public void changeTheme(String theme){
		this.themeSelector.setTheme(theme);
	}

}
