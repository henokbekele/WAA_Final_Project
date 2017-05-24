package edu.mum.coffee.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
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

	@RequestMapping(value="/orderline", method=RequestMethod.POST)
	public String add(@RequestParam("quantity") int quantity, @RequestParam("product") int product, @RequestParam("order") int order, 
			@RequestParam("id") String id,   ModelMap m) {
		Orderline orderline = new Orderline();
		orderline.setQuantity(quantity);
		orderline.setProduct(productService.getProduct(product));
		orderline.setOrder(orderService.findById(order));

		
	if (!m.containsAttribute("orderlines")) {
	System.out.println("No orderline Yet");
	m.addAttribute("orderlines", new ArrayList<Orderline>());
	//m.addAttribute("currentId", 0);
	} else {
	System.out.println("orderline Exists, currentId:");//+m.get("currentId"));
	}
	List<Orderline> orderlines = (List<Orderline>)m.get("orderlines");
	orderlines.add(orderline);
	//Integer currentId = (Integer) m.get("currentId");
	//m.put("currentId", currentId + 1);
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
		
	/*	Person p = new Person();
		p.setFirstName("first order");
		p=persontService.savePerson(p);
		
		order.setPerson(p);
	*/	
		order.setPerson(persontService.findById((long) 1));
		orderService.save(order);
		status.setComplete();
		
		return "ordersaved";
		
		
	}
	
	@GetMapping(value="/addcustomer")
	public String getcustomer( Person pp, ModelMap m, SessionStatus status)
	{
		return "addcustomer";
	}
	@PostMapping(value="/addcustomer")
	public String addcustomer( Person pp, Address ad, ModelMap m, SessionStatus status)
	{
		/*Order order= new Order();
		order.setOrderDate(new java.util.Date());
		order.setOrderLines((List<Orderline>) m.get("orderlines"));
	*/
		pp.setAddress(ad);
		System.out.println(pp.getEmail()+"email");
		System.out.println(pp.getFirstName()+"name");
		System.out.println(pp.getAddress().getCity()+"city");
		persontService.savePerson(pp);
	/*	Person p = new Person();
		p.setFirstName("first order");
		p=persontService.savePerson(p);
		
		order.setPerson(p);
		
		order.setPerson(persontService.findById((long) 1));
		orderService.save(order);
		status.setComplete();
	*/	
		return "redirect:/orderline";
		
		
	}
	
	
	}


