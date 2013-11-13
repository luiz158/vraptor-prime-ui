package br.com.caelum.vraptor.plugin.primeui.model;

import java.lang.reflect.Field;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;

import net.vidageek.mirror.dsl.Mirror;

public class DataComparator<T> implements Comparator<T> {
	
	private String fieldName;
	private int order;
	
	public DataComparator(String field, int sortOrder) {
		this.fieldName = field;
		this.order = sortOrder;
	}
	
	@Override
	public int compare(T first, T second) {
		Object firstValue = new Mirror().on(first).get().field(fieldName);
		Object secondValue = new Mirror().on(second).get().field(fieldName);
		
		if(firstValue instanceof Comparable){
			@SuppressWarnings("unchecked")
			Comparable<Object> c1 = (Comparable<Object>) firstValue;
			return c1.compareTo(secondValue) * order;
		}else{
			//to lazy to implement, it's just a test 
			return 0;
		}
		
	}

}
