<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/t2_css/t2_login.css">
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>

	
	
	<div class="login_didididiv">
	
	<ul class="menu__tabs">
			<li><a class="active" href="#item-1"><i class="fa fa-user"></i> 개인</a></li>
			<li><a href="#item-2"><i class="fa fa-building"></i> 기업</a></li>	
		</ul>
		<section class="menu__wrapper">
			<article id="item-1" class="menu__item item-active">
				<h3>개인</h3>
				
				<form action="t2LoginDO" method="post" name="loginForm" onsubmit="return logincheckCall()">

		<div class="login_txt">
			<h2 class="login_h2">Welcome!</h2>
			<div class="login-social">
				<a onclick="kakaoLogin()"> <!-- 카카오 로그인 -->
					<img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="110" alt="카카오 로그인 버튼"/>
				</a>
				<div id="naver_id_login"></div>
				
			</div>
			
			<label class="login_label"> <span>ID</span> 
			<input class="login_input" name="member_ID" />
			</label> <label class="login_label"> <span>Password</span> 
			<input class="login_input1" name="member_PW" type="password" />
			</label>
			<input name="member_linkWhere" value="1" type="hidden">
			<span class="pw_alert">${r}</span>
			<input type="checkbox" id="login_idSave">아이디 기억하기
			<p class="forgot-pass"   style="font-size: 12px;" onclick="location.href='acceptgo?member=1' ">회원가입</p>
			<p class="forgot-pass"  style="font-size: 12px;" onclick="location.href='t2FindID.go'">아이디를 잊으셨나요?</p>
			<p class="forgot-pass"  style="font-size: 12px;" onclick="location.href='t2FindPW.go'">비밀번호를 잊으셨나요?</p>
			<div class="box bg-1">
			<input type="submit" class="login-btn" value="L o g i n"/>
			</div>
		</div>
</form>

			</article>
			
			<article id="item-2" class="menu__item">
				<h3>기업</h3>
			<form action="t2LoginDO.business" method="post" name="loginFormBusiness" onsubmit="return loginCheck_business()">

		<div class="login_txt">
			<h2 class="login_h2">Welcome!</h2>
			
			<label class="login_label"> <span>ID</span> 
			<input class="login_input3" name="vet_ID" />
			</label> <label class="login_label"> <span>Password</span> 
			<input class="login_input1" name="vet_PW" type="password" />
			</label>
			<span class="pw_alert">${rb}</span>
			<input type="checkbox" id="login_idSave1">아이디 기억하기
			<p class="forgot-pass"  style="font-size: 12px;" onclick="location.href='acceptgo?member=2' ">회원가입</p>
			<p class="forgot-pass"  style="font-size: 12px;" onclick="location.href='businessIDFind.go'">아이디를 잊으셨나요?</p>
			<p class="forgot-pass"  style="font-size: 12px;" onclick="location.href='businessPWFind.go'">비밀번호를 잊으셨나요?</p>
			<div class="box bg-1">
			<input type="submit" class="login-btn" value="L o g i n"/>
			</div>
		</div>
</form>
			</article>


		</section>
		
	
</div>
<script type="text/javascript">
  	var naver_id_login = new naver_id_login("BuwruEVQIqPoVW9Sc3Uo", "http://localhost:8080/main/naver.login");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:8080/main/naver.login");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
</body>
<script type="text/javascript">
$(function() {

	// Menu Tabular
	var $menu_tabs = $('.menu__tabs li a'); 
	$menu_tabs.on('click', function(e) {
		e.preventDefault();
		$menu_tabs.removeClass('active');
		$(this).addClass('active');

		$('.menu__item').fadeOut(300);
		$(this.hash).delay(300).fadeIn();
	});
	

	

})</script>
</html>