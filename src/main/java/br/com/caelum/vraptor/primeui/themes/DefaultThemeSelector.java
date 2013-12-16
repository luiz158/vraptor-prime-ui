package br.com.caelum.vraptor.primeui.themes;

import javax.annotation.PostConstruct;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.servlet.ServletContext;

import br.com.caelum.vraptor.environment.Environment;

@Named("themeSelector")
@ApplicationScoped
public class DefaultThemeSelector implements ThemeSelector{
	
	@Inject
	private ServletContext context;
	
	@Inject
	private Environment env;
	
	private String theme;
	
	@PostConstruct
	public void init(){
		System.out.println("oioioi");
		theme = env.get("primeui-theme", "aristo");
	}

	@Override
	public void setTheme(String name) {
		this.theme = name;
	}

	@Override
	public String getTheme() {
		return theme;
	}

	@Override
	public String getThemeUrl() {
		return String.format("%s/themes/%s/theme.css", context.getContextPath(), theme);
	}

}
