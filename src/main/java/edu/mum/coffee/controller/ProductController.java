package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
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
	
	
	@GetMapping(value="/updatproduct/{id}")
	public String showupdateproduct(@PathVariable("id") int id, Model model)
	{
		model.addAttribute("product", productService.getProduct(id));
		return "updateproduct";
	}


	@PostMapping(value="/updatproduct")
	public String updateproduct( Product product, Model model)
	{
		System.out.println("before delete");
	
		Product productold=productService.getProduct(product.getId());
		productService.delete(productold); 
		System.out.println("after delete");
		
		productService.save(product);
		System.out.println("after save");
		
		model.addAttribute("allproducts", productService.getAllProduct());
		
		return "manageproduct";
		
		
	}
	
	@PostMapping(value="/deleteproduct")
	public String deleteproduct( Product product, Model model)
	{
		System.out.println("before delete");
	
		Product productold=productService.getProduct(product.getId());
		productService.delete(productold); 
		System.out.println("after delete");
		
		//productService.save(product);
		//System.out.println("after save");
		
		model.addAttribute("allproducts", productService.getAllProduct());
		
		return "manageproduct";
		
		
	}
	
	


	
	
}
