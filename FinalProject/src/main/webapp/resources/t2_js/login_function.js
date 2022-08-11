function connectAddrSearchEvent() {
	//회원가입 주소 찾기 기능
	$("#addrSearchBtn").click(function() {
		new daum.Postcode({
			oncomplete : function(data) {
				$("#join_addr3Input").val(data.zonecode);
				$("#join_addr1Input").val(data.roadAddress);
			}
		}).open();
	});
}//회원가입 주소 찾기 기능

function idCheck() {
	$('.join-id').blur(function() {
		let idInput =$('.join-id').val();
		alert(idInput);
		
			$.ajax({
				url:"id.check",
				type:"GET",
				dataType :"text",
				data:{"member_ID":idInput},
				success: function(getData) {
					console.log(getData);
					if (getData ==1) {
						$('#idcheckResult').text("사용불가");
						$('#idcheckResult').css('color','red');
					}else {
						$('#idcheckResult').text("사용가능");
						$('#idcheckResult').css('color','green');
					}
					
					//$('span').text(idInput+"이미 사용중입니다.");
				},
				error : function(request,status,error) {
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					
				}
			});
		});
}

function joinEmail_check() {
	$('#join_mail_check').click(function() {
		var email = $('#join-email').val();
		console.log(email); // 입력한 값 넘어오는지 확인
			var checkNum = $('#join_mail_num');
			
			$.ajax({
				url:"emailcheck",
				type:"GET",
				dataType :"text",
				data:{"member_email":email},
				success : function (data) {
					console.log("data : " +  data);
					checkNum.attr('disabled',false);
					code =data;
					alert('인증번호가 전송되었습니다.')
				}			
			}); //ajax끝
		
	});//joinCheckbtn끝
}

function joinEmail_numCheck() {
	$("#join_mail_num").blur(function() {
		var inputNum = $(this).val();
		var result = $('#mail-check-warn');
		
		if (inputNum == code) {
			result.html("인증번호가 일치합니다.")
			result.css('color','green');
			$('#join_num_check').val("emailcheck");
			
		}else {
			result.html("인증번호가 불일치합니다.")
			result.css('color','red');
		}
		
	})
}

$(function() {
	connectAddrSearchEvent();
	idCheck();
	joinEmail_check();
	joinEmail_numCheck();
})