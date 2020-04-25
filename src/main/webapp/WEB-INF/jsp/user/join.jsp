<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<c:set var="pageName" value="회원가입"/>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>분통 로그인페이지</title>

<jsp:include page="/WEB-INF/jsp/common/common1.jsp"></jsp:include>+
<script>
	function submitJoinForm(form) {
		form.user_id.value = form.user_id.value.trim();
		if (form.user_id.value.length == 0) {
			alert('로그인ID를 입력해주세요.');
			form.user_id.focus();
			return false;
		}
		form.user_pw.value = form.user_pw.value.trim();
		if (form.user_pw.value.length == 0) {
			alert('로그인PW를 입력해주세요.');
			form.loginPw.focus();
			return false;
		}
		form.pw_Confirm.value = form.pw_Confirm.value.trim();
		if (form.pw_Confirm.value.length == 0) {
			alert('로그인PW확인을 입력해주세요.');
			form.pw_Confirm.focus();
			return false;
		}
		if (form.user_pw.value != form.pw_Confirm.value) {
			alert('로그인PW가 일치하지 않습니다.');
			form.pw_Confirm.focus();
			return false;			
		}
		form.submit();
	}
</script>
</head>
<body>

 <div class="page-wrapper">
    <!-- Preloader -->
    <!-- <div class="preloader"></div> -->
    <!-- Preloader -->



<!--header top-->
 <jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>

<!--header top-->


<!--=================================
=            Page Slider            =
==================================-->
<!-- section -->
		<section class="cta">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="cta-block">
							<form class="con common-form" action="/user/dojoin" method="post" onsubmit="submitJoinForm(this); return false;">
								<label for="id">아이디</label><input type="text" id="id" name="user_id"><br/>
								<label for="pw">비밀번호 </label> <input type="password" id="pw" name="user_pw"><br/>
								<label for="pw_Confirm">비밀번호확인 </label> <input type="password" id="pw_Confirm" name="pw_Confirm"><br/>
								<label for="email">이메일</label>  <input type="text" id="email" name="user_email"><br/>
								<label for="name">이름</label>  <input type="text" id="name" name="user_name"><br/>
								<label for="nikname">닉네임</label>  <input type="text" id="nikname" name="user_nikname"><br/>
								<label for="phone">전화번호</label>  <input type="text" id="phone" name="user_phone"><br/>
								<label for="address">주소</label>  <input type="text" id="address" name="user_address"><br/>
								<input type="submit" value="가입"> <input type="reset"value="취소" onclick="history.back();">
							</form>
						
					</div>
				</div>
			</div>
		</section>
		<!-- section -->

<!-- footer -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
<!-- footer -->
</div>

<%-- <jsp:include page="/WEB-INF/jsp/common/common2.jsp"></jsp:include>	 --%>


</body>
</html>