<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="text-align: center; margin-top: 10px;">
<span style="font-size: 20px; font-weight: 15px;">"산책가자"이용약관</span><br>
<c:choose>
<c:when test="${param.member_linkWhere == 1 }">
<span>-개인-</span>
</c:when>
<c:otherwise>
<span>-기업-</span></c:otherwise>
</c:choose>
<div>
<div>회원약관</div>

<textarea rows="10" cols="150">
제1조 (목적)
이 약관은 산책가자에서 제공하는 인터넷 관련 서비스(이하 “서비스”)를 이용함에 있어 이용자와 산책가자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.
제2조 (정의)
1. 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
① 이용계약 : 서비스 이용과 관련하여 산책가자와 이용자 간에 체결하는 계약
② 가입 : 산책가자이 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위
③ 회원 : 산책가자에 회원가입에 필요한 개인 정보를 제공하여 회원 등록을 한 자로서, 산책가자의 정보 및 서비스를 이용할 수 있는 자
④ 이용자번호(ID) : 이용고객의 식별과 이용자가 서비스 이용을 위하여 이용자가 정하고 산책가자이 승인하는 문자와 숫자의 조합
⑤ 비밀번호(PW) : 이용자가 등록회원과 동일인인지 신원을 확인하고 통신상의 자신의 개인정보보호를 위하여 이용자 자신이 정한 문자와 숫자의 조합
⑥ 게시물 : 회원이 서비스를 이용하면서 게시한 글, 이미지, 동영상 등 각종 파일과 링크 등
⑦ 탈퇴(해지) : 서비스 또는 회원이 이용계약을 종료하는 행위
2. 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도약관 및 이용규정에서 정의합니다.
제3조(약관의 명시와 개정)
1. 산책가자은 이 약관의 내용과 주소지, 관리자의 성명, 개인정보보호 담당자의 성명, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 누리집의 초기 서비스화면(전면)에 게시합니다.
2. 산책가자은 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
3. 산책가자가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 누리집의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일 까지 공지합니다.
4. 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 산책가자에서 책임지지 않습니다.
5. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니 하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
6. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 의합니다.
제4조(이용 계약의 성립)
1. 이용계약은 이용자가 본 이용약관 내용에 대한 동의와 이용신청에 대하여 누리집의 이용승낙으로 성립합니다.
2. 본 이용약관에 대한 동의는 이용신청 당시 해당 누리집의 '동의함' 버튼을 누름으로써 의사표시를 합니다.
제5조(회원가입 및 탈퇴)
1. 회원가입은 신청자가 온라인으로 산책가자에서 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.

위 약관을 모두 숙지하였으며 회원가입에 동의합니다.



--------help me
</textarea>
</div>

<div>
<div>개인정보 수집동의</div>

<textarea rows="10" cols="150">
가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
만14세 미만 아동 회원가입
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
단체아이디 회원가입
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
- 선택항목 : 대표 홈페이지, 대표 팩스번호
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.
넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다.
- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보
다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.
- 신용카드 결제시 : 카드사명, 카드번호 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
- 계좌이체시 : 은행명, 계좌번호 등
- 상품권 이용시 : 상품권 번호
나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다.
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
- 협력회사로부터의 제공
- 생성정보 수집 툴을 통한 수집



--------help me
</textarea>
</div>

<label class="agree" for="agree">
<input type="checkbox" id="agree" onchange="agree()">위의 내용을 읽었으며, 내용에 동의합니다 
</label><br>
<c:choose>
<c:when test="${param.member_linkWhere == 1 }">
<button id="join_btn" disabled="disabled" onclick="location.href='joingo?member_linkWhere=1'">가입하기</button>
</c:when>
<c:otherwise>
<button id="join_btn" disabled="disabled" onclick="location.href='joingo.business'">가입하기</button>
</c:otherwise>
</c:choose>

</div>
</body>
<script type="text/javascript">
	function agree() {
		let btn = document.getElementById('join_btn');
		let a = btn.disabled;
		if (a) {
			btn.disabled = false;
		} else {
			btn.disabled = true;

		}
	}
</script>
</html>