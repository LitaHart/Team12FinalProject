<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="login_didididiv">
	
	<ul class="menu__tabs">
			<li><a class="active" href="#item-1"><i class="fa fa-user"></i> 個人会員購入</a></li>
			<li><a href="#item-2"><i class="fa fa-building"></i> 企業会員購入</a></li>	
		</ul>
		<section class="menu__wrapper">
			<article id="item-1" class="menu__item item-active">
				<h3>個人ログイン</h3>
				
<form action="t2LoginDO.purchase" method="post" name="loginForm" onsubmit="return logincheckCall()">

		<div class="login_txt">
			<h2 class="login_h2">Welcome!</h2>
			<div class="login-social">
				<a href=""><i class="fa fa-kakao">kakao</i></a>
				<div id="naver_id_login"></div>
				<a href=""><i class="fa fa-google-plus"></i></a>
							</div>
			
			<label class="login_label"> <span>ID</span> 
			<input class="login_input" name="member_ID" />
			</label> <label class="login_label"> <span>Password</span> 
			<input class="login_input1" name="member_PW" />
			</label>
			<input name="member_linkWhere" value="1" type="hidden">
			<span class="pw_alert">${r}</span>
			<input type="checkbox" id="login_idSave">IDを保存
			<p class="forgot-pass" type="button"  style="font-size: 12px;" onclick="location.href='acceptgo?member=1' ">会員登録</p>
			<p class="forgot-pass"  style="font-size: 12px;">IDを探す</p>
			<p class="forgot-pass"  style="font-size: 12px;">パスワードを探す</p>
			<div class="box bg-1">
			<input type="submit" class="login-btn" value="L o g i n"/>
			</div>
		</div>
			<input type="hidden" value="${param.thumbnail }" name="thumbnail"/>
			<input type="hidden" value="${param.name }" name="name"/>
			<input type="hidden" value="${param.price }" name="price"/>
			<input type="hidden" value="${param.quantity }" name="quantity"/>
			<input type="hidden" value="${param.productNum }" name="productNum"/>
			<input type="hidden" value="${param.productNumm}" name="productNumm"/>
	</form>
			</article>
			
			
			<article id="item-2" class="menu__item">
				<h3>企業ログイン</h3>
	<form action="t2LoginDO.business.purchase" method="post" name="loginFormBusiness" onsubmit="return loginCheck_business()">

		<div class="login_txt">
			<h2 class="login_h2">Welcome!</h2>
			
			<label class="login_label"> <span>ID</span> 
			<input class="login_input3" name="vet_ID" />
			</label> <label class="login_label"> <span>Password</span> 
			<input class="login_input1" name="vet_PW" />
			</label>
			<span class="pw_alert">${rb}</span>
			<input type="checkbox" id="login_idSave1">IDを保存
			<p class="forgot-pass"  style="font-size: 12px;" onclick="location.href='acceptgo?member=2' ">会員登録</p>
			<p class="forgot-pass"  style="font-size: 12px;">IDを探す</p>
			<p class="forgot-pass"  style="font-size: 12px;">パスワードを探す</p>
			<div class="box bg-1">
			<input type="submit" class="login-btn" value="L o g i n"/>
			</div>
		</div>
		<input type="hidden" value="${param.thumbnail }" name="thumbnail"/>
			<input type="hidden" value="${param.name }" name="name"/>
			<input type="hidden" value="${param.price }" name="price"/>
			<input type="hidden" value="${param.quantity }" name="quantity"/>
			<input type="hidden" value="${param.productNum }" name="productNum"/>
			<input type="hidden" value="${param.productNumm}" name="productNumm"/>
</form>
			</article>
		</section>
		
	
</div>

</body>
</html>