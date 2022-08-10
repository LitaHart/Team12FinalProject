<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="store_wrapper">
		<div>
			<h1>Store</h1>
		</div>
		
		<!-- ---------------------------------------------- -->
		<div>
		<c:forEach var="products" items="${products}">
			<div style="border: solid 1px black; display:inline-block;">
				<div><img alt="product_img" src="resources/team1ProductImgs/${products.thumbnail}"></div>
				<div>
					${products.name} <br>
					(<fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${products.price}"/>)
				</div>
			</div>
		</c:forEach>
		</div>
		<!-- ---------------------------------------------- -->
		
		
		<div>
			<img alt="" src="">
			<img alt="" src="">
			<img alt="" src="">
			<img alt="" src="">
			<img alt="" src=""> 
		</div>
	</div>
	
	
	
	
	
	
	
</body>
</html>