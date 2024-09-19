package com.itccloud.mwccdc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	// processing request
	@GetMapping("/")
	public String index() {
		return "index-form";
	}
}