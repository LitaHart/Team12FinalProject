package com.team12.main.t2.hospital;

import com.team12.main.t2Login.Membert2;
import com.team12.main.t2Login.pet;

public interface Hospital_ListMapper {


	 HospitalDTO getDetailview(HospitalDTO hDTO);

	 pet getPetinfo(Membert2 m2);

	 int setReverse(reserveDTO rDTO);
	

}
