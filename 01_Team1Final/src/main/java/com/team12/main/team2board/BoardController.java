package com.team12.main.team2board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
    
	@Autowired
	private Team2BoardDAO bDAO;


	@RequestMapping(value = "team2.boardlist", method = RequestMethod.GET)
	public String boardList(HttpServletRequest req, Team2BoardDTO board) {
		
	  bDAO.countPost(req,board);
	  bDAO.showPostList(req,board);
	  req.setAttribute("contentPage", "board_jsp/board_list.jsp");
	  return "2Team/t2_index";
		
	}
	
}
