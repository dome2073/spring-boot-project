<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
.table_1>h3{
	margin-top: 50px;
}
</style>
<meta charset="UTF-8">
<title>분통 로그인페이지</title>

<jsp:include page="/WEB-INF/jsp/common/common1.jsp"></jsp:include>
<script>
	function submitLoginForm(form) {
		form.user_id.value = form.user_id.value.trim();
		if (form.user_id.value.length == 0) {
			alert('로그인ID를 입력해주세요.');
			form.user_id.focus();
			return false;
		}
		form.user_pw.value = form.user_pw.value.trim();
		if (form.user_pw.value.length == 0) {
			alert('로그인PW를 입력해주세요.');
			form.user_pw.focus();
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
						
							<div class="table_1">
								<h3>유저번호 :${loginedUser.user_num} </h3>
								<h3>아이디 : ${loginedUser.user_id}</h3>
								<h3>비밀번호 ${loginedUser.user_pw}</h3>
								<h3>이메일 ${loginedUser.user_email}</h3>
								<h3>이름 ${loginedUser.user_name} </h3>
								<h3>닉네임 ${loginedUser.user_nikname}</h3>
								<h3>전화번호 ${loginedUser.user_phone}</h3>
								<h3>주소 ${loginedUser.user_address} </h3>
								<h3>가입일 ${loginedUser.user_date} </h3>
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