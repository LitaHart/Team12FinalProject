package com.team12.main.team1.join;

public interface Team1joinMapper {

	int join(Member m);

	Member getMemberByID(Member m);

	int update(Member m);

	int bye(Member m);

	int getMemberNum(Member m);
	

	int kakaoJoin(Member m);
	
	String find_id(Member m);
 
	int check_id(Member m);

	int check_email(Member m);

	
	


	


}
