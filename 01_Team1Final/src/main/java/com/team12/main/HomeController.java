package com.team12.main;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		
<<<<<<< HEAD
	
=======
		
>>>>>>> d21fa4bac95b4a2ddc89abbe0db494211ca8b092
		return "home";
	}
	
	
	
}
