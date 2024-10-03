package com.itccloud.mwccdc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import java.util.*;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController
	{
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("message", "hello donggyu");
		User user = new User("John Doe");
		model.addAttribute("user",user);
		return "index-form";
	}
	
	@GetMapping("/advance")
	public String advance(Model model) 
	{
		List<User> users1 = new ArrayList<User>();
		users1.add(new User("John Doe Male MO"));
		users1.add(new User("Mary Queen Female Tx"));
		
		Map<String, User> users2 = new HashMap<String, User>();
		users2.put("Donggyu Song", new User("Donggyu Song"));
		users2.put("John Doe", new User("John Doe"));
		
		User[] users3 = new User[] {new User("Donggyu Song"), new User("John Doe")};
		
		model.addAttribute("users1", users1);
		model.addAttribute("users2", users2);	
		model.addAttribute("users3", users3);	
		
		return "advance-form";
	}
	
	@GetMapping("/home")
	public String home (Model model) {
		return "home-form";
	}
	
	@GetMapping("/business1")
	public String business1(Model model) {
		return "business1-form";
	}
	
	@GetMapping("/bootstrap-home")
	public String bootstrapHome(Model model) {
		return "bootstrap-home-form";
	}
	
	@GetMapping("/bootstrap-feature1")
	public String bootstrapFeature1(Model model) {
		return "bootstrap-feature1-form";
	}
}