<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="t2-join-outdiv">
<form action="petInformationReg.do" method="POST" class="joinForm" enctype="multipart/form-data"> 
                                                                                               
      <h2>펫 등록하기</h2>
      <div class="join-textForm brith" style="text-align: center;">   
        <img id="image" style="width: 100px;height: 100px; display: none; border-radius: 50%;">
        <input name="baby_img" type="file" class="join-name" id="baby_img" style="padding-bottom: 30px;"> 
      </div>
      
      <div class="join-textForm">   
        <input name="baby_name" type="text" class="join-name" placeholder="펫이름">      
        <span id="idcheckResult"></span>
      </div>
      
      
      <div class="join-textForm brith">
        <input name="baby_weight"  class="join-name" placeholder="몸무게" style="width: 80px;">kg
      </div>
      
      <div class="join-textForm brith">
      	생일&nbsp;&nbsp;<input name="baby_birth" type="date" class="join-birth" >
      </div> 
      
      <div class="join-textForm brith">
      	성별 &nbsp;&nbsp;
        <input name="baby_sex" type="radio" class="join-sex" value="m" checked="checked">남아
        &nbsp;&nbsp;<input name="baby_sex" type="radio" class="join-sex" value="w">여아
      </div>
      
      <div class="join-textForm brith">
      	종류 &nbsp;&nbsp;
        <input name="baby_type" type="radio" class="join-sex" value="dog" checked="checked">강아지
        &nbsp;&nbsp;<input name="baby_type" type="radio" class="join-sex" value="cat">고양이
        &nbsp;&nbsp;<input name="baby_type" type="radio" class="join-sex" value="etc">그 외
      </div>
      
      <div class="join-textForm brith">
      	품종 &nbsp;&nbsp;
        <input name="baby_typeDetail" class="join-cellphoneNo" placeholder="품종" style="width: 250px;">
      </div>
      
       <div class="join-textForm brith">
      	중성화 &nbsp;&nbsp;
        <input name="baby_neut" type="radio" class="join-sex" value="yse" checked="checked">함
        &nbsp;&nbsp;<input name="baby_neut" type="radio" class="join-sex" value="no">안함
      </div>
      
      <input type="hidden" name="baby_memberID" value="${sessionScope.loginMember.member_ID }">
      
      <input type="submit" class="join-btn" value="등 록"/>
    </form>
    </div>
</body>
<script type="text/javascript">
document.getElementById("baby_img").onchange = function () {
    var reader = new FileReader();
    $('#image').css({ 'display' : '' });
    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        
        document.getElementById("image").src = e.target.result;
    };

    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
};
</script>
</html>