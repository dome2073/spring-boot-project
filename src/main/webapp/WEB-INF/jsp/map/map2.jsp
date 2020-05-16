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

<script>


</script>

	
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
							<div id="map" style="width:100%;height:550px;">
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=51fe9a95b606e063c706a1c0fe21ee5b&libraries=services,clusterer"></script>
							
							<script type="text/javascript">
							// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
							var infowindow = new kakao.maps.InfoWindow({zIndex:1});

							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							    mapOption = {
							        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
							        level: 14 // 지도의 확대 레벨
							    };  
							
							
							// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
							if (navigator.geolocation) {
							    
							    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
							    navigator.geolocation.getCurrentPosition(function(position) {
							        
							        var lat = position.coords.latitude, // 위도
							            lon = position.coords.longitude; // 경도
							        
							        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
							            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
							        
							        // 마커와 인포윈도우를 표시합니다
							        displayMarker2(locPosition, message);
							            
							      });
							    
							} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
							    
							    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
							        message = 'geolocation을 사용할수 없어요..'
							        
							    displayMarker2(locPosition, message);
							}
							
							// 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
						    var clusterer = new kakao.maps.MarkerClusterer({
						        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
						        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
						        minLevel: 10, // 클러스터 할 최소 지도 레벨
						        disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
						    });
							// 장소 검색 객체를 생성합니다
							var ps = new kakao.maps.services.Places(); 
						
							var markers = [];
							// 지도에 마커를 표시하는 함수입니다
							function displayMarker(place) {
							    
								
							    // 마커를 생성하고 지도에 표시합니다
							    
								
									
								    var marker = new kakao.maps.Marker({
								    	
								        map: map,
								        position: new kakao.maps.LatLng(place.y, place.x)
									   
								    	
								    });
								
							
								    // 마커에 클릭이벤트를 등록합니다
								    kakao.maps.event.addListener(marker, 'click', function() {
								        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
								        
									        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
									        infowindow.open(map, marker);
									       
								        
							    });
							    
								    markers.push(marker);
							}
							
							
							console.log(markers);
							
							// 지도에 마커와 인포윈도우를 표시하는 함수입니다
							function displayMarker2(locPosition, message) {
							
							
							/* 	<c:forEach items="${placeList}" var="list">
									ps.keywordSearch("${list}", placesSearchCB);
									console.log("${list}")
									
								</c:forEach>
								 */
								 ps.keywordSearch("경일운수", placesSearchCB);
						
							    
							    // 지도 중심좌표를 접속위치로 변경합니다
							    /* map.setCenter(locPosition);    */
							    
							    
							}    
							
		
							// 키워드 검색 완료 시 호출되는 콜백함수 입니다
							function placesSearchCB (data, status, pagination) {
							    if (status === kakao.maps.services.Status.OK) {

							        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
							        // LatLngBounds 객체에 좌표를 추가합니다
							        var bounds = new kakao.maps.LatLngBounds();

							        for (var i=0; i<data.length; i++) {

							            if(data[i].place_name =="경일운수"){
							            	console.log(data[i]); 
								        	displayMarker(data[i]);    
								        	
								            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));       
								           
								            
								            
								      
							        }       

							         map.setBounds(bounds);
							    } 
							    }
							} 

							
							   // 마커 클러스터러를 생성합니다
						    // 마커 클러스터러를 생성할 때 disableClickZoom 값을 true로 지정하지 않은 경우
						    // 클러스터 마커를 클릭했을 때 클러스터 객체가 포함하는 마커들이 모두 잘 보이도록 지도의 레벨과 영역을 변경합니다
						    // 이 예제에서는 disableClickZoom 값을 true로 설정하여 기본 클릭 동작을 막고
						    // 클러스터 마커를 클릭했을 때 클릭된 클러스터 마커의 위치를 기준으로 지도를 1레벨씩 확대합니다
						    var clusterer = new kakao.maps.MarkerClusterer({
						        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
						        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
						        minLevel: 10, // 클러스터 할 최소 지도 레벨
						        disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
						    });
							
						   

						    // 마커 클러스터러에 클릭이벤트를 등록합니다
						    // 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우
						    // 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있습니다
						    kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {

						        // 현재 지도 레벨에서 1레벨 확대한 레벨
						        var level = map.getLevel()-1;

						        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
						        map.setLevel(level, {anchor: cluster.getCenter()});
						    });   
							</script>							
							
							</script>
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