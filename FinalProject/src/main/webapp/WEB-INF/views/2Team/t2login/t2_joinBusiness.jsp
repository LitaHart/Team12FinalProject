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
<form action="joinDo.business" method="POST" class="joinForm" name="busniessjoinForm" onsubmit="return businessJoinCheck()">
       <input type="hidden" id="join_IDCheck" value="IDUnCheck">
       <input type="hidden" id="join_PWCheck" value="PWUncheck">
       <input type="hidden" id="join_BusinessNumCheck" value="BusinessNumUncheck">
       
                                                                                               
      <h2>비즈니스 회원가입</h2>
      <div class="join-textForm">
      <span class="jointxt">*필수 5자 이상 영어 숫자 포함</span>  
        <input name="vet_ID" type="text" class="join-id" placeholder="아이디" id="joinbusiness_ID">
        <span id="idcheckResult"></span> <br>
        <span id="IDValidCheck"></span>
      </div>
      
      <div class="join-textForm">
      <span class="jointxt">*필수 5자 이상 영어 숫자 포함</span>
        <input name="vet_PW"  class="join-pw" placeholder="비밀번호">
        <span id="PWCheckResult"></span>
      </div>
      
       <div class="join-textForm">
        <input name="loginPwConfirm"  class="join-pw2" placeholder="비밀번호 확인">
        <span class="pwCheckResult"></span>
      </div>
       
      <div class="join-textForm">
      <span class="jointxt-only">*필수</span>
        <input name="vet_businessNum" type="number" class="vet_businessNum" style="border: none;" placeholder="사업자번호">
        <span class="businessNumResult"></span>
      </div>
      
      <div class="join-textForm">
      <span class="jointxt-only">*필수</span>
        <input name="vet_phoneNum" type="number" class="join-cellphoneNo" placeholder="전화번호">
      </div>
      
      <div class="join-textForm addr">
      <span class="jointxt-only-addr">*필수</span><br>
       주소<br>
        <input id="join_addr3Input" readonly="readonly" name="m_addr3" maxlength="5" autocomplete="off" placeholder="우편번호">
		<span id="addrSearchBtn">[검색]</span><br>
		<input id="join_addr1Input" readonly="readonly" name="m_addr1" maxlength="30" autocomplete="off" placeholder="주소"><br>
		<input id="join_addr2Input" name="m_addr2" maxlength="30" autocomplete="off" placeholder="상세주소">
      </div>
      
      
      <input type="submit" class="join-btn" value="J O I N"/>
    </form>
    </div>
</body>
</html>