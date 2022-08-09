<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
=======
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD


<table border="1">
	<tr>
		<td rowspan="11"><img src="resources/t2_yj_files/${Product.productThumbnail }" style="height: 500px;width:500px"></td>
	</tr>
	<tr>
		<td class="">상품이름</td>
	</tr>
	<tr>
		<td class=""><h1>${Product.productName }</h1></td>
	</tr>
	<%-- <tr>
		<td class=">${star } <fmt:formatNumber value="${starpoint.score }" pattern="0.00" /> </td>
	</tr> --%>
	<tr>
		<td class="">
			<c:forTokens var="item" items="${Product.productInfo }" delims="\n">
				${item }<br>
			</c:forTokens></td>
	</tr>
	<tr>
		<td class="drink_detail_page_title">가격</td>
	</tr>
	<tr>
		<td class=""><h1>${Product.productPrice }원</h1></td>
	</tr>
	<tr>
		<td class=""><h1>재고</h1></td>
	</tr>
	<tr>
		<td class=""><h1>${Product.productStock }개</h1></td>
	</tr>
	<tr>
		<td class="drink_detail_page_title">태그</td>
	</tr>
	<tr>
		<td class="drink_detail_page_txt">
			<c:forTokens var="item" items="${Product.productTag }" delims="!">
=======
<h1>${product.productName} </h1>
<h1>${product.productNum} </h1>
<h1>${product.productInfo} </h1>
<%-- <table  class="drink_detail_page_table">
	<tr>
		<td rowspan="6"><img src="resources/t2_yj_files/${p.productThumbnail }" style="height: 500px;width:500px"></td>
	</tr>
	<tr>
		<td class="">OUR COCKTAILS</td>
	</tr>
	<tr>
		<td class=""><h1>${product.productName }</h1></td>
	</tr>
	<tr>
		<td class=">${star } <fmt:formatNumber value="${starpoint.score }" pattern="0.00" /> </td>
	</tr>
	<tr>
		<td class="">
			<c:forTokens var="item" items="${product.productInfo }" delims="\n">
				${item }
			</c:forTokens></td>
	</tr>
	<tr>
		<td class="drink_detail_page_title">INGREDIENTS</td>
	</tr>
	<tr>
		<td class="drink_detail_page_txt">
			<c:forTokens var="item" items="${product.productTag }" delims="!">
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f
				${item }<br>
			</c:forTokens>
		</td>
	</tr>
<<<<<<< HEAD
	<tr>
		<td>
		<button onclick="location.href='update.product.go?productNum=${Product.productNum}'">수정</button>
		<button onclick="">삭제</button>
		</td>
	</tr>
</table>







<table>
	<tr>
		<td><c:forTokens var="item" items="${Product.productImg }" delims="!">
				<img src="resources/t2_yj_files/${item }" style="width:600px"><br>
			</c:forTokens>
		</td>
	</tr>
</table>
	


=======
</table> --%>
>>>>>>> 0bdf9ecf0def9becc1efe6b394fd7ee1e7b4587f

</body>
</html>