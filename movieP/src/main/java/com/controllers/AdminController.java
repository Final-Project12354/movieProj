package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {

	
	@ModelAttribute("bodyurl")
	String bodypageUrl() {
		return "movietime/main";
	}
	
	@RequestMapping
	String mainpage() {
		return "admin/index";
	}
	
}
