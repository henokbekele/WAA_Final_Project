package edu.mum.coffee.restservice;

import java.util.Date;
import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import edu.mum.coffee.domain.Product;
import edu.mum.coffee.domain.ProductType;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@RestController
@RequestMapping(value="/product")
public class ProductRest {

	


	
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping(method = RequestMethod.POST)
	public Product saveProduct(@RequestBody Product order)
	{
			return productService.save(order) ;
	}

	@RequestMapping(method = RequestMethod.DELETE)
	public void deleteProduct(@RequestBody Product product)
	{
		productService.delete(product) ;
	}

	
	@RequestMapping(value="/{id}", method = RequestMethod.GET)
	public Product findById(@PathVariable int id)
	{
		return productService.getProduct(id);
	}

	@RequestMapping( method = RequestMethod.GET)
	public List<Product> findAll()
	{
			return productService.getAllProduct();
	}

	
	
	@RequestMapping(value="/criteria", method = RequestMethod.GET)
	public List<Product> findByTextSearc(@PathParam(value = "criteria") String criteria )
	{
			return productService.findByTextSearch(criteria);
	}


	@RequestMapping(value="/price", method = RequestMethod.GET)
	public List<Product> findByPrice(@PathParam(value="minPrice") double minPrice,@PathParam(value="maxPrice") double maxPrice)
	{
			return productService.findByPrice(minPrice, maxPrice);
	}


	
	@RequestMapping(value="/type", method = RequestMethod.GET)
	public List<Product> findByProductType(@PathParam(value = "productType") ProductType productType)
	{
			return productService.findByProductType(productType) ;
	}

	
	

	
	
}
