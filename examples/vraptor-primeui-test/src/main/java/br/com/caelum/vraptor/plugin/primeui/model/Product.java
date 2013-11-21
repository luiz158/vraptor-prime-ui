package br.com.caelum.vraptor.plugin.primeui.model;

public class Product {
	private Integer id;
	private String name;
	private double price;
	private int stockSize;
	
	public Product(Integer id, String name, double price, int stockSize) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.stockSize = stockSize;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStockSize() {
		return stockSize;
	}
	public void setStockSize(int stockSize) {
		this.stockSize = stockSize;
	}
	
}
