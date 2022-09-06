<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="PWChange-outline">
<h1>비밀번호 변경하기</h1><br>
<input class="validCheck"  id="join_PWCheck" value="PWUnCheck"> 
<input class="validCheck"  id="join_PWCheck2" value="PWUnCheck"> 
<c:choose>
<c:when test="${sessionScope.loginMember_business != null }">
<form action="businessPWchange.DO" method="post" name="pwChange" onsubmit="return businessPWchange()">
</c:when>
<c:otherwise>
<form action="businessFindPWchange.DO" method="post" name="pwChange">
</c:otherwise>
</c:choose>

<input type="hidden" name="vet_ID" value="${ID }">

<input name="vet_PW" placeholder="비밀번호" id="pw1"><br>
<span class="pwChange-Guide">＊5자 이상 영어,숫자만 포함해주세요</span>
<br>
<span style="font-size: 2pt;" id="result"></span><br><br>
<input placeholder="비밀번호 재 확인" id="pw2"> <br>
<span id="result3"></span>
<br><br>

<button>변경하기</button>
</form>



</div>
</body>
</html>