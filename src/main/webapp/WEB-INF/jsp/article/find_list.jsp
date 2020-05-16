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
.qnb5_l label, .qnb5_r label{
 width: 70px;
 margin-top: 5px;
}
.qnb5_l input[type="text"], .qnb5_r input[type="text"], .qnb5_l select{
 width: 240px;
 height: 24px;;
}
.qnb5_l .hasDatepicker{
	width:80px;
}
</style>
<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<jsp:include page="/WEB-INF/jsp/common/common1.jsp"></jsp:include>
</head>

<link rel="stylesheet" href="<c:url value="/resources/plugins/jquery-ui-1.12.1/jquery-ui.min.css" />">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="/resources/plugins/jquery-ui-1.12.1/jquery-ui.min.js" />"></script>

<script src="<c:url value="/resources/plugins/jquery-ui-1.12.1/datepicker-ko.js" />"></script>


<body onload="init(this.productWrite);">
	<div class="page-wrapper">
		<!--header top-->
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>

		<!--header top-->
		<!-- section -->
		<section class="cta">
			
			<div class="container" style="float:left; width: 15%; height: 700px; text-align: center;">
			<div>
				<h1 style="color: #48BDC5;">습득물</h1>
				<hr/>
				<h4><a href="#">습득물 검색</a></h4>
				<hr/>
				<h4><a href="#"> 습득물 핸드폰 검색</a></h4>
				<hr/>
				<h4><a href="#">핸드폰찾기 콜센터 검색</a></h4>
				<hr/>
			</div>
			</div>
			
			<div class="container" style="height: 250px; border: 3px solid #48BDC5;  ">
				<div class="row">
					<div class="col-md-12">
						
						<form name="productWrite" id="" action="/article/search_find" method="post">
							<div class="qnb5_l" style="display: block; width:620px; float: left; padding: 20px;">
							<label for="PRDT_CL_NM">분류명</label>
							<select id="first" style="width: 150px;" onchange="itemChange(this.value);"></select> 
							<select id="second" style="width: 150px;" onchange="itemChange2(this.value);"></select><br/>
							
							
							<label for="start_date">기간</label>
							<input type="text" name="start_date" id="start_date" size="12" style="width: 80px; margin-right: 5px;" /> ~ <input type="text" name="end_date" id="end_date" size="12" style="width: 80px; margin-right: 5px;" /><br/>
							<label for="atc_name">습득물명</label>
							<input type="text" id="atc_name" name=""/> <br>
							<label for="atc_place">보관장소</label>
							<input type="text" id="atc_place" name=""/> <br>
								<p>
								<input type="submit" class="btn-style-one" value="검색" style="float: right;">
							
							</p>
						</div>
						
						
						<div class="qnb5_r" style="float:right; width:500px; padding: 20px;">
							<label for="area">습득지역</label>
							<select id="area" name="">
								<option>선택</option>
								<option>서울특별시</option>
								<option>강원도</option>
								<option>경기도</option>
								<option>경상남도</option>
								<option>경상북도</option>
								<option>광주광역시</option>
								<option>대구광역시</option>
								<option>부산광역시</option>
								<option>울산광역시</option>
								<option>인천광역시</option>
								<option>전라남도</option>
								<option>전라북도</option>
								<option>충청남도</option>
								<option>충청북도</option>
								<option>제주특별자치도</option>
								<option>세종특별자치시</option>
								<option>해외</option>
								<option>기타</option>
							
								
							</select><br/>
							
							<label for="분실자명">분실자명</label>
							<input type="text" id="분실자명" name=""/> <br/>
							<label for="관리번호">관리번호</label>
							<input type="text" id="관리번호" name=""/> <br/>
						</div>
							
							
							</form>
						</div>
					
						
						</div>
						
						
						</div>
						
			<section class="cta">			
			<div class="container">
					<div class="row">
					<div class="col-md-12">
						<div class="cta-block">
						
							<!-- 습득물 게시판 리스트 -->
							<div class="find_listBox">
								<table class="type01"
									summary="관리번호, 습득물명, 분실자명, 보관장소, 습득일자, 조회수">
									<caption> 습득물 목록 조회 결과 테이블</caption>
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
									<a href="<c:url value='/article/find/list?atc_type=습득물&page=${page}'/>">${page}</a>
								</c:forEach>
							</div>
							</div>
							<!-- section -->
						</div>
					</div>
				
			</div>
			</div>
		</section>
			
<script type="text/javascript">
//<![CDATA[
$(function(){

	
	$("#start_date").datepicker({
		showOn: "button",
        buttonImage: "/resources/plugins/jquery-ui-1.12.1/images/icon2.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
	
	$("#end_date").datepicker({
		showOn: "button",
        buttonImage: "/resources/plugins/jquery-ui-1.12.1/images/icon2.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});
//]]>

var f_selbox = new Array("가방", "귀금속", "도서용품", "서류", "산업용품", "쇼핑백", "스포츠용품", "악기", "유가증권", "의류", "자동차", "전자기기", "지갑", "증명서", "컴퓨터", "카드" ,"현금", "휴대폰", "기타물품");
var f_vselbox = new Array(1, 2, 3, 4, 5, 6,7,8,9,10,11,12,13,14,15,16,17,18,19);

function init(f) {
    var f_sel = f.first;
    var s_sel = f.second;
    
    f_sel.options[0] = new Option("선택", "");
    s_sel.options[0] = new Option("선택", "");

    for (var i = 0; i < f_selbox.length; i++) {
        f_sel.options[i + 1] = new Option(f_selbox[i], f_vselbox[i]);
    }
}

function itemChange(sVal) {
    var f = document.productWrite;
    var opt = $("#second").length;
	
    console.log(sVal)
    if (sVal == "") {
        s_selbox = new Array("선택");
        s_vselbox = new Array("");
    } else if (sVal == "1") {
        s_selbox = new Array("전체", "여성용가방", "남성용가방", "기타가방");
        s_vselbox = new Array(11, 12, 13, 14);
    } else if (sVal == 2) {
        s_selbox = new Array("전체","반지","목걸이","귀걸이","시계","선글라스","안경","기타");
        s_vselbox = new Array(15, 16, 17, 18, 19, 20,21,22);
    } else if (sVal == 3) {
        s_selbox = new Array("전체","학습서적", "소설", "컴퓨터서적", "만화책", "기타서적");
        s_vselbox = new Array(23,24,25,26,27,28);
    } else if (sVal == 4) {
        s_selbox = new Array("전체", "기타물품");
        s_vselbox = new Array(29,30);
    } else if (sVal == 5) {
        s_selbox = new Array("전체","기타물품");
        s_vselbox = new Array(31,32);
    } else if (sVal == 6) {
        s_selbox = new Array("전체")
        s_vselbox = new Array(33);
    } else if (sVal == 7) {
        s_selbox = new Array("전체","수영복","수영물품","기타물품")
        s_vselbox = new Array(34,35,36,37);
    } else if (sVal == 8) {
        s_selbox = new Array("전체","건반악기", "관악기", "타악기", "현악기", "기타악기");
        s_vselbox = new Array(38,39,40,41,42,43);
    } else if (sVal == 9) {
        s_selbox = new Array("전체", "어음", "상품권", "채권", "기타");
        s_vselbox = new Array(44,45,46,47,48);
    } else if (sVal == 10) {
        s_selbox = new Array("전체", "여성의류", "남성의류", "아기의류", "모자", "신발", "기타의류");
        s_vselbox = new Array(49,50,51,52,53,54,55);
    } else if (sVal == 11) {
        s_selbox = new Array("전체", "자동차열쇠", "네비게이션", "자동차번호판", "임시번호판", "기타용품");
        s_vselbox = new Array(56,57,58,59,60,61);
    } else if (sVal == 12) {
        s_selbox = new Array("전체", "PMP", "MP3", "PDA", "카메라", "전자수첩", "기타용품");
        s_vselbox = new Array(62,63,64,65,66,67,68);
    } else if (sVal ==13) {
        s_selbox = new Array("전체", "여성용 지갑", "남성용 지갑", "기타 지갑");
        s_vselbox = new Array(69,70,71,72);
    } else if (sVal == 14) {
        s_selbox = new Array("전체", "신분증", "면허증", "여권", "기타");
        s_vselbox = new Array(73,74,75,76);
    } else if (sVal == 15) {
        s_selbox = new Array("전체", "삼성노트북", "LG노트북","삼보노트북", "HP노트북", "기타");
        s_vselbox = new Array(77,78,79,80,81,82);
    } else if (sVal == 16) {
        s_selbox = new Array("전체", "신용(체크)카드", "일반카드", "기타카드");
        s_vselbox = new Array(83,84,85,86);
        
    } else if (sVal == 17) {
        s_selbox = new Array("전체", "현금","수표", "외화", "기타" );
        s_vselbox = new Array(87,88,89,90,91);
        
    } else if (sVal == 18) {
        s_selbox = new Array("전체","모토로라휴대폰","삼성휴대폰", "LG휴대폰", "스카이휴대폰", "아이폰", "기타통신기기")
        s_vselbox = new Array(92,93,94,95,96,97,98);
    }
    else if (sVal == 19) {
        s_selbox = new Array("전체")
        s_vselbox = new Array(99);
    }

  for (var i = 0; i < 10; i++) {
        f.second.options[0] = null;
       
    } 
 
    for (k = 0; k < s_selbox.length; k++) {
        f.second.options[k] = new Option(s_selbox[k], s_vselbox[k]);
    }
}
</script>

</section>

		<!-- footer -->
		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
		<!-- footer -->
	</div>


	
</body>
</html>
