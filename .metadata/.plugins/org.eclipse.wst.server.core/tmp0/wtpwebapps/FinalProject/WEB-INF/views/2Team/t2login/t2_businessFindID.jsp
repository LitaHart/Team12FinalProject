<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="findID-outline">
		<div class="findID-email">
		
		<form action="businessIDFind.do" method="POST" name="businessfindID" onsubmit="return businessfindIDBybusinessNum()">
		<fieldset>
		<legend>사업자 번호로 찾기</legend>
		
		<table>
		
		<tr class="findID-email-tr">
		<td class="findID-email-td">사업자 번호</td>
		<td><input name="vet_businessNum" type="number" id="businessnum"></td>
		</tr>
		</table><br>
		
		
		<button>찾기</button>
		
		</fieldset>
		</form>
		</div>
		
		<div class="findID-line"></div>
		
		<div class="findID-phoneNum">
		<form action="businessIDFind.do" method="POST" name="businessfindIDbyphone" onsubmit="return businessfindIDbyPhone()">
		<fieldset>
		<legend>전화번호로 찾기</legend>
		
		<table>
		
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
</body>
</html>