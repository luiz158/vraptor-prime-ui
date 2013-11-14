package br.com.caelum.vraptor.primeui.datatable;

public class DataTableRequest {
	
	private int first;
	private int rows;
	private String sort; 
	private int order;
	
	
	public boolean isSorted() {
		return sort != null;
	}
	
	public int getLast(){
		return first + rows;
	}

	public int getFirst() {
		return first;
	}
	public void setFirst(int first) {
		this.first = first;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
}
