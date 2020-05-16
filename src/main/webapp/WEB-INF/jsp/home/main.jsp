<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="pageName" value="main"/>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>분통 - 분실물 통합사이트</title>

  
  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  

  <jsp:include page="/WEB-INF/jsp/common/common1.jsp"></jsp:include>
  
</head>

<style>
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
<body onload="init(this.productWrite);">

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
<%-- <jsp:include page="/WEB-INF/jsp/common/section.jsp"></jsp:include> --%>
<section class="cta">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="cta-block">
                    <div class="emmergency item">
                        <i class="fa fa-phone"></i>
                        <h2>분실 휴대폰 찾기</h2>                      
                        <p> 분통에서는 분실신고가 접수된 휴대폰 정보와 휴대폰 찾기 서비스를 제공하고 있습니다</p>
                    </div>
                    <div class="top-doctor item">
                        <i class="fa fa-stethoscope"></i>
                        <h2>분실물 신고</h2>
                        <p>잃어버린 물건을 온라인으로 신고할 수 있습니다. 이 기능은 회원가입 후 이용이 가능합니다.</p>
                        <a href="#" class="btn btn-main">Read more</a>
                    </div>
                    <div class="working-time item">
                        <i class="fa fa-hourglass-o"></i>
                        <h2>유실물 센터 정보</h2>
                        <ul class="w-hours">
                            <li>Mon - Fri  - <span>8:00 - 17:00</span></li>
                            <li>Mon - Fri  - <span>8:00 - 17:00</span></li>
                            <li>Mon - Fri  - <span>8:00 - 17:00</span></li>
                        </ul>
                    </div>
                    <div class="top-doctor item">
                        <i class="fa fa-stethoscope"></i>
                        <h2>1 : 1 문의</h2>
                        <p>궁금하신 사항을 1:1 문의로 남길 수 있습니다.</p>
                        <a href="#" class="btn btn-main">Read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container" style="height: 250px; border: 3px solid #48BDC5;  width:1140px;">
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
						
						
						<div class="qnb5_r" style="float:right; width:450px; padding: 20px;">
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
    </div>
</section>

<!-- section -->

<!-- footer -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
<!-- footer -->









<script src="<c:url value="/resources/plugins/jquery.js" />"></script>
<script src="<c:url value="/resources/plugins/bootstrap.min.js" />">  </script>
<script src="<c:url value="/resources/plugins/bootstrap-select.min.js" />">  </script>
<!-- Slick Slider -->
<script src="<c:url value="/resources/plugins/slick/slick.min.js" />"></script>
<!-- FancyBox -->
<script src="<c:url value="/resources/plugins/fancybox/jquery.fancybox.min.js" />">  </script>

<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
<script src="<c:url value="/resources/plugins/google-map/gmap.js" />">  </script>

<script src="<c:url value="/resources/plugins/validate.js" />">  </script>
<script src="<c:url value="/resources/plugins/wow.js" />">  </script>
<script src="<c:url value="/resources/plugins/jquery-ui.js" />">  </script>
<script src="<c:url value="/resources/plugins/timePicker.js" />">  </script>
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />">  </script>
<script src="<c:url value="/resources/js/script.js" />"> </script>

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
</body>

</html>

