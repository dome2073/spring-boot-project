<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>커뮤니티 사이트 - 게시물 리스트</title>
<style>
.type01 thead tr th {
	text-align: center;
}
</style>
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
							<!-- 습득물 게시판 리스트 -->
							<div class="find_listBox">
								<table class="type01"
									summary="관리번호, 습득물명, 분실자명, 보관장소, 습득일자, 조회수">
									<caption>습득물 목록 조회 결과 테이블</caption>
									<colgroup>
										<col style="width: 160px" />
										<col style="width: 220px" />
										<col style="width:" />
										<col style="width: 120px" />
										<col style="width: 100px" />
										<col style="width: 100px" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="first">관리번호</th>
											<th scope="col">습득물명</th>
											<th scope="col">분실자명</th>
											<th scope="col">보관장소</th>
											<th scope="col">연락처</th>
											<th scope="col">습득일자</th>
											<th scope="col">접수상태</th>
											<th scope="col">조회수</th>
										</tr>
									</thead>
									<tbody>
										<!-- 테이블 반복 구간 시작 -->
										<c:forEach items="${list.articleList}" var="article">
											<tr>
												<td scope="row" title="${article.atc_num}" class="first ">
													<a
													href="<c:url value="/article/find/detail?atc_num=${article.atc_num}"/>">${article.atc_num}</a>
												</td>
												<td scope="row" title="${article.atc_name}" class="first ">
													<a
													href="<c:url value="/article/find/detail?atc_num=${article.atc_num}"/>">${article.atc_name}</a>
												</td>
												<td scope="row" title="정대윤" class="first "><a
													href="<c:url value="/article/find/detail?atc_num=${article.atc_num}"/>">정대윤</a></td>
												<td scope="row" title="${article.kp_id}" class="first ">
													<a
													href="<c:url value="/article/find/detail?atc_num=${article.atc_num}"/>">${article.kp_id}</a>
												</td>

												<td scope="row" title="${article.tel}" class="first ">
													<a
													href="<c:url value="/article/find/detail?atc_num=${article.atc_num}"/>">${article.tel}</a>
												</td>
												<td scope="row" title="${article.atc_status}" class="first ">
													<a
													href="<c:url value="/article/find/detail?atc_num=${article.atc_num}"/>">${article.atc_status}</a>
												</td>
												<td scope="row" title="${article.atc_Date}" class="first ">
													<a
													href="<c:url value="/article/find/detail?atc_num=${article.atc_num}"/>">${article.atc_Date}</a>
												</td>
												<td scope="row" title="${article.atc_hit}" class="first "><p>${article.atc_hit}</p></td>

											</tr>


										</c:forEach>



										<!-- //테이블 반복 구간 끝 -->
									</tbody>

								</table>
							

							<div class="page">
								<c:forEach var="page" begin="1" end="${list.pageTotalCount}">
									<a href="<c:url value='/article/find/list?atc_type=습득물&page=${page}'/>">${page}
								</c:forEach>
							</div>
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


	</script>
</body>
</html>
