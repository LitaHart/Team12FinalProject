<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='resources/t2_css/cartPage.css' rel="stylesheet" type="text/css">
</head>
<body>
	<header id="site-header">
		<div class="container">
			<h1>Shopping cart</h1>
		</div>
	</header>

	<div class="container">

		<section id="cart" class="cart">  
		
		<form action="purchasePage.go" id="CheckOutForm">
		<c:forEach items="${Product }" var="p">
			<article class="product">
				<header>
					<a class="remove">
						<img src="resources/t2_yj_files/${p.productThumbnail }">
						
						<h3>Remove product</h3>
						<input  type="hidden" name="thumbnail" value="${p.productThumbnail }">
						<input  type="hidden" name="name" id="name" value="${p.productName }">
						<input  type="hidden" name="price" value="${p.productPrice }">
						<input  type="hidden" class="cartNum" name="cartNum" value="${p.cartNum }">
						<input  type="hidden" class="productNum" name="productNum" value="${p.productNum }">
					</a>
					
				</header>
				<div class="content">
					<h1>${p.productName }</h1>
					${p.productInfo }
				</div>
				<footer class="content">
				<input name="quantity" type="hidden" value="${p.cart_ProductQuantity }">
					<span class="qt-minus">-</span>
					<span class="qt">${p.cart_ProductQuantity } </span>
						
					<span class="qt-plus">+</span>
					<span class="full-price">${p.productPrice * p.cart_ProductQuantity }</span>
					<h2 class="price">${p.productPrice}</h2>
					<h2 class="onePriceWon">Price : </h2>
				</footer>
			</article>
</c:forEach>
		</form>

		</section>

	</div>

	<footer id="site-footer">
		<div class="container clearfix">

			<div class="left">
				<h2 class="subtotal">Product Price : <span id="subPrice"></span>₩</h2>
				<h3 class="tax">Shipping Price : <span>2500</span>₩</h3>
			</div>

			<div class="right">
				<h1 class="total">Total Price: <span id="totalPrice">0</span>₩</h1>
				<a class="CheckOutbtn" onclick="return CheckOutFunc()" >Check Out</a>
			</div>

		</div>
	</footer>


</body>
</html>