<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="findPWBusiness-outline">
	<h1>비즈니스 회원 비밀번호 찾기</h1>
		
		<div class="findPWBusniess-inline">
		<div class="findID-email">
		
		<form action="businessFindPW.DO" method="POST" name="businessPWfindbybusinessNum" onsubmit="return businessPWfindBybunsimessNum()">
		<fieldset>
		<legend>사업자 번호로 찾기</legend>
		
		<table>
		<tr class="findID-email-tr">
		<td class="findID-email-td">ID</td>
		<td><input name="vet_ID" type="text" id="businessID"></td>
		</tr>
		
		<tr class="findID-email-tr">
		<td class="findID-email-td">사업자 번호</td>
		<td><input name="vet_businessNum" type="number" id="businessNum"></td>
		</tr>
		</table><br>
		
		
		<button>찾기</button>
		
		</fieldset>
		</form>
		</div>
		
		<div class="findID-line"></div>
		
		<div class="findID-phoneNum">
		<form action="businessFindPW.DO" method="POST" name="businessPWFindbyphonNum" onsubmit="return businessPWfindbyPhoneNum()">
		<fieldset>
		<legend>전화번호로 찾기</legend>
		
		<table>
		
		<tr class="findID-email-tr">
		<td class="findID-email-td">ID</td>
		<td><input name="vet_ID" type="text" id="businessID"></td>
		</tr>
		
		<tr class="findID-phoneNum-tr">
		<td class="findID-phoneNum-td">전화번호</td>
		<td><input name="vet_phoneNum" type="tel" id="businessPhoneNum"></td>
		</tr>
		
		</table><br>
		
		
		<button>찾기</button>
		
		</fieldset>
		</form>
		
		</div>
		</div>
	
	</div>
</body>
</html>