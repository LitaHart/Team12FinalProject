<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
				${item }<br>
			</c:forTokens>
		</td>
	</tr>
</table> --%>

</body>
</html>