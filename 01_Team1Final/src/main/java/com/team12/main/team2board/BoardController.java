package com.team12.main.team2board;

import javax.servlet.http.HttpServletRequest;

<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
=======
>>>>>>> 083b2bd9d393a607e06b4f007a76fdc81b901777
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
<<<<<<< HEAD
    
	@Autowired
	private Team2BoardDAO bDAO;
	
	@RequestMapping(value = "team2.boardlist", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
=======

	@RequestMapping(value = "team2.boardlist", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		System.out.println(111);
		System.out.println(111);
		System.out.println(111);
>>>>>>> 083b2bd9d393a607e06b4f007a76fdc81b901777
		
	  req.setAttribute("contentPage", "2Team/board_jsp/board_list.jsp");
	  return "2Team/t2_index";
		
	}
	
}
