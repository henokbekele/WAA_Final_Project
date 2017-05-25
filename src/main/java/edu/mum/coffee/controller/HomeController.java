package edu.mum.coffee.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;

import edu.mum.coffee.domain.Orderline;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;

@Controller
public class HomeController {
	

	
	@GetMapping({"/", "/index", "/home"})
	public String homePage(Model model) {
		
		RestTemplate restTemplate = new RestTemplate();
		List<Product> products = restTemplate.getForObject("http://localhost:8888/product", ArrayList.class);
		model.addAttribute("products", products);
				
		return "home";
	}

	@GetMapping({"/secure"})
	public String securePage(Principal principal) {
		
		System.out.println("pppppp"+principal.getName() + principal);
		return "secure";
	}
	
	
	
}


