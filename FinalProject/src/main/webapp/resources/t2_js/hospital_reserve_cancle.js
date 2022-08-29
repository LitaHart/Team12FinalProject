$(function() {
	
	$('.cancle-button').click(function (){
		
		var userid = $('.cancle-id').val();
		
		let ooooo = opener.document.getElementById("hcr-no").innerHTML;
		
		alert(ooooo);
		
		$.ajax({

			url : "reservePw.check",

			type : "GET",

			dataType : "text",

			data : {

				"member_ID" : userid

			},

			success : function(result) {
				
				 let p1 = $('.reserve-cancle-password1').val();
			     let p2 = $('.reserve-cancle-password2').val();
			     
			     console.log(p1);
		
			     
			     if(p1.length < 4) {
			         alert('입력한 글자가 4글자 이상이어야 합니다.');
			         return false;
			     }
			     
			     if( p1 != p2 ) {
			       alert("비밀번호확인이 일치 하지 않습니다");
			       return false;
			     } else{
			       alert("비밀번호확인이 일치합니다");
			       		if (result != p2) {
					
			       			alert('DB비밀번호랑 틀림');
					
			       		} else {
			       			location.href="hospitalReserveCancleDo?heA="+userid+"&heB=";
			       			alert('예약이 취소 되었습니다.')
			       			window.close();
			       		}
			     }

			
			},

			error : function(error) {
				alert("에러");
			},
			
		});
		

	})
	
})
