<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="myInfoChange-outline">
<form action="businessInfoChange.DO" method="post">
		<h2>비즈니스 회원정보 수정</h2>
		
		<table class="myInfoChange-table">
				
		<tr class="myInfoChage-tr">
		<td class="myInfoChage-td1">사업자 번호</td>
		<td><input name="vet_businessNum" type="number" value="${sessionScope.loginMember_business.vet_businessNum }" class="vet_businessNum"> 
		<span class="businessNumResult"></span>
		</td>		
		</tr>
		
		<tr class="myInfoChage-tr">
		<td class="myInfoChage-td1">전화번호</td>
		<td><input name="vet_phoneNum" type="text"  value="${sessionScope.loginMember_business.vet_phoneNum }" class="myInfoChage-input">
		</td>
		</tr>
	
		<tr class="myInfoChage-tr-addr">
		<td class="myInfoChage-td1">주소</td>
		<td> <input id="join_addr3Input" readonly="readonly" name="m_addr3" maxlength="5" autocomplete="off" placeholder="우편번호" value="${addr[2] }">
		<span id="addrSearchBtn">[검색]</span><br>
		<input id="join_addr1Input" readonly="readonly" name="m_addr1" maxlength="30" autocomplete="off" placeholder="주소" value="${addr[0] }"><br>
		<input id="join_addr2Input" name="m_addr2" maxlength="30" autocomplete="off" placeholder="상세주소" value="${addr[1] }"></td>
		</tr>
		
		
		</table>
				
		<button>등록하기</button>	&nbsp;&nbsp;
		<input type="button" onclick="history.back()" value="뒤로가기">
			
		
		
	</form>
		
	</div>
</body>
</html>