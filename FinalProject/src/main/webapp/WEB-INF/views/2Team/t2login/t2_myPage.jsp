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
	<div class="memberInfoPage-outline">
		<h2>회원정보</h2>
<<<<<<< HEAD
=======
		<label>ID</label> <input type="text" readonly="readonly"
			value="${sessionScope.loginMember.member_ID }" style="border: none;" name="member_ID"><br>

		<label>이름</label> <input type="text" readonly="readonly"
			value="${sessionScope.loginMember.member_name }" style="border: none;"><br>

		<label>생일</label> <input type="text" readonly="readonly"
			value="${sessionScope.loginMember.member_birth }" style="border: none;"><br>

		<label>성별</label> <input type="text" readonly="readonly"
			value="${sessionScope.loginMember.member_sex }" style="border: none;"><br>

		<label>전화번호</label>
		<input type="text" readonly="readonly" value="${sessionScope.loginMember.member_phoneNum }" style="border: none;"><br> 
>>>>>>> 9ff0ebb605a1622fa42509ede73e810c551a0dec
		
		<table class="memberInfoPage-table">
		
		<tr class="memberInfoPage-tr">
		<td>ID</td>
		<td>${sessionScope.loginMember.member_ID }</td>
		</tr>
		
		<tr class="memberInfoPage-tr">
		<td>이름</td>
		<td>${sessionScope.loginMember.member_name }</td>
		</tr>
		
		<tr class="memberInfoPage-tr">
		<td>생일</td>
		<td>${sessionScope.loginMember.member_birth }</td>
		</tr>
		
		<tr class="memberInfoPage-tr">
		<td>성별</td>
		
		<c:choose>
		<c:when test="${sessionScope.loginMember.member_sex =='m'}">
		<td>남자</td>
		</c:when>
		<c:otherwise>
		<td>여자</td>
		</c:otherwise>
		</c:choose>
		
		</tr>
		
		<tr class="memberInfoPage-tr">
		<td>전화번호</td>
		<td>${sessionScope.loginMember.member_phoneNum }</td>
		</tr>
		
		<tr class="memberInfoPage-tr">
		<td>주소</td>
		<td>${addr[2]} ${addr[0]} ${addr[1]}</td>
		</tr>
		
		<tr class="memberInfoPage-tr">
		<td>e-mail</td>
		<td>${sessionScope.loginMember.member_email }</td>
		</tr>
		
		
		</table>
		
		
		<input type="button" value="수정하기" id="modify" onclick="location.href='myinformation.chgae'"> 
		<input type="button" value="펫 관리하기" onclick="location.href='t2mypetInformation.go'"> 
		
		<c:if test="${sessionScope.loginMember.member_linkWhere == 1 }">
		<input type="button" value="비밀번호바꾸기"> 
		</c:if>
		
		<input type="button" value="탈퇴하기">
	
		
	</div>
</body>
</html>