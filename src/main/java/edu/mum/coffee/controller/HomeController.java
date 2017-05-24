package edu.mum.coffee.controller;

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

@Controller
//@SessionAttributes(value={"orderlines", "userId", "product"})
public class HomeController {
	
	//@Autowired
	//private PesronClient persons;
	
	@GetMapping({"/", "/index", "/home"})
	public String homePage() {
		return "home";
	}

	@GetMapping({"/secure"})
	public String securePage() {
		return "secure";
	}
	
	@GetMapping({"/ppp"})
	public String securePagep() {
		return "selectPizza";
	}

	


	
	
//	@GetMapping({"/p"})
//	public String personsPage(Model model) {
//		
//		  RestTemplate restTemplate = new RestTemplate();
//		  System.out.println("ssssssssssssssssss");    
//		  
//		  
//		 List<Person> persons =  restTemplate.getForObject("http://localhost:8080/ss", ArrayList.class);
//System.out.println(persons +"yyyyyyyyyyyyyyyyyyyyyyyy");
//		model.addAttribute("persons", persons);
//		return "persons";
//	}
	
}


