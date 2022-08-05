<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <script type="text/javascript">var $j341 = jQuery.noConflict();</script>
</head>


<body>

<div class="container">
	<form action="team2.createPost" method="POST">
	
		<div class="form-group">
			<label for="title">Title:</label>
			<input type="text" class="form-control" placeholder="title" id="title" name="board_title">
            <input name="${param.board_category}" type="hidden">
		</div>
	
		<div class="form-group">
			<label for="content">Content:</label>
			<textarea class="form-control" rows="5" id="summernote" name="board_txt"></textarea>
		</div>
	
		<button type="submit" class="btn btn-primary">글쓰기 등록</button>
	</form>
</div>







</body>

<script type="text/javascript">
var toolbar = [
    // 글꼴 설정
    ['fontname', ['fontname']],
    // 글자 크기 설정
    ['fontsize', ['fontsize']],
    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
    // 글자색
    ['color', ['forecolor','color']],
    // 표만들기
    ['table', ['table']],
    // 글머리 기호, 번호매기기, 문단정렬
    ['para', ['ul', 'ol', 'paragraph']],
    // 줄간격
    ['height', ['height']],
    // 그림첨부, 링크만들기, 동영상첨부
    ['insert',['picture','link','video']],
    // 코드보기, 확대해서보기, 도움말
    ['view', ['codeview','fullscreen', 'help']]
  ];

var setting = {
    height : 600,
    minHeight : null,
    maxHeight : null,
    focus : true,
    lang : 'ko-KR',
    toolbar : toolbar,
    callbacks : { //여기 부분이 이미지를 첨부하는 부분
    onImageUpload : function(files, editor,
    welEditable) {
    for (var i = files.length - 1; i >= 0; i--) {
    uploadSummernoteImageFile(files[i],
    this);
    		}
    	}
    }
 };

$j341(function(){
console.log('loaded')	
});
$j341('#summernote').summernote(setting);

function uploadSummernoteImageFile(file, el) {
data = new FormData();
data.append("file", file);
$.ajax({
	data : data,
	type : "POST",
	url : "uploadSummernoteImageFile",
	contentType : false,
	enctype : 'multipart/form-data',
	processData : false,
	success : function(data) {
		console.log(data);
		// 현지 url 보면 주소값인데,  사진 파일 이름만 필요한 상황
		// 1. res 받을때 아예 파일 명만 받는다
		// 2. data 객체에서 딴거 쓸 수 도 있으니까 여기서 데이터 정제 한다
		
		$j341(el).summernote('editor.insertImage', data.url);
	  
	} 
});
}


</script>



















</html>