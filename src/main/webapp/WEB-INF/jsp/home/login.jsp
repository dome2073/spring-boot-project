<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>분통 로그인페이지</title>

<jsp:include page="/WEB-INF/jsp/common/common1.jsp"></jsp:include>
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
							<form action="user/reg">
								<label for="id">아이디</label><input type="text" id="id" name="user_id"><br/>
								<label for="pw">비밀번호 </label> <input type="text" id="pw" name="user_pw"><br/>
								<label for="email">이메일</label>  <input type="text" id="email" name="user_email"><br/>
								<label for="name">이름</label>  <input type="text" id="name" name="user_name"><br/>
								<label for="nikname">닉네임</label>  <input type="text" id="nikname" name="user_nikname"><br/>
								<label for="phone">전화번호</label>  <input type="text" id="phone" name="user_phone"><br/>
								<label for="address">주소</label>  <input type="text" id="address" name="user_address"><br/>
								
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