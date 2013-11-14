package br.com.caelum.vraptor.primeui.datatable;

import java.util.List;

public class DataTableResult<T> {
	
	private List<T> items;
	private int totalSize;
	
	public DataTableResult(List<T> items, int totalSize) {
		super();
		this.items = items;
		this.totalSize = totalSize;
	}
	public List<T> getItems() {
		return items;
	}
	public void setItems(List<T> items) {
		this.items = items;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	
	

}
