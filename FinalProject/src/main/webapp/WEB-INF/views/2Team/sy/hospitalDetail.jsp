<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=616ab49f45cfb91e31f4cd32e312c1aa&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="resources/t2_js/hospital_detail_function.js"></script>
</head>
<body>

			<div>
				<div class="detail-top-menu">
					<input type="hidden" id="detail_addr" value="${Hospital.hospital_addr}"/>
				  <h3 class="top-h3-name">${Hospital.hospital_name }</h3>
				</div>
				
				<div>
					<h3 id="detail_map"></h3>
				</div>
				
				<div>
					<div class="detail-img">
						<img style="width: 20px; height: 20px;" alt="" src="resources/t2_img/hospitalMarker.png">
					</div>
				
				</div>
				
				<span  class="detail-addr">(0${Hospital.hospital_postNo})${Hospital.hospital_addr}</span>
				<span  class="detail-tel"><strong>TEL</strong> ${Hospital.hospital_tel}</span>
				
								
			</div>
				
	
</body>
</html>