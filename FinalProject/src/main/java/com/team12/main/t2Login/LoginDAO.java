package com.team12.main.t2Login;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class LoginDAO {
	
	@Autowired
	private SqlSession ss;

	public boolean login(HttpServletRequest req, Membert2 m) {
		//로그인하는 기능
		Membert2 dbMember = ss.getMapper(Team2loginMapper.class).getMemberByID(m);
		
		if (dbMember != null) {
			if (m.getMember_PW().equals(dbMember.getMember_PW())) {
				req.getSession().setAttribute("loginMember", dbMember);
				req.getSession().setMaxInactiveInterval(60 * 10);
				
				return true;
			}else {
				
				return false;
			}
		}else {
			
			return false;
		}
		
	}

}
