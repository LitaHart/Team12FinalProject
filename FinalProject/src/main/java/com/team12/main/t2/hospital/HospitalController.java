package com.team12.main.t2.hospital;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HospitalController {
<<<<<<< HEAD
=======

	@Autowired
	private LoginDAO lDAO;
	private HospitalDAO HDAO;
>>>>>>> 109c5931d7e93a8554889a9602c9ed4d21083d23
	
	@Autowired
	private HospitalDAO HDAO;
	
	@RequestMapping(value = "/hospitalGo", method = RequestMethod.GET)
	public String hospitalGo(HttpServletRequest req) {

		//lDAO.loginCheck(req);
<<<<<<< HEAD
		
=======
		//HDAO.hospitalView(req);
>>>>>>> 109c5931d7e93a8554889a9602c9ed4d21083d23
		req.setAttribute("contentPage", "sy/hospitalMain.jsp");
		
		return "2Team/t2_index";
	}
	@RequestMapping(value = "/hospitalDetailGo", method = RequestMethod.GET)
<<<<<<< HEAD
	public String hospitalDetailGo(HttpServletRequest req , HospitalDTO hDTO) {
		
		//lDAO.loginCheck(req);
		HDAO.hospitalView(req,hDTO);
=======
	public String hospitalDetailGo(HttpServletRequest req) {
		
		//lDAO.loginCheck(req);
>>>>>>> 109c5931d7e93a8554889a9602c9ed4d21083d23
		req.setAttribute("contentPage", "sy/hospitalDetail.jsp");
		
		return "2Team/t2_index";
	}
	
}
