<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
	<title>DaSu | Daily Supplements</title>
<meta charset="UTF-8">
<meta name="description" content="Boto Photo Studio HTML Template">
<meta name="keywords" content="photo, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Stylesheets -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/slicknav.min.css" />
<link rel="stylesheet" href="css/modalogin.css" />
<link rel="stylesheet" href="css/join.css" />
<link rel="stylesheet" href="css/같이먹으면x.css" />


<!-- Main Stylesheets -->
<link rel="stylesheet" href="css/style.css" />

<!-- 클릭 팝업 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/test.css">

<!-- 모달 h3  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Jua&family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">


<!-- bootstrap  -->
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
<!-- font -->
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
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
			  <div class="form-title text-center">
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
						<!-- <a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-instagram"></i></a> -->
						<!-- <a data-toggle="modal" href="#loginModal"><i class="login" >Login</i></a>
						<a href="join.jsp"><i class="join" >Join</i></a> -->
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<a href="./index.jsp" class="site-logo">
						<img src="img/logo.png" style="width:230px; height:230px;" alt="">
					</a>
				</div>
				<div class="col-sm-4 col-md-3 order-3 order-sm-3">
					<div class="header__switches">
<!-- 						<a href="#" class="search-switch"><i class="fa fa-search"></i></a>
						<a href="#" class="nav-switch"><i class="fa fa-bars"></i></a>
						<a href="bookmark.jsp"><i class="fa fa-bookmark"></i></a> -->
					</div>
				</div>
			</div>
			<nav class="main__menu">
				<ul class="nav__menu">
					<li><a href="./index.jsp">홈</a></li>
					<!-- <li><a href="./about.html">About</a></li> -->
					<li><a href="best_show">영양제</a>
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
						<li><a href="./suggest2.jsp">영양제 추천</a>
						<li><a href="./hospital.jsp">가까운 병원 찾기</a>
						</li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header Section end -->

	<!-- join form -->
    <div class="container">
        <div class="input-form-backgroud row">
          <div class="input-form col-md-6 mx-auto">
            <h4 class="mb-3">Join</h4>
            <form action="mem_join" method="post" class="validation-form" novalidate>
              <!-- <div class="row"> -->
                <!-- <div class="col-md-6 mb-3">
                  <label for="name">이름</label>
                  <input type="text" class="form-control" id="name" placeholder="" value="" required>
                  <div class="invalid-feedback">
                    이름을 입력해주세요.
                  </div> 
                </div>-->
                <div class="mb-3">
                  <label for="nickname">닉네임</label>
                  <input type="text" name="nick" class="form-control" id="nickname" placeholder="닉네임을 입력해주세요" value="" required>
                  <div class="invalid-feedback">
                    닉네임을 입력해주세요.
                  </div>
                </div>
              <!-- </div> -->
    
              <div class="mb-3">
                <label for="email">아이디</label>
                <input type="text" name="id" class="form-control" id="email" placeholder="아이디를 입력해주세요" required>
                <div class="invalid-feedback">
                  아이디를 입력해주세요.
                </div>
              </div>
    
              <div class="mb-3">
                <label for="password">비밀번호</label>
                <input type="password" name="pw" class="form-control" id="password" placeholder="비밀번호를 입력해주세요" required>
                <div class="invalid-feedback">
                 비밀번호를 입력해주세요
                </div>
              </div>

              
              <div class="mb-3">
                <label for="password">비밀번호 확인</label>
                <input type="password" name="cpw" class="form-control" id="password" placeholder="비밀번호 확인" required>
                <div class="invalid-feedback">
                 비밀번호를 입력해주세요
                </div>
              </div>
    
              <!-- <div class="mb-3">
                <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
                <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요.">
              </div> -->
    
              <!-- <div class="row">
                <div class="col-md-8 mb-3">
                  <label for="root">가입 경로</label>
                  <select class="custom-select d-block w-100" id="root">
                    <option value=""></option>
                    <option>검색</option>
                    <option>카페</option>
                  </select>
                  <div class="invalid-feedback">
                    가입 경로를 선택해주세요.
                  </div>
                </div>
                <div class="col-md-4 mb-3">
                  <label for="code">추천인 코드</label>
                  <input type="text" class="form-control" id="code" placeholder="" required>
                  <div class="invalid-feedback">
                    추천인 코드를 입력해주세요.
                  </div>
                </div>
              </div> -->
              <!-- <hr class="mb-4">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="aggrement" required>
                <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
              </div> -->
              <div class="col-md-6 mb-3"></div>
              <button class="btn btn-primary btn-lg btn-block" type="submit">Join</button>
            </form>
          </div>
        </div>
        <!-- <footer class="my-3 text-center text-small">
          <p class="mb-1">&copy; 2021 YD</p>
        </footer> -->
      </div>
   

	<!-- Blog Page -->


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
			  <i class="fas fa-capsules me-3"></i> Team. 에너자이조
			</h6>
			  <p style="margin:5px;">강미리</p>
			  <p style="margin:5px;">김준호</p>
			  <p style="margin:5px;">박광희</p>  
			  <p style="margin:5px;">양명호</p>  
			  <p style="margin:5px;">최낙현</p>  
			  <p style="margin:5px;">천수빈</p>  
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
			<p><i class="fas fa-home me-3"></i> 광주 남구 송암로 60 2층</p>
			<p>
			  <i class="fas fa-envelope me-3"></i>
			  smhrd@smhrd.or.kr
			</p>
			<p><i class="fas fa-phone me-3"></i> FAX : 062-655-3510</p>
			<p><i class="fas fa-print me-3"></i> NUMBER : 062-655-3506, 9</p>
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
	<script src="js/facebook.js"></script>
	<script src="js/join.js"></script>


	<!-- Popper JS -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
	<!-- Bootstrap JS -->
	<script
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>

	<!-- 클릭 팝업  -->
	<script
		src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
	<script src="js/test.js"></script>
	

	</body>
</html>
