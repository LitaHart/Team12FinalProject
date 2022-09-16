// 좋아요 ajax
function getBoardLike(board_num,member_ID) {
	if(member_ID == ""){
		alert('로그인 부탁드립니다')
		return false;
	}
	
	$.ajax({
			url : "post.like",
			data : {
				"like_board_num" : board_num ,
				"like_member_id" : member_ID
			},
			success : function(data) {
				let result = data[0]
				let total = data[1]
				console.log(result,total);
				
				if (result == 0) {
					$('#like_btn').attr('class','btn btn-warning btn-sm center-block');
					
				} else{
					$('#like_btn').attr('class','btn btn-default btn-sm center-block');

				}
				
				$('#like_btn').html(total+' 좋아요');
				
			}
		
		});
	
}

// return total like
function likeCheck(board_num,member_ID) {
	
	if(member_ID == null){
		alert('로그인 부탁드립니다')
		return false;
	}
	
	
	$.ajax({
		url : "post.checkLike",
		data : {
			"like_board_num" : board_num ,
			"like_member_id" : member_ID
		},
		success : function(data) {
			console.log(data)
			if (data == 1) {
				$('#like_btn').attr('class','btn btn-warning btn-sm center-block');
			}
			
			
		}
	
	});
	
}



//글쓰기 로그인 체크
function loginChekBoard() {
	$('#writeBtn').click(function() {
		let id = $('#loginCheckId').val();
		
		if(id.length == 0){
			alert('로그인 후 사용가능합니다.')
			return false;
		}
		
		
	});
	

}


function checkEmpty() {
	let title = $("#title").val();
	let txt = $("#summernote").val();
	
	if(title == ""){
		alert('제목을 입력하세요')
		return false;
	} else if(txt == ""){
		alert('내용을 입력하세요')
		return false;
	}
	
}













$(function() {
	loginChekBoard();
});





