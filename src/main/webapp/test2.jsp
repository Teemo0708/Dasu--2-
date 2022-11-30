<%@page import="model.SurveyDTO"%>
<%@page import="model.markupDTO"%>
<%@page import="java.util.ArrayList"%>
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
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/modalogin.css"/>
	<link rel="stylesheet" href="css/bookmark.css"/>
	<link rel="stylesheet" href="css/같이먹으면x.css"/>

	<!-- 클릭 팝업 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/test.css">
	
	<!-- 모달 h3  -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Jua&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

	<!-- 영양제 부분 bootsnipp -->
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- 코드펜 tooltip 하트 아이콘  -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="css/tooltipheart.css">

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>

	<!-- bootstrap  -->
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
	<!-- font -->
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
	
	
	<%
/* ArrayList<String> choose1 = new ArrayList<String>();
ArrayList<String> num = new ArrayList<String>();
ArrayList<Integer> num2 = new ArrayList<Integer>(); */



		
		// 세션 가지고오기
		ArrayList<SurveyDTO> SL = (ArrayList<SurveyDTO>)request.getAttribute("SL");
		String[] D3 = (String[])request.getAttribute("D3");
		String[] D2 = (String[])request.getAttribute("D2");
		
		int[] D4 =new int[D2.length];
		for(int i =0; i<D2.length; i++){
			D4[i] = Integer.parseInt(D2[i]);
		}
%>

</head>
<body>
<% MemberDTO dto = (MemberDTO)session.getAttribute("user"); %>
<% ArrayList<markupDTO> ML = (ArrayList<markupDTO>) request.getAttribute("ML"); %>
	<!-- Modal -->
	<div class="container">
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
			  <div class="form-title text-center"></div>
				<h4>Login</h4>
			  </div>
			  <div class="d-flex flex-column text-center">
				<form>
				  <div class="form-group">
					<input type="email" class="form-control" id="email1"placeholder="아이디를 입력하세요">
				  </div>
				  <div class="form-group">
					<input type="password" class="form-control" id="password1" placeholder="비밀번호를 입력하세요">
				  </div>
				  <button type="button" class="btn btn-info btn-block btn-round" id="login_modal_btn" style="background:#EBC446; border-color:#EBC446;">Login</button>
				</form>
				
				
		</div>
		   </div>
			<div class="modal-footer d-flex justify-content-center">
			  <div class="signup-section">Not a member yet? <a href="join.html" class="text-info"> Sign Up</a>.</div>
			</div>
		</div>
	</div>
	</div>
	  <!-- modal 끝 -->
	  
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
					<% if(dto==null){ %>
						<a data-toggle="modal" href="#loginModal"><i class="login">Login</i></a>
						<%}else{ %>
						<form action="LogoutService">
						<input type="hidden" name = "url" value="index.jsp" >
						<button type="submit"><i class="login">logout</i></button>
						</form>
				  		<%} %> 
						<a href="join.jsp"><i class="join" >Join</i></a>
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<a href="./index.jsp" class="site-logo">
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
												<button type="submit" style=" background: none;
	border: 0;
	outline: 0;" ><i class="login">logout</i></button>
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
							<li><a href="sup_show_cvita">종합 비타민</a></li>
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

	<!-- Header Section end -->

	<!-- main 시작 -->

	<section class="our-webcoderskull padding-lg">
		<div class="container">
		  <div class="row heading heading-icon">
			  <h2 class="book">추천하는 영양제</h2>
			  <ul class="row">
		   
		  	<% for(int i =0; i<D3.length; i++){%>
	<div class="cnt-block equal-hight" style="height: 349px;">
<%-- 		<form action="markup_delete" style="text-align: right">
		<input type="hidden" name="seq" value=<%=ML.get(i).getSup_seq()%>>
		<input type="hidden" name="id" value="<%=dto.getMem_id()%>">
		<input type="hidden" name="url" value="markup_show">
		<button type="submit" style=" background: none;
	border: 0;
	outline: 0;" ><i class="fa fa-bookmark"></i></button>
		</form> --%>
		<h5><%out.print(D3[i]);%></h5>
		<a href=<%=SL.get(D4[i]).getSup_link() %>>
		<img src=<%=SL.get(D4[i]).getSup_img() %> class="card-img-top" alt="...">
		</a>
		<div class="card-body">
		  <h5 class="card-title"><%= SL.get(i).getSup_name() %></h5>
		  <p class="card-text" style="text-align: center;"><%= SL.get(i).getSup_price()%>원</p>
<%-- 		  <p class="card-text"><%= SL.get(i).getSup_description()%></p>
		  <p class="card-text"><%= SL.get(i).getSup_func() %></p> --%>
		</div>
	  </div>
	  
	<%}%>

		 
<!-- 		  <ul class="row">
			<li class="col-12 col-md-6 col-lg-3">
				<div class="cnt-block equal-hight" style="height: 349px;">
					<ul class="follow-us clearfix">
						<li><a href="#"><img src="/img/bookmark (5).png" style="width:20px; height:20px;" class="bm_bookmark"></a></li>
						<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li> 
					  </ul>
				  <figure><img src="/img/오메가3_프리미엄피쉬오일_180EPA-120DHA_생선_젤라틴_소프트젤240정.jpg" class="img-responsive" alt=""></figure>
				  <h3 class="bm_title"><a href="http://www.webcoderskull.com/">오메가3 소프트젤 240정</a></h3>
				  <p>Freelance Web Developer</p>
				</div>
			</li>
		  </ul> -->
		</div>
	  </section>

	<!-- main 끝-->
 <!-- 부트스트랩 페이징 -->
	<nav aria-label="Page navigation example">
		 <ul class="pagination justify-content-center">
			  <li class="page-item">
				<a class="page-link" href="#" aria-label="Previous">
				  <span aria-hidden="true" id="sp_page">&laquo;</span>
				</a>
			  </li>
			  <li class="page-item"><a class="page-link" id="sp_page" href="#">1</a></li>
			  <li class="page-item"><a class="page-link" id="sp_page" href="#">2</a></li>
			  <li class="page-item"><a class="page-link" id="sp_page" href="#">3</a></li>
			  <li class="page-item"><a class="page-link" id="sp_page" href="#">4</a></li>
			  <li class="page-item"><a class="page-link" id="sp_page" href="#">5</a></li>
			  <li class="page-item">
				<a class="page-link" href="#" aria-label="Next">
				  <span aria-hidden="true" id="sp_page">&raquo;</span>
				</a>
			  </li>
			</ul> 
		  </nav>
		<!-- 부트스트랩 페이징 끝 -->
		
		<!-- Bootstrap Footer 시작 -->
<footer class="text-center text-lg-start bg-light text-muted">
	<!-- 플로팅 아이콘 시작 -->
	

	<div class="floBanMob2 hidden-lg">
		<button id="openMyPopup" data-popup="myPopup" onClick="openPopup('#myPopup')" aria-controls="myPopup" aria-label="Open popup"><img src="./img/같이 먹으면 안돼요!.png" width="100px" height="100px"></button>

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

	<!-- Footer Section -->
	
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			<!-- <div class="footer__copyright__text">
				<p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
			</div> -->
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		
	<!-- Footer Section end -->

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

	<!-- Popper JS -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
	<!-- Bootstrap JS -->
	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>

	<!-- 클릭 팝업  -->
	<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
	<script  src="js/test.js"></script>

	</body>
</html>
	
