<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/t2_css/menuCss.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:choose>
<c:when test="${sessionScope.loginMember !=null }">
<div class="loginOK-dropdown" >
      <span class="loginOK-dropbtn">${sessionScope.loginMember.member_ID }様</span>
      <div class="loginOK-dropdown-content">
        <a href="t2myPage.go">マイページ</a>
        <a href="hospitalReserveLookupgo?member_ID=${sessionScope.loginMember.member_ID}">予約確認</a>
        <a href="CartView.go?cart_UserID=${sessionScope.loginMember.member_ID}">カート</a>
		<a onclick="location.href='lookUpOrder?Order_User_ID=${sessionScope.loginMember.member_ID }&nowPage=1&cntPerPage=8'">注文履歴</a>
        <c:if test="${sessionScope.loginMember.member_ID  eq 'ADMIN' }">
        <a href="orderInquiry.go?nowPage=1&cntPerPage=16">注文管理</a>
        <a href="regProductPage.go">商品登録</a>
		</c:if> 
        <a href="myPost?result=1&board_member_id=${sessionScope.loginMember.member_ID}">投稿</a>
        <a href="myPost?result=2&board_member_id=${sessionScope.loginMember.member_ID}">いいね</a>
        <a href="t2logout">ログアウト</a>
      </div>
    </div> 

</c:when>
<c:otherwise>
<div class="loginOK-dropdown" >
      <span class="loginOK-dropbtn">${sessionScope.loginMember_business.vet_ID }様</span>
      <div class="loginOK-dropdown-content">
        <a href="t2VetMyPage.go">マイページ</a>
        <a href="#">予約確認</a>
        <a href="CartView.go?cart_UserID=${sessionScope.loginMember_business.vet_ID }">カート</a>
		<a onclick="location.href='lookUpOrder?Order_User_ID=${sessionScope.loginMember_business.vet_ID }&nowPage=1&cntPerPage=16'">注文履歴</a>
        <a href="t2logout">ログアウト</a>
      </div>
    </div> 
</c:otherwise>
</c:choose>

</body>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
</html>