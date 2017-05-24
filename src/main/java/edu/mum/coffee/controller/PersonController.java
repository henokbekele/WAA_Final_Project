package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.service.PersonService;

@Controller
public class PersonController {

	
	@Autowired
	private PersonService persontService;
	
	
	@GetMapping(value="/addperson")
	public String getperson(Model model)
	{
		model.addAttribute("persons", persontService.getAll());
		return "addperson";
	}

	
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
	
	
	@PostMapping(value="/addperson")
	public String addcustomer( Person person, Address address, Model model)
	{

		person.setAddress(address);
	    
		persontService.savePerson(person);
		model.addAttribute("persons", persontService.getAll());
		return "addperson";
		
		
	}

	
}
