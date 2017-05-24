package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller
public class ProductController {


	@Autowired
	private ProductService productService;
	
	
	@GetMapping(value="/addproduct")
	public String getproduct(Model model)
	{
		model.addAttribute("allproducts", productService.getAllProduct());
		return "manageproduct";
	}

	
	@PostMapping(value="/addproduct")
	public String addproduct( Product product,  Model model)
	{

	   
		productService.save(product);
		model.addAttribute("allproducts", productService.getAllProduct());
		return "manageproduct";
		
		
	}
	
	/*
	@GetMapping(value="/updateperson/{id}")
	public String updateperson(@PathVariable("id") long id, Model model)
	{
		model.addAttribute("person", persontService.findById(id));
		return "updateperson";
	}


	@PostMapping(value="/updateperson")
	public String updatecustomer( Person person, Address address, Model model)
	{

		person.setAddress(address);
	    
		persontService.savePerson(person);

		return "addperson";
		
		
	}
	
	
*/

	
	
}
