package com.team12.main.t1;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class Team1HomeController {
<<<<<<< HEAD
	

	
=======
>>>>>>> b3218038037c176040fe484bf174288d15d3cb7e

	@RequestMapping(value = "/team1Main", method = RequestMethod.GET)
	public String mainCall(HttpServletRequest req) {

		req.setAttribute("contentPage", "t1_home.jsp");
		return "1Team/t1_index";
	}


}