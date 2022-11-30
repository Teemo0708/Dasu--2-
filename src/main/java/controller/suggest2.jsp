  <%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>DaSu | Daily Supplements</title>
	<meta charset="UTF-8">
	<meta name="description" content="Boto Photo Studio HTML Template">
	<meta name="keywords" content="photo, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="./bootstrap">
	<link rel="stylesheet" href="./css/font-awesome.min.css"/>
	<link rel="stylesheet" href="./css/slicknav.min.css"/>
	<link rel="stylesheet" href="./css/modalogin.css"/>
	<link rel="stylesheet" href="./css/같이먹으면x.css"/>
	
	
	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="./css/style.css"/>

	<!-- 클릭 팝업 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="./css/test.css">
	
	<!-- 모달 h3  -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Jua&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">


	<!-- bootstrap  -->
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
	<!-- font -->
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
	
	
	
	
	<!-- 설문 시작 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> 어떤 증상이 있나요? </title>
	<meta name="description" content="어떤 증상이 있나요?">
	<meta property="og:type" content="website">
	<meta property="og:title" content="부족한 영양소 알아보기">
	<meta property="og:description" content="나는 무슨 영양소가 필요할까?">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
		rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" href="./설문.css">
	</head>

	<!-- 설문 끝 -->

	<body>
	<!-- Modal -->
	<% MemberDTO dto = (MemberDTO)session.getAttribute("user"); %>
	<div class="container">
	
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
				<h4 class="login_title">Login</h4>
			  </div>
			  <div class="d-flex flex-column text-center">
				<form action="mem_login" method="post">
				  <div class="form-group">
					<input type="hidden" name = "url" value="suggest2.jsp">
					<input type="text" name ="id" class="form-control" id="email1"placeholder="아이디를 입력하세요">
				  </div>
				  <div class="form-group">
					<input type="password" name ="pw" class="form-control" id="password1" placeholder="비밀번호를 입력하세요">
				  </div>
				  <button type="submit" class="btn btn-info btn-block btn-round">Login</button>
				</form>
				
				<!-- <div class="text-center text-muted delimiter">or use a social network</div>
			    <div class="d-flex justify-content-center social-buttons"> -->
				<!-- <div class="sns_icon"> -->
				  <!-- <button type="button" onclick="kakaoLogin();" class="btn btn-round" data-toggle="tooltip" data-placement="top" title="Kakao">
					<i class="fab"><img src="img/노란카카오_원형.png"></i></a>
				  </button>
				  <button type="button" onclick="fnFbCustomLogin();" class="btn btn-round"  data-toggle="tooltip" data-placement="top" title="Facebook">
					<i class="fab"><img src="img/블루페북_원형.png"></i>
				  </button>
				  <button type="button" class="btn btn-round" data-toggle="tooltip" data-placement="top" title="Naver">
					<i class="fab"><img src="img/그린네이버_원형.png"></i>
				  </button> -->
			  <!-- </div> -->
			<!-- </div> -->
		</div>
		   </div>
			<div class="modal-footer d-flex justify-content-center">
			  <div class="signup-section">Not a member yet? <a href="/join.html" class="text-info"> Sign Up</a>.</div>
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
						<%}else{ %>
						<form action="LogoutService">
						<input type="hidden" name = "url" value="suggest2.jsp" >
						<button type="submit"><i class="login">logout</i></button>
						</form>
				  		<%} %> 
						<a href="join.jsp"><i class="join" >Join</i></a>
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<a href="./index.jsp" class="site-logo">
						<img src="./img/logo.png" alt="">
					</a>
				</div>
				<div class="col-sm-4 col-md-3 order-3 order-sm-3">
					<div class="header__switches">
						<a href="#" class="search-switch"><i class="fa fa-search"></i></a>
						<a href="#" class="nav-switch"><i class="fa fa-bars"></i></a>
						<% if (dto!=null) {%>
						<form action="markup_show" method="post">
						<input type="hidden" name="id" value= <%=dto.getMem_id()%>>
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
					<li><a href="./index.jsp" class="menu--active">추천 관리</a></li>					
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
					<li><a href="./에너자이조.jsp" target="_blank">영양제 추천</a></li>
					<li><a href="./hospital.jsp">가까운 병원 찾기</a></li>
					<%} %>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header 끝 -->
	<!-- 설문 시작 -->
	<div class="container">
		<article class="start">
			
			<h2 class="sub-title mt-3 text-center"><strong>나는 무슨 영양소가 필요할까?</strong></h2>
			<img class="updown-slash mt-5" src="/sunia_survey/img/vitamins_PNG39.png" alt="up-slash">
			<div class="start-cover mt-3 mb-3">
				<button type="button" class="btn-start btn btn-primary" onclick='start();'>시작하기</button>
			</div>
		</article>
		<article class="question">
			<div class="progress mt-5">
				<div class="progress-bar" role="progressbar" style="width: calc(100/28*1%)"></div>
			</div>
			<h2 id="title" class="question-content text-center mt-4 mb-4">문제</h2>
			<input id="type" type="hidden" value="EI">
			<div class="rectangle mt-5"></div>
			<button id="A" type="button" class="btn-answer btn btn-primary pt-4 pb-4">대답A</button>
			<button id="B" type="button" class="btn-answer btn btn-primary pt-4 pb-4">대답B</button>
			<div class="rectangle"></div>
	
			<article class="logo">
				<span class="mt-2 text-center copyright-text">Copyright 2021 EVENT EFFECT all rights reserved</span>
			</article>
		   
			</article>
		
			<script type="text/javascript" src="//t1.daumcdn.net/kas/static/ba.min.js" async></script>
			<input type="hidden" id="종합영양제" value="0">
			<input type="hidden" id="루테인" value="0">
			<input type="hidden" id="종합비타민" value="0">
			<input type="hidden" id="비타민A" value="0">
			<input type="hidden" id="비타민B" value="0">
			<input type="hidden" id="비타민C" value="0">
			<input type="hidden" id="비타민D" value="0">
			<input type="hidden" id="오메가3" value="0">
			<input type="hidden" id="밀크씨슬" value="0">
			<input type="hidden" id="철분" value="0">
			<input type="hidden" id="마그네슘" value="0">
			<input type="hidden" id="아연" value="0">
			<input type="hidden" id="프로폴리스" value="0">
			<input type="hidden" id="유산균" value="0">
			<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
				integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
				crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
				crossorigin="anonymous"></script>
			<script>
		var List = function(){
			this.dataStore = [];
			this.pos = 0;
			this.listSize = 0;
		}
		
		// 
	
											// 1 종합영양제
											// 2 루테인
											// 3 종합비타민
											// 4 비타민A 
											// 5 비타민B
											// 6 비타민C
											// 7 비타민D 
											// 8 오메가3
											// 9 밀크씨슬
											// 10 철분 
											// 11 마그네슘 
											// 12 아연
											// 13 프로폴리스
											// 14 유산균
											
	
	
				
				var num = 1;
	            var q = {
	                    // x: { "title": "", "type": "", "A": "네 그렇습니다", "B": "아니요" },
	                    1: { "title": "눈의 피로감을 자주 느끼나요?", "type": "루테인", "A": "네 있습니다", "B": "딱히 느낀적은 없습니다" },

	                    2: { "title": "면역력이 약해진 것을 느끼거나 걱정하고 계신가요?", "type": "비타민E", "A": "네 그렇습니다", "B": "아니요" },

	                    3: { "title": "최근 야맹증, 안구건조, 피부각질을 겪고 있나요?", "type": "비타민A", "A": "네 그렇습니다", "B": "아니요" },
	                    
	                    4: { "title": "입 주위에 부스럼, 체중감소 우울증을 겪고 있나요?", "type": "비타민B", "A": "네 그렇습니다", "B": "아니요" },
	                   
	                    5: { "title": "쇠약감이나 잇몸출혈, 더딘 상처회복을 겪고 있나요?", "type": "비타민C", "A": "네 그렇습니다", "B": "아니요" },

	                    6: { "title": "근육 경련이나 골밀도에 이상이 있다는 진단을 받으셨나요?", "type": "비타민D", "A": "네 그렇습니다", "B": "아니요" },

	                    7: { "title": "손 끝이 트고 갈라지거나 손발톱이 잘 부러지나요?", "type": "오메가3", "A": "네 그렇습니다", "B": "아니요" },

	                    8: { "title": "술자리를 자주 갖는 편인가요??", "type": "밀크씨슬", "A": "가끔 있습니다", "B": "아니요" },

	                    9: { "title": "입 주변이 갈라지거나 편두통이 자주 생기나요?", "type": "마그네슘", "A": "네 그렇습니다", "B": "아니요" },

	                    10: { "title": "피로감이나 잔병치레가 있나요?", "type": "철분", "A": "있어요", "B": "없어요" },

	                    11: { "title": "가족 중에 성장기의 자녀가 있나요?", "type": "아연", "A": "네 그렇습니다", "B": "아니요" },

	                    12: { "title": "항산화제를 추천받고 싶으신가요?", "type": "프로폴리스", "A": "네 그렇습니다", "B": "아니요" },

	                    13: { "title": "변비증상이나 복통이 있나요?", "type": "유산균", "A": "네 그렇습니다", "B": "아니요" }

	                };
/* 				var q = {
					// x: { "title": "", "type": "", "A": "네 그렇습니다", "B": "아니요" },
					1: { "title": "눈의 피로감을 자주 느끼나요?", "type": "루테인", "A": "네 있습니다", "B": "딱히 느낀적은 없습니다" },
	
					2: { "title": "식사의 주기가 불규칙적인가요??", "type": "종합비타민", "A": "네 그렇습니다", "B": "아니요" },
	
					3: { "title": "최근 야맹증을 겪은적이 있나요?", "type": "비타민A", "A": "네 그렇습니다", "B": "아니요" },
					4: { "title": "안구가 건조하거나 충혈이 일어나나요?", "type": "비타민A", "A": "네 그렇습니다", "B": "아니요" },
					5: { "title": "피부에 각질이 자주 일어나나요?", "type": "비타민A", "A": "네 각질이 일어납니다", "B": "아니요" },
	
					6: { "title": "구각염, 구순염 등 입 주위에 부스럼이 나나요?", "type": "비타민B", "A": "네 그렇습니다", "B": "아니요" },
					7: { "title": "이유 모를 체중감소를 느끼나요?", "type": "비타민B", "A": "네 그렇습니다", "B": "아니요" },
					8: { "title": "최근 우울증이나 과민반응이 있는 것을 체감하시나요?", "type": "비타민B", "A": "네 그렇습니다", "B": "아니요" },
	
					9: { "title": "쇠약감이 있나요?", "type": "비타민C", "A": "네 그렇습니다", "B": "아니요" },
					10: { "title": "잇몸에서 외부자극 없이 피가 난 적이 있나요?", "type": "비타민C", "A": "네 그렇습니다", "B": "아니요" },
					11: { "title": "상처 낫는 속도가 더디다고 느끼나요?", "type": "비타민C", "A": "네 그렇습니다", "B": "아니요" },
	
					12: { "title": "골밀도에 이상이 있다는 진단을 받으셨나요?", "type": "비타민D", "A": "네 그렇습니다", "B": "아니요" },
					13: { "title": "근육경련이나 다리가 떨리는 증상을 겪은적이 있나요?", "type": "비타민D", "A": "네 가끔(혹은 자주) 떨립니다", "B": "아니요" },
	
					14: { "title": "손 끝이 트고 갈라지거나 두드러기가 일어나나요?", "type": "오메가3", "A": "네 그렇습니다", "B": "아니요" },
					15: { "title": "손톱과 발톱이 잘 깨지고 부러지나요?", "type": "오메가3", "A": "네 그렇습니다", "B": "아니요" },
					16: { "title": "집중력이 저하된 것을 느끼나요?", "type": "오메가3", "A": "네 그렇습니다", "B": "아니요" },
	
					17: { "title": "술자리를 자주 갖는 편인가요??", "type": "밀크씨슬", "A": "가끔 있습니다", "B": "아니요" },
	
					18: { "title": "편두통이 자주 생기나요?", "type": "마그네슘", "A": "네 그렇습니다", "B": "아니요" },
					19: { "title": "입 주변이 갈라지나요?", "type": "마그네슘", "A": "네 그렇습니다", "B": "아니요" },
	
					20: { "title": "피로감이 있나요?", "type": "철분", "A": "있어요", "B": "없어요" },
					21: { "title": "허약해진 기분이 드나요?", "type": "철분", "A": "허약해진 것 같아요", "B": "아니요" },
					22: { "title": "잔병치레가 많아졌나요?", "type": "철분", "A": "면역력이 떨어진 것 같아요", "B": "아니요" },
	
					23: { "title": "가족 중에 성장기의 자녀가 있나요?", "type": "아연", "A": "네 그렇습니다", "B": "아니요" },
	
					24: { "title": "항산화제를 추천받고 싶으신가요?", "type": "프로폴리스", "A": "네 그렇습니다", "B": "아니요" },
	
					25: { "title": "변비증상이 있나요?", "type": "유산균", "A": "네 그렇습니다", "B": "아니요" },
					26: { "title": "방귀를 자주 뀌나요?", "type": "유산균", "A": "네 그렇습니다", "B": "아니요" },
					27: { "title": "복통이 있나요?", "type": "유산균", "A": "네 그렇습니다", "B": "아니요" }
	
				} */

	            var list1 = [];
	            var list2 = [];
	        
	        function start() {
	            $(".start").hide();
	            $(".question").show();
	            next();
	        }

	        $("#A").click(function () {
	            var type = $("#type").val();
	            console.log("type = " + type)
	            var preValue = $("#" + type).val();
	            $("#" + type).val(parseInt(preValue) + 1);
	           
	            if( type == "루테인"){
	                list1.push("2");
	                list2.push("루테인");
	            };
	            if( type == "비타민E"){
	                list1.push("3");
	                list2.push("비타민E");
	            };
	            if( type == "비타민A"){
	                list1.push("4");
	                list2.push("비타민A");
	            };
	            if( type == "비타민B"){
	                list1.push("5");
	                list2.push("비타민B");
	            };
	            if( type == "비타민C"){
	                list1.push("6");
	                list2.push("비타민C");
	            };
	            if( type == "비타민D"){
	                list1.push("7");
	                list2.push("비타민D");
	            };
	            if( type == "오메가3"){
	                list1.push("8");
	                list2.push("오메가3");
	            };
	            if( type == "밀크씨슬"){
	                list1.push("9");
	                list2.push("밀크씨슬");
	            };
	            if( type == "철분"){
	                list1.push("10");
	                list2.push("철분");
	            };
	            if( type == "마그네슘"){
	                list1.push("11");
	                list2.push("마그네슘");
	            };
	            if( type == "아연"){
	                list1.push("12");
	                list2.push("아연");
	            };
	            if( type == "프로폴리스"){
	                list1.push("13");
	                list2.push("프로폴리스");
	            };
	            if( type == "유산균"){
	                list1.push("14");
	                list2.push("유산균");
	            };
	            
	            next();
	        });

	        $("#B").click(function () {
	            next();
	        });

	        function next() {
	            if (num == 14) {
	                $(".question").hide();
	                $(".result").show();

	            	location.href="survey_show?data1="+list1+"&data2="+list2;
	        }
	            else {
	            $(".progress-bar").attr('style', 'width: calc(100/14*' + num + '%)');
	            $("#title").html(q[num]["title"]);
	            $("#type").val(q[num]["type"]);
	            $("#A").html(q[num]["A"]);
	            $("#B").html(q[num]["B"]);
	            num++;
	            
	            
	        }
	       }
/* 				var supplements = "";
	
				var list1 = [];
	
			
			function start() {
				$(".start").hide();
				$(".question").show();
				next();
			}
	
			$("#A").click(function () {
				var type = $("#type").val();
				var preValue = $("#" + type).val();
				$("#" + type).val(parseInt(preValue) + 1);
				next();
	
			});
			$("#B").click(function () {
				next();
			});
	
	
	
			function next() {
				if (num == 28) {
					$(".question").hide();
					$(".result").show();
	
					if($("#종합영양제").val() != 0){
						list1.push("1");
					};
	
					if($("#루테인").val() != 0){
						list1.push("2");
					};
	
					if($("#종합비타민").val() != 0){
						list1.push("3");
					};
	
					if($("#비타민A").val() != 0){
						list1.push("4");
					};
	
					if($("#비타민B").val() != 0){
						list1.push("5");
					};
	
					if($("#비타민C").val() != 0){
						list1.push("6");
					};
	
					if($("#비타민D").val() != 0){
						list1.push("7");
					};
	
					if($("#오메가3").val() != 0){
						list1.push("8");
					};
					
					if($("#밀크씨슬").val() != 0){
						list1.push("9");
					};
	
					if($("#철분").val() != 0){
						list1.push("10");
					};
	
					if($("#마그네슘").val() != 0){
						list1.push("11");
					};
	
					if($("#아연").val() != 0){
						list1.push("12");
					};
	
					if($("#프로폴리스").val() != 0){
						list1.push("13");
					};
	
					if($("#유산균").val() != 0){
						list1.push("14");
					};
	
					
	
	
					for(var i = 0 ; i< list1.length; i++) {
	
					document.write(list1[i]);
				};
					
				} else {
					$(".progress-bar").attr('style', 'width: calc(100/28*' + num + '%)');
					$("#title").html(q[num]["title"]);
					$("#type").val(q[num]["type"]);
					$("#A").html(q[num]["A"]);
					$("#B").html(q[num]["B"]);
					num++;
				}
			} */
			</script>
	</div>
	<!-- 설문 끝 -->

   <!-- Bootstrap Footer 시작 -->
<footer class="text-center text-lg-start bg-light text-muted">
	<!-- 플로팅 아이콘 시작 -->
	

	<div class="floBanMob2 hidden-lg">
		<button id="openMyPopup" data-popup="myPopup" onClick="openPopup('#myPopup')" aria-controls="myPopup" aria-label="Open popup"><img src="/img/같이 먹으면 안돼요!.png" width="100px" height="100px"></button>

		<div class="popup" id="myPopup" aria-hidden="true" onClick="if(event.target == this){closePopup('#myPopup');}">
			<div class="wrapper" aria-labelledby="popupTitle" aria-describedby="popupText" aria-modal="true">
				<h3 id="popupTitle">같이 먹으면 안좋은 영양제는?</h3>
				<p id="popupText"> 칼슘 + 비타민D<br>
					 비타민B1 + 타닌<br>
					 종합비타민 + 철분<br>
					 비타민A + 루테인<br>
					 칼슘 + 철분<br>
					 마그네슘 + 칼슘 

	
				</p>

				<button id="closePopup" onClick="closePopup('#myPopup');" aria-label="Close popup">Close</button>
			</div>
		</div>
	  <!-- </a> -->
	</div><br>
	<!-- 플로팅 아이콘 끝 -->

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
	<script src="./js/vendor/jquery-3.2.1.min.js"></script>
	<script src="./js/jquery.slicknav.min.js"></script>
	<script src="./js/slick.min.js"></script>
	<script src="./js/main.js"></script>
	<script src="./js/modal.js"></script>
	<script src="./js/facebook.js"></script>
	

	<!-- Popper JS -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
	<!-- Bootstrap JS -->
	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>

		<!-- 클릭 팝업  -->
	<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'>
	</script><script  src="./js/test.js"></script>
	

	</div>
    