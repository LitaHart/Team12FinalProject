<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='resources/t2_css/hospital_reserve_cancle.css' rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/t2_js/jQuery.js"></script>
<script type="text/javascript" src="resources/t2_js/hospital_reserve_cancle.js"></script>
<title>Insert title here</title>
</head>
<body>
   <div class="reserve-cancle-div">
        <header class="reserve-cancle-header">
            <h3>비밀번호 확인</h3>
            <small>비밀번호를 입력해야 취소가 완료됩니다.</small>
        </header>
        <div class="reserve-cancle-input-div">
            <form>
                <fieldset class="password-input">
                    <span>비밀번호</span>
                    <input class="reserve-cancle-password1">
                    <span>비밀번호 확인</span>
                    <input class="reserve-cancle-password2">

                </fieldset>
                <fieldset class="cancle-fieldset">
                    <input class="cancle-button" type="button" value="예약취소">
                    <input class="cancle-id" type="hidden" value="${sessionScope.loginMember.member_ID}"/>
                </fieldset>
            </form>
        </div>

    </div>
</body>
</html>