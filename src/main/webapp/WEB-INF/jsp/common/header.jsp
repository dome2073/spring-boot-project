<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <jsp:include page="/WEB-INF/jsp/common/common1.jsp"></jsp:include>
</head>
<body>
<!--header top-->
<div class="header-top">
      <div class="container clearfix">
            <div class="top-left">
               	<!-- 로고 아이콘 추가시 여기에 -->
            </div>
            <div class="top-right">
                  <ul class="social-links">
                  	<c:if test="${loginedUser!= null}">
						 <a href="<c:url value="/user/doLogout"/>"></a>
                        <li>
                              <a href="<c:url value="/user/doLogout" />">
                                    	로그아웃
                              </a>
                        </li>
                        <li>
                              <a href="<c:url value="/user/mypage" />">
                                   		 마이페이지
                              </a>
                        </li>
                        <li>
                              <a href="#">
                                    1:1문의
                              </a>
                        </li>
                        <li>
                              <a href="#">
                                   	사이트맵
                              </a>
                        </li>
					
					
					</c:if>
					
                    <c:if test="${loginedUser ==null }">
                    
                    	<li>
                              <a href="<c:url value="/user/Login" />">
                                    	로그인
                              </a>
                        </li>
                        <li>
                              <a href="<c:url value="/user/Join" />">
                                   		 회원가입
                              </a>
                        </li>
                        <li>
                              <a href="#">
                                    1:1문의
                              </a>
                        </li>
                        <li>
                              <a href="#">
                                   	사이트맵
                              </a>
                        </li>
                    </c:if>
                  </ul>
            </div>
      </div>
</div>
<!--header top-->

<!--Header Upper-->
<section class="header-uper">
      <div class="container clearfix">
            <div class="logo">
                  <figure>
                        <a href="<c:url value="/" />">
                              <img src="${pageContext.request.contextPath}/resources/images/logotest3.png" alt="">
                        </a>
                  </figure>
            </div>
            <div class="left-side"style="display: inline-block; width: 650px;">
				<!-- Search form -->
			<div class="active-cyan-3 active-cyan-4 mb-4" style="padding-top: 35px; margin-left: 40px;">
			  <form action="#">
			  <input class="form-control" type="text" aria-label="Search" style="display: inline; width: 500px; height: 50px;" >
			  <input type="submit" class="btn-style-one" value="검색" style="height: 50px;">
			  
			  
			  </form>
			</div>
                    
            </div>
      </div>
</section>
<!--Header Upper-->


<!--Main Header-->
<nav class="navbar navbar-default">
      <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                        aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                  </button>
            </div>
            
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav" id="navbar-nav">
                        <li style="margin-left: 150px; margin-right: 50px;"> <a href="<c:url value="/article/find/list?atc_type=습득물 "/>"> 습득물</a> </li>        
                        <li style="margin-right: 50px;"> <a href="<c:url value="/article/lost/list?atc_type=분실물" />">분실물 </a></li>
                        <li style="margin-right: 50px;"> <a href="#"> 습득물 & 분실물 지도 </a></li>               
                        <li style="margin-right: 50px;"> <a href="#"> 정보마당 </a></li>
                        <li style="margin-right: 50px;"><a href="<c:url value="/user/mypage" />">마이페이지</a> </li>
                        <!-- <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown
                                    <span class="caret"></span>
                              </a>
                              <ul class="dropdown-menu">
                                    <li>
                                          <a href="#">Action</a>
                                    </li>
                                    <li>
                                          <a href="#">Another action</a>
                                    </li>
                                    <li>
                                          <a href="#">Something else here</a>
                                    </li>
                                    <li role="separator" class="divider"></li>
                                    <li>
                                          <a href="#">Separated link</a>
                                    </li>
                                    <li role="separator" class="divider"></li>
                                    <li>
                                          <a href="#">One more separated link</a>
                                    </li>
                              </ul>
                        </li> -->
                  </ul>
            </div>
            <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
</nav>
<!--End Main Header -->

</body>
</html>