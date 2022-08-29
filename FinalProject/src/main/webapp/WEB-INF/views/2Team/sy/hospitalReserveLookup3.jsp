<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="reserve-lookup-div">
        <div class="reserve-lookup-menutab-div">
         <section class="reserve-lookup-section">
              <div class="reserve-div-inner">
                  <div class="reserve-lookup-info-place-1">
                      <ul class="reserve-lookup-info-list1">
                              <span class="reserve-lookup-info-list-title">예약번호</span>
                          </ul>
                  </div>
                  <div class="reserve-lookup-info-place-2">
                      <ul class="reserve-lookup-info-list2">
                            <span class="reserve-lookup-info-list-title">예약정보</span>				  				
                      </ul>
                  </div>
                  <div class="reserve-lookup-info-place-5">
                      <ul class="reserve-lookup-info-list5">
                            <span class="reserve-lookup-info-list-title">문의</span>				  				
                      </ul>
                  </div>
                  <div class="reserve-lookup-info-place-6">
                      <ul class="reserve-lookup-info-list6">
            
                            <span class="reserve-lookup-info-list-title">취소</span>				  				
                         		  				
                        					  			
                         			  			
                      </ul>
                  </div>
               </div>
     
         </section>
         
         <c:forEach items="${reserveView }" var="r">
        	<div class="goods_group">
				<ul class="goods_group_list">

		<li id="_rowLi20210708001251CHK2021070820975530" class="goods_pay_item ">
			<div class="goods_item">
				<span class="goods_thumb">${r.reserve_no}</span>
				<div class="goods_info">
					<!-- NV_MID: -->
					<a href="hospitalDetailGo?hospital_no=${r.reserve_hospitalNo }" class="goods">
						<p class="name">
							${r.reserve_hospitalName }
						</p>
						<ul class="info">
							<li class="date"><span class="blind">예약일시</span> ${r.reserve_date }</li>
							<li class="subscription"><span class="blind">예약신청일</span> <fmt:formatDate  value="${r.reserve_writing_date }"/> </li>
						</ul>
					</a>
						<span class="state _statusName">예약확정</span>
					<p class="guide">
								<span>예약이 완료되었습니다.</span> 이용해주셔서 감사합니다.<br>예약확정 이후 <strong>병원에 대한 문의는  문의버튼을 통해 문의해주세요.</strong>
					</p>
				</div>
			</div>
			<div class="seller_item">
				<div class="inner">
						<a href="#" class="state_button qna _click(nmp.front.order.timeline.home.list.shoppingInquiry(/merchant/shoppingInquiry/2021070820975530)) _stopDefault">문의하기</a><!--N=a:lst.qnas-->
				</div>
			</div>
				<div class="button_item">
                                <div class="area_layer">
                                    <a href="#" class="state_button function _click(nmp.front.order.timeline.home.list.rebuyLayerShow(2021070820975530)) _stopDefault">예약취소</a>
                                </div>
				</div>
		</li>
				</ul>
			</div>
			
			</c:forEach>
        
        </div>
        
        
     
		
	</div>

</body>
</html>