package br.com.caelum.vraptor.plugin.primeui.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class DataGenerator {
	
	private static final Random random = new Random();
	private static String[] names = {"pen", "paper", "box", "post-it"};
	private static String[] colors = {"blue","black","yellow", "white"};
	
	public List<Product> generateProducts(int size){
		List<Product> products = new ArrayList<>();
		
		for(int i=0; i< size; i++){
			products.add(new Product(getRandomName(), getRandomPrice(), getRandomSize()));
		}
		return products;
	}

	private int getRandomSize() {
		return random.nextInt(30);
	}

	private double getRandomPrice() {
		return random.nextDouble() * 100;
	}

	private String getRandomName() {
		
		String pName=  names[random.nextInt(names.length)];
		String pColor=  colors[random.nextInt(colors.length)];
		
		return pName + " " + pColor;
	}

}
