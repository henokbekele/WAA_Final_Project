package edu.mum.coffee.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Orderline;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller
@SessionAttributes(value={"orderlines", "customer", "product"})

public class orderlineController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private PersonService persontService;
	
	
	@GetMapping(value="/addcustomer")
	public String getcustomer()
	{
		return "addcustomer";
	}

	@ModelAttribute
	
	public void addAttributes(Model model) {
	    model.addAttribute("products", productService.getAllProduct());

	   // model.addAttribute("products", productService.getAllProduct());
}
	
	
	@PostMapping(value="/addcustomer")
	public String addcustomer( Person person, Address address, ModelMap m, SessionStatus status)
	{

		person.setAddress(address);
		
		System.out.println(person.getEmail()+" emaillll");
		if (!m.containsAttribute("customer")) {
			System.out.println(person.getEmail()+" not there emaillll");

			m.addAttribute("customer", person);

			} 

		m.addAttribute("customer", person);
		
		System.out.println(person.getEmail()+" not there emaillll");
		//m.addAttribute(attributeName, attributeValue)
			//Person customer = (Person)m.get("customer");
			//customer=person;
			//orderlines.add(orderline);
		
		//persontService.savePerson(person);

		return "redirect:/orderline";
		
		
	}

	@RequestMapping(value="/orderline", method=RequestMethod.POST)
/*	public String add(@RequestParam("productoption") String  productoption, @RequestParam("quantity") int quantity, @RequestParam("product") int product, @RequestParam("order") int order, 
		@RequestParam("id") String id,   ModelMap m) {
*/
	public String add(@RequestParam("productoption") String  productoption, @RequestParam("quantity") int quantity,  
				   ModelMap m) {

		
	System.out.println(productoption+"iddddddddd");
		
		Orderline orderline = new Orderline();
		orderline.setQuantity(quantity);
		orderline.setProduct(productService.getProduct(Integer.parseInt(productoption)));
		//orderline.setOrder(orderService.findById(order));

		
	if (!m.containsAttribute("orderlines")) {

	m.addAttribute("orderlines", new ArrayList<Orderline>());

	} 

	List<Orderline> orderlines = (List<Orderline>)m.get("orderlines");
	orderlines.add(orderline);

	return "redirect:/orderline";
	}
	

	
	

	
	
	@RequestMapping(value="/orderline", method=RequestMethod.GET)
	public String getorder(Orderline orderline, ModelMap m) {
		{
			return "orderline";
			}
		}
	
	
	@PostMapping(value="/addorder")
	public String addorder( ModelMap m, SessionStatus status)
	{
		Order order= new Order();
		order.setOrderDate(new java.util.Date());
		order.setOrderLines((List<Orderline>) m.get("orderlines"));
		
		Person personOrder=persontService.savePerson((Person) m.get("customer"));
		order.setPerson(personOrder);
		orderService.save(order);
		status.setComplete();
		
		return "ordersaved";
		
		
	}
	
	
	@GetMapping(value="/listorder")
	public String listorder( Model model)
	{
		model.addAttribute("orders", orderService.findAll());
				
		return "listorders";
		
		
	}
	
	
	}


