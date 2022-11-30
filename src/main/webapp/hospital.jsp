<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Boto | Photography HTML Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="Boto Photo Studio HTML Template">
	<meta name="keywords" content="photo, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/modalogin.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>

	<!-- bootstrap  -->
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
	<!-- font -->
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
	

    <style>
        #button {
                text-align: center;
        }
        .map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
        .map_wrap {position:relative;width:100%;height:500px;}
        #category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
        #category li {float:left;list-style: none;width:80px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
        #category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
        #category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
        #category li .bank {background-position: -10px 0;}
        #category li .mart {background-position: -10px -36px;}
        #category li .pharmacy {background-position: -10px -72px;} /* 병원아이콘 위치 */
        .placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
        .placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
        .placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
        .placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
        .placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
        .placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
        .placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
        .placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
        .placeinfo .tel {color:#0f7833;}
        .placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
        </style>
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
    <% MemberDTO dto = (MemberDTO)session.getAttribute("user"); %>
    
	<!-- Modal -->
	<div class="container">
		<!-- <button type="button" class="btn btn-info btn-round" data-toggle="modal" data-target="#loginModal">
		  Login
		</button>   -->
	</div>
	  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
		  <div class="modal-content">
			<div class="modal-header border-bottom-0">
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">×</span>
			  </button>
			</div>
			<div class="modal-body">
			  <div class="form-title text-center">
				<h4>Login</h4>
			  </div>
			  <div class="d-flex flex-column text-center">
				<form action="mem_login" method="post">
				  <div class="form-group">
					<input type="hidden" name = "url" value="hospital.jsp">
					<input type="text" name ="id" class="form-control" id="email1"placeholder="아이디를 입력하세요">
				  </div>
				  <div class="form-group">
					<input type="password" name ="pw" class="form-control" id="password1" placeholder="비밀번호를 입력하세요">
				  </div>
				  <button type="submit" class="btn btn-info btn-block btn-round">Login</button>
				</form>
				
				<div class="text-center text-muted delimiter">or use a social network</div>
			    <div class="d-flex justify-content-center social-buttons">
				  <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Google">
					<i class="fab fa-google"></i>
				  </button>
				  <button type="button" onclick="fnFbCustomLogin();" class="btn btn-secondary btn-round"  data-toggle="tooltip" data-placement="top" title="Facebook">
					<i class="fab fa-facebook"></i>
				  </button>
				  <button type="button" class="btn btn-secondary btn-round" data-toggle="tooltip" data-placement="top" title="Instagram">
					<i class="fab fa-instagram"></i>
				  </button>
			  </div>
			</div>
		   </div>
			<div class="modal-footer d-flex justify-content-center">
			  <div class="signup-section">Not a member yet? <a href="join.jsp" class="text-info"> Sign Up</a>.</div>
			</div>
		</div>
	</div>
	</div>
	<!-- login modal 끝 -->

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section -->
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-4 col-md-3 order-2 order-sm-1">
					<div class="header__social">
                        <!-- 좌측 상단 소셜 공유 아이콘 -->
					<% if(dto==null){ %>
						<a data-toggle="modal" href="#loginModal"><i class="login">Login</i></a>
						<a href="join.jsp"><i class="join" >Join</i></a>
						<%}else{ %>
						<form action="LogoutService">
						<input type="hidden" name = "url" value="hospital.jsp" >
						<button type="submit" style=" background: none;
	border: 0;
	outline: 0;" ><i class="login">logout</i></button>
						</form>
				  		<%} %> 
						
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<a href="./index.jsp" class="site-logo" >
						<img src="img/logo.png" alt="" width=230px; height=230px;>
					</a>
				</div>
				<div class="col-sm-4 col-md-3 order-3 order-sm-3">
					<div class="header__switches">
						<!-- <a href="#" class="search-switch"><i class="fa fa-search"></i></a> -->
						<a href="#" class="nav-switch"><i class="fa fa-bars"></i></a>
						<% if (dto!=null) {%>
						<form action="markup_show" method="post">
						<input type="hidden" name="id" value=<%=dto.getMem_id() %>>
						<button type="submit"><i class="fa fa-bookmark"></i></button>
						</form>
						<!-- <a href="bookmark.jsp"><i class="fa fa-bookmark"></i></a> -->
						<% } %>
					</div>
				</div>
			</div>
			<nav class="main__menu">
				<ul class="nav__menu">
				<% if(dto!=null&&dto.getMem_id().equals("admin")){ %>
					<li><a href="user_manage" class="menu--active">회원 관리</a></li>
					<li><a href="sup_manage" class="menu--active">영양제 관리</a></li>				
					<%} else{ %> 
					<li><a href="./index.jsp" class="menu--active">홈</a></li>
					<li><a href="best_show">제품 보기</a>
						<ul class="sub__menu">
							<li><a href="sup_show_cns">종합 영양제</a></li>
							<li><a href="sup_show_lutein">루테인</a></li>
							<li><a href="sup_show_cvita">비타민E</a></li>
							<li><a href="sup_show_vitaA">비타민A</a></li>
							<li><a href="sup_show_vitaB">비타민B</a></li>
							<li><a href="sup_show_vitaC">비타민C</a></li>
							<li><a href="sup_show_vitaD">비타민D</a></li>
							<li><a href="sup_show_omega">오메가3</a></li>
							<li><a href="sup_show_milk">밀크시슬</a></li>
							<li><a href="sup_show_iron">철분</a></li>
							<li><a href="sup_show_mag">마그네슘</a></li>
							<li><a href="sup_show_zinc">아연</a></li>
							<li><a href="sup_show_pro">프로폴리스</a></li>
							<li><a href="sup_show_lacto">유산균</a></li>
						</ul></li>
					<li><a href="./suggest2.jsp" target="_blank">영양제 추천</a></li>
					<li><a href="./hospital.jsp">가까운 병원 찾기</a></li>
					<%} %>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header 끝 -->
<!--     <div class="map_wrap">
		<div class="font_size">가까운 병원 찾기</div>
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	    <div id="button" >
		<button style="width:81px; height:65px; background-color:white; font-size:18px" type="button" id="getMyPositionBtn" onclick="getCurrentPosBtn()">내 위치 가져오기</button>
		</div>
	    <ul id="category">
	        <li id="HP8" data-order="2"> 
	            <span class="category_bg pharmacy"></span>
	            병원 찾기
	    </ul>
	</div> -->
	<div class="map_wrap">
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	    <ul id="category">
	        <li id="HP8" data-order="2"> 
	            <span class="category_bg pharmacy"></span>
	            병원 찾기
	    </ul>
	</div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce4b55f5d5a56bda944b1d8b13ccfb0b&libraries=services"></script>
	<script>
	// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
	var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
	    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
	    markers = [], // 마커를 담을 배열입니다
	    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
	 
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places(map); 
	
	// 지도에 idle 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'idle', searchPlaces);
	
	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
	contentNode.className = 'placeinfo_wrap';
	
	// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
	// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
	addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
	addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);
	
	// 커스텀 오버레이 컨텐츠를 설정합니다
	placeOverlay.setContent(contentNode);  
	
	// 각 카테고리에 클릭 이벤트를 등록합니다
	addCategoryClickEvent();
	
	// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
	function addEventHandle(target, type, callback) {
	    if (target.addEventListener) {
	        target.addEventListener(type, callback);
	    } else {
	        target.attachEvent('on' + type, callback);
	    }
	}
	
	// 카테고리 검색을 요청하는 함수입니다
	function searchPlaces() {
	    if (!currCategory) {
	        return;
	    }
	    
	    // 커스텀 오버레이를 숨깁니다 
	    placeOverlay.setMap(null);
	
	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
	}
	
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
	
	        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
	        displayPlaces(data);
	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요
	
	    } else if (status === kakao.maps.services.Status.ERROR) {
	        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
	        
	    }
	}
	
	// 지도에 마커를 표출하는 함수입니다
	function displayPlaces(places) {
	
	    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
	    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
	    var order = document.getElementById(currCategory).getAttribute('data-order');
	
	    
	
	    for ( var i=0; i<places.length; i++ ) {
	
	            // 마커를 생성하고 지도에 표시합니다
	            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);
	
	            // 마커와 검색결과 항목을 클릭 했을 때
	            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
	            (function(marker, place) {
	                kakao.maps.event.addListener(marker, 'click', function() {
	                    displayPlaceInfo(place);
	                });
	            })(marker, places[i]);
	    }
	}
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, order) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });
	
	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
	    return marker;
	}
	
	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}
	
	// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
	function displayPlaceInfo (place) {
	    var content = '<div class="placeinfo">' +
	                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   
	
	    if (place.road_address_name) {
	        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
	                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
	    }  else {
	        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
	    }                
	   
	    content += '    <span class="tel">' + place.phone + '</span>' + 
	                '</div>' + 
	                '<div class="after"></div>';
	
	    contentNode.innerHTML = content;
	    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
	    placeOverlay.setMap(map);  
	}
	
	
	// 각 카테고리에 클릭 이벤트를 등록합니다
	function addCategoryClickEvent() {
	    var category = document.getElementById('category'),
	        children = category.children;
	
	    for (var i=0; i<children.length; i++) {
	        children[i].onclick = onClickCategory;
	    }
	}
	
	// 카테고리를 클릭했을 때 호출되는 함수입니다
	function onClickCategory() {
	    var id = this.id,
	        className = this.className;
	
	    placeOverlay.setMap(null);
	
	    if (className === 'on') {
	        currCategory = '';
	        changeCategoryClass();
	        removeMarker();
	    } else {
	        currCategory = id;
	        changeCategoryClass(this);
	        searchPlaces();
	    }
	}
	
	// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
	function changeCategoryClass(el) {
	    var category = document.getElementById('category'),
	        children = category.children,
	        i;
	
	    for ( i=0; i<children.length; i++ ) {
	        children[i].className = '';
	    }
	
	    if (el) {
	        el.className = 'on';
	    } 
	} 
	</script>

	<!-- ------------------------------------------내 위치 가져오기--------------------------------------- -->
	
 	<div id="button">
		<!-- 부트스트랩 primary 버튼 -->
		<button type="button" class="btn btn-lg btn-primary" id="getMyPositionBtn" onclick="getCurrentPosBtn()" style="color: #fff; background:blue; font-size:2em; border-radius:0.5em; padding:5px 20px;">내 위치 가져오기</button>
	</div>
	<script>
	function locationLoadSuccess(pos){
    // 현재 위치 받아오기
    var currentPos = new kakao.maps.LatLng(pos.coords.latitude,pos.coords.longitude);

    // 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
    map.panTo(currentPos);

    // 마커 생성
    var marker = new kakao.maps.Marker({
        position: currentPos
    });

    // 기존에 마커가 있다면 제거
    marker.setMap(null);
    marker.setMap(map);
	};
	
	function locationLoadError(pos){
	    alert('위치 정보를 가져오는데 실패했습니다.');
	};
	
	// 위치 가져오기 버튼 클릭시
	function getCurrentPosBtn(){
	    navigator.geolocation.getCurrentPosition(locationLoadSuccess,locationLoadError);
	};
	</script>
	
	<!-- ----------------------------------------------------------지도에 컨트롤 올리기------------------------------------------------------- -->
	<script>
	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new kakao.maps.MapTypeControl();
		
	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	</script>

   <!-- Bootstrap Footer 시작 -->
<footer class="text-center text-lg-start bg-light text-muted">
	<!-- Section: Social media -->
	<section
	  class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
	>
	  <!-- Left -->
	  <div class="me-5 d-none d-lg-block">
		<span>Get connected with us on social networks:</span>
	  </div>
	  <!-- Left -->
  
	  <!-- Right -->
	  <div>
		<a href="" class="me-4 text-reset">
		  <i class="fab fa-facebook-f"></i>
		</a>
		<a href="" class="me-4 text-reset">
		  <i class="fab fa-twitter"></i>
		</a>
		<a href="" class="me-4 text-reset">
		  <i class="fab fa-google"></i>
		</a>
		<a href="" class="me-4 text-reset">
		  <i class="fab fa-instagram"></i>
		</a>
		<a href="" class="me-4 text-reset">
		  <i class="fab fa-linkedin"></i>
		</a>
		<a href="" class="me-4 text-reset">
		  <i class="fab fa-github"></i>
		</a>
	  </div>
	  <!-- Right -->
	</section>
	<!-- Section: Social media -->
  
	<!-- Section: Links  -->
	<section class="">
	  <div class="container text-center text-md-start mt-5">
		<!-- Grid row -->
		<div class="row mt-3">
		  <!-- Grid column -->
		  <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
			<!-- Content -->
			<h6 class="text-uppercase fw-bold mb-4">
			  <i class="fas fa-gem me-3"></i> Team. 에너자이조
			</h6>
			<p>
			  강미리 김준호 박광희 양명호 최낙현 천수빈
			</p>
		  </div>
		  <!-- Grid column -->
  
		  <!-- Grid column -->
		  <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
			<!-- Links -->
			<h6 class="text-uppercase fw-bold mb-4">
			  Products
			</h6>
			<p>
			  <a href="#!" class="text-reset">Angular</a>
			</p>
			<p>
			  <a href="#!" class="text-reset">React</a>
			</p>
			<p>
			  <a href="#!" class="text-reset">Vue</a>
			</p>
			<p>
			  <a href="#!" class="text-reset">Laravel</a>
			</p>
		  </div>
		  <!-- Grid column -->
  
		  <!-- Grid column -->
		  <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
			<!-- Links -->
			<h6 class="text-uppercase fw-bold mb-4">
			  Useful links
			</h6>
			<p>
			  <a href="#!" class="text-reset">Pricing</a>
			</p>
			<p>
			  <a href="#!" class="text-reset">Settings</a>
			</p>
			<p>
			  <a href="#!" class="text-reset">Orders</a>
			</p>
			<p>
			  <a href="#!" class="text-reset">Help</a>
			</p>
		  </div>
		  <!-- Grid column -->
  
		  <!-- Grid column -->
		  <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
			<!-- Links -->
			<h6 class="text-uppercase fw-bold mb-4">
			  Contact
			</h6>
			<p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
			<p>
			  <i class="fas fa-envelope me-3"></i>
			  info@example.com
			</p>
			<p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
			<p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
		  </div>
		  <!-- Grid column -->
		</div>
		<!-- Grid row -->
	  </div>
	</section>
	<!-- Section: Links  -->
  
	<!-- Footer Copyright -->
	<!-- <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
	  © 2021 Copyright:
	  <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
	</div> -->
  </footer>
  <!-- Footer 끝 -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!--====== Javascripts & Jquery ======-->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/modal.js"></script>
	<script src="js/facebook.js"></script>

	<!-- Popper JS -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
	<!-- Bootstrap JS -->
	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>

	<!-- facebook login -->
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1173014240143749" nonce="SiOBIhLG"></script>
	

	</body>
</html>