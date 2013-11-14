package br.com.caelum.vraptor.plugin.primeui.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.plugin.primeui.datatable.DataTableRequest;
import br.com.caelum.vraptor.plugin.primeui.datatable.DataTableResult;
import br.com.caelum.vraptor.plugin.primeui.model.DataComparator;
import br.com.caelum.vraptor.plugin.primeui.model.DataGenerator;
import br.com.caelum.vraptor.plugin.primeui.model.Product;
import br.com.caelum.vraptor.view.Results;

@Controller
public class DataTableController {

	private static List<Product> products = new DataGenerator().generateProducts(30);

	@Inject
	private Result result;
	
	@Path("/dataTable")
	public void home(){}

	@Path("/lazyData/{request.first}/{request.rows}")
	public void lazyData(DataTableRequest request){
		
		System.out.println(request.getFirst());
		System.out.println(request.getRows());
		System.out.println(request.getSort());
		System.out.println(request.getOrder());
		
		List<Product> temp = new ArrayList<Product>(products);
		
		if(request.isSorted()){
			Collections.sort(temp,new DataComparator<Product>(request.getSort(), request.getOrder()));
		}

		List<Product> subList = temp.subList(request.getFirst(), request.getLast());
		int total = products.size();
		
		DataTableResult<Product> dataTableResult = new DataTableResult<>(subList, total);
		
		result.use(Results.json()).withoutRoot().from(dataTableResult).include("items").serialize();
	}
	
}
