package com.team12.main.t2.hospital;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team12.main.t2Login.Membert2;


@Service
public class HospitalDAO {

    @Autowired
    private SqlSession ss;

    
    public void hospitalView(HttpServletRequest req, HospitalDTO hDTO) {

        Hospital_ListMapper hlm = ss.getMapper(Hospital_ListMapper.class);

        req.setAttribute("Hospital",hlm.getDetailview(hDTO));

    }


	public void petinfoView(HttpServletRequest req, Membert2 m2) {
		
		Hospital_ListMapper hlm = ss.getMapper(Hospital_ListMapper.class);
		
		req.setAttribute("petDTO", hlm.getPetinfo(m2));
		
	}


	public void hopitalReserve(HttpServletRequest req, HospitalDTO hDTO) {
		
	}




	
    
}

