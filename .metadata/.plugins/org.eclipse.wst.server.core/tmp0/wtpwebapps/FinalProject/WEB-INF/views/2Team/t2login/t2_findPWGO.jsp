<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="findPW-outline">
<h1>패스워드 찾기</h1>

<form action="sendPW.Do" method="post" name="memberPWfindCheck" onsubmit="return memberPWfind()">
<table class="findPW-table">

<tr class="findPW-table-tr">
<td class="findPW-table-td">ID</td>
<td><input name="member_ID" type="text" id="memberID"></td>
</tr>

<tr class="findPW-table-tr">
<td class="findPW-table-td">이름</td>
<td><input name="member_name" type="text" id="memberName"></td>
</tr>

<tr class="findPW-table-tr">
<td class="findPW-table-td">email</td>
<td><input name="member_email" type="email" id="memberEmail"></td>
</tr>

</table><br><br>

<button>찾기</button>

</form>
</div>
</body>
</html>