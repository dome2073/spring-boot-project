<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>커뮤니티 사이트 - 게시물 리스트</title>
<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<jsp:include page="/WEB-INF/jsp/common/common1.jsp"></jsp:include>
</head>
<body>
	<div class="page-wrapper">
		<!--header top-->
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>

		<!--header top-->
		<!-- section -->
		<section class="cta">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="cta-block">
							<div>
								<h1>습득물 리스트</h1>

								<table>
								<th>관리번호</th>
								<th>습득물명</th>
								<th>분실자명</th>
								<th>보관장소</th>
								<th>연락처</th>
								<th>습득일자</th>
								<c:forEach items="${list}" var="article">
									
								
								</table>
									


								</c:forEach>

							</div>
							<!-- section -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- footer -->
		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
		<!-- footer -->
	</div>
</body>
</html>
