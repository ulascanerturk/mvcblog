package com.wissen.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login( ) {

		return "login";
		
	}

	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String admin(@RequestParam String userName, @RequestParam String password ) {
		
		
		if(userName=="admin" && password=="root") {
			return "redirect:/admin";
		}
		
		return "login";
		
	}
	
}
