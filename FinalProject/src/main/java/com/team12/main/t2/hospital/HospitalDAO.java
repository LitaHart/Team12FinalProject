package com.team12.main.t2.hospital;

import javax.servlet.http.HttpServletRequest;

<<<<<<< HEAD
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HospitalDAO {
	
	@Autowired
	private SqlSession ss;

	public void hospitalView(HttpServletRequest req, HospitalDTO hDTO) {
		 
		System.out.println("여기는어떰?");
		System.out.println(hDTO.getHospital_no());
		
		
		Hospital_ListMapper hlm = ss.getMapper(Hospital_ListMapper.class);

		
		req.setAttribute("Hospital",hlm.getDetailview(hDTO));
		
		System.out.println();
		
=======
public class HospitalDAO {

	public void hospitalView(HttpServletRequest req) {
	
		
		
>>>>>>> 109c5931d7e93a8554889a9602c9ed4d21083d23
	}

}
