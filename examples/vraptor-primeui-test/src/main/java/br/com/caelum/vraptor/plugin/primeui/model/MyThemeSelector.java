package br.com.caelum.vraptor.plugin.primeui.model;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.enterprise.inject.Specializes;

import br.com.caelum.vraptor.primeui.themes.DefaultThemeSelector;

@Specializes
@SessionScoped
public class MyThemeSelector extends DefaultThemeSelector implements Serializable{

	private static final long serialVersionUID = 1L;
	
}
