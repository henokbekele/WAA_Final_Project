package edu.mum.coffee.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;

@Controller
public class PesronClient {

	@GetMapping({ "/products" })
	public String personsPage(Model model) {

		RestTemplate restTemplate = new RestTemplate();
		List<Product> products = restTemplate.getForObject("http://localhost:8888/product", ArrayList.class);
		model.addAttribute("products", products);
		return "products";
	}

}
