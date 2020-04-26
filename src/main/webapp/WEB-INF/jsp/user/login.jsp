<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

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
						<div class="cta-block">
							<form class= "con common-form" action="/user/doLogin" method="post" onsubmit="submitLoginForm(this); return false;" >
								<label for="id">아이디</label><input type="text" id="id" name="user_id"><br/>
								<label for="pw">비밀번호 </label> <input type="password" id="pw" name="user_pw"><br/>
								<input type="submit" value="로그인"> <input type="reset"value="취소" onclick="history.back();">
								
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