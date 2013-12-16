
package br.com.caelum.vraptor.primeui.themes;

import javax.inject.Named;

public interface ThemeSelector {
	
	void setTheme(String name);
	
	String getTheme();

	String getThemeUrl();

}
