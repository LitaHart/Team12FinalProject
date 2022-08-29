function reservecancleGo(a) {
	
		alert(a);
	
	if (confirm("정말 취소하시겠습니까??") == true){    //확인
		//window.open("http://localhost/main/reserveCanclego", "비밀번호확인", "top=200px, left=600px, height=540px, width=680px");
		
	    var frmPop= document.frmPopup;
	    var url = "http://localhost/main/reserveCanclego";
	    window.open("","비밀번호확인","top=200px, left=600px, height=540px, width=680px");  
	     
	    frmPop.action = url;
	    frmPop.target = "비밀번호확인"; //window,open()의 두번째 인수와 같아야 하며 필수다.  
	    frmPop.arg1.value = a;
	    frmPop.submit();   
		
	    
	    
	 }else{                                         //취소
		 
	     return false;
	     
	 }
}


function parentsA() {
	
	alert("부모");
	
	
	location.href="hospitalReserveCancleDo?heA="+userid+"&heB=";
	
}