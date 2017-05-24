package edu.mum.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.mum.coffee.domain.Orderline;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.ProductService;

@Controller
@SessionAttributes(value={"orderlines", "userId", "product"})

public class orderlineController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ProductService productService;
	
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
	
	}


