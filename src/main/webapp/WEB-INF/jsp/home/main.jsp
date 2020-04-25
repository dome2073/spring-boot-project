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
  
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick/slick-theme.css">
  <!-- FancyBox -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.min.css">
  
  <!-- Stylesheets -->
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
  
  
</head>


<body>

  <div class="page-wrapper">
    <!-- Preloader -->
    <!-- <div class="preloader"></div> -->
    <!-- Preloader -->

	

<!--header top-->
 <jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>

<!--header top-->
<c:if test="${loginedUser != null }">
	${loginedUser}
</c:if>

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
    
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="cta-block">
                    <div class="top-doctor item" style="float: left; position: relative; max-width: 1170px; flex: inherit;">
                        
                        <form action="">
                         <h3>분실물 상세검색</h3>
                        <!-- 상세검색 왼쪽 -->
                        <div class="inputbox_l" style="float: left;">
                        <!-- 종류 -->
                        <fieldset class="lost_inputbox">
                        	
                        	<label for="PRDT_CL_NM">종류</label>
                        	<input type="text" name="PRDT_CL_NM" id="PRDT_CL_NM" class value readonly="readonly" >
                        	<button type="button" onclick="" class="" >찾기</button>
                        	<input type="hidden" name="F_PROT_CL_cd01" id="prdtCd01_0">
                        	<input type="hidden" name="F_PROT_CL_cd02" id="prdtCd02_0">
                        </fieldset>
                        <!-- 습득물 명 -->
                        <fieldset class="lost_inputbox">
							<label for="F_PRDT_NM">습득물명</label> 
							<input type="text" name="F_PRDT_NM" id="F_PRDT_NM" class="search_text korean" value="" title="습득물명 입력"/>
							</fieldset>
						<!-- 분실자 명 -->
						<fieldset class="lost_inputbox">
							<label for="F_IN_NM">분실자 이름</label> 
							<input type="text" name="F_IN_NM" id="F_IN_NM" class="search_text korean" value="" title="분실자명 입력" />
						</fieldset>
						
                         <!-- 습득기간 -->
						<fieldset class="lost_inputbox">
							<label for="startYmdInput1">습득기간</label> 
							<input type="text" name="F_START_YMD" class="startYmdInput1" class="search_text isNumber" value="" title="습득물명 입력"/>
							<button type="button" onclick="" class="" >달력</button>
							<input type="text" name="F_END_YMD" class="endYmdInput1" class="search_text isNumber" value="" title="습득물명 입력"/>
							<button type="button" onclick="" class="" >달력</button>
						</fieldset>
						
						</div>
						
						<div class="inputbox_r" style="float:right;">
							<fieldset class="lost_inputbox">
								
								<label for="F_IN_NM">분실자 이름</label> <input type="text" name="F_IN_NM" id="F_IN_NM" class="search_text korean" value="" title="분실자명 입력" />
							</fieldset>
							
						
						
							<fieldset class="lost_inputbox">
								
								<label for="F_FD_LCT_CD">습득지역</label> 
								<select name="F_FD_LCT_CD" id="F_FD_LCT_CD" class="search_text1" title="습득지역 선택">
									<option selected="selected" value="">선택</option>
								</select>
							</fieldset>
							
							<fieldset class="lost_inputbox">
								
								<label for="F_PLACE_SE_CD">습득장소</label>
								<select name="F_PLACE_SE_CD" id="F_PLACE_SE_CD" class="search_text1"  title="습득장소 선택">
									<option selected="selected" value=''>전체</option>
								</select>
							</fieldset>
							<fieldset class="lost_inputbox">
								
								<label for="site">접수구분</label>
								<select name="F_SITE" id="site"  title="접수구분 선택">
									<option selected="selected" value=''>선택</option>
									<option  value='F'>경찰관서</option>
									<option  value='V'>경찰이외의기관(지하철,공항등)</option>
								</select>					
							</fieldset>
						<p>
							<button type="button" class="btn_01" onclick="fn_fnd_search();" title="습득물 상세 검색">검색</button>
						</p>
						</div>
					</form>
                         </div>
                    </div>
                   
                    
                </div>
            </div>
        </div>
    </div>
</section>

<!-- section -->

<!-- footer -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
<!-- footer -->


</div>
<!--End pagewrapper-->


<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target=".header-top">
  <span class="icon fa fa-angle-up"></span>
</div>


<script src="<c:url value="/resources/plugins/jquery.js" />">
<script src="<c:url value="/resources/plugins/bootstrap.min.js" />">  
<script src="<c:url value="/resources/plugins/bootstrap-select.min.js" />">  
<!-- Slick Slider -->
<script src="<c:url value="/resources/plugins/slick/slick.min.js" />">
<!-- FancyBox -->
<script src="<c:url value="/resources/plugins/fancybox/jquery.fancybox.min.js" />">  

<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
<script src="<c:url value="/resources/plugins/google-map/gmap.js" />">  

<script src="<c:url value="/resources/plugins/validate.js" />">  
<script src="<c:url value="/resources/plugins/wow.js" />">  
<script src="<c:url value="/resources/plugins/jquery-ui.js" />">  
<script src="<c:url value="/resources/plugins/timePicker.js" />">  
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />">  
<script src="<c:url value="/resources/js/script.js" />"> 

</body>

</html>

