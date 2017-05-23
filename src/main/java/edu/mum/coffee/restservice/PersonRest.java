package edu.mum.coffee.restservice;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.mum.coffee.domain.Person;
import edu.mum.coffee.service.PersonService;

@RestController

public class PersonRest {
	
	@Autowired
	private PersonService personService;
	
	@RequestMapping(value="/person/{id}", method = RequestMethod.GET, produces = "application/json")
	public Person getPersonById(@PathVariable long id)
	{
		System.out.println("the first person id: "+id);
		return personService.findById(id);
	}
	@RequestMapping(value="/persons", method = RequestMethod.GET)
	public List<Person> getAllPers()
	{
		System.out.println("the first person id: ");
		return personService.getAll();
	}


	
	@RequestMapping(value="/ss", method = RequestMethod.GET ) //produces = "application/json"
	public List<Person> getAllPerss()
	{
		System.out.println("the first person id: ");
		return personService.getAll();
	}

/*	public String getString()
	{
	
		System.out.println("the first person id: ");
		return "mydata";
	}
*/
	
	
	@RequestMapping(value="/person", method = RequestMethod.GET)
	public List<Person> getPersonByEmail(@PathParam(value = "email") String email)
	{
			return personService.findByEmail(email);
	}

	@RequestMapping(value="/person", method = RequestMethod.POST)
	public Person addPerson(@RequestBody Person person)
	{
			return personService.savePerson(person) ;
	}

	
	@RequestMapping(value="/person", method = RequestMethod.DELETE)
	public void deletePerson(@RequestBody Person person)
	{
		 personService.removePerson(person);
	}

}
