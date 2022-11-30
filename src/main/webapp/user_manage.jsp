<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boto | Photography HTML Template</title>
<meta charset="UTF-8">
<meta name="description" content="Boto Photo Studio HTML Template">
<meta name="keywords" content="photo, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Stylesheets -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/slicknav.min.css" />
<link rel="stylesheet" href="css/modalogin.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet" href="css/style.css" />

<!-- bootstrap  -->
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
<!-- font -->
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>


<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

<style type="text/css">
table {
  border-spacing: 10px;
  border-collapse: separate;
}
table td {
  width: 100px;
}
</style>
</head>
<body>
<%
ArrayList<MemberDTO> UM = (ArrayList<MemberDTO>) request.getAttribute("UM");
%>
	<!-- Modal -->
	<div class="container">
		<!-- <button type="button" class="btn btn-info btn-round" data-toggle="modal" data-target="#loginModal">
		  Login
		</button>   -->
	</div>
	<!-- 	  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <button type="button" class="btn btn-info btn-block btn-round">Login</button>
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
			  <div class="signup-section">Not a member yet? <a href="#a" class="text-info"> Sign Up</a>.</div>
			</div>
		</div>
	</div>
	</div> -->

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
												<form action="LogoutService">
						<input type="hidden" name = "url" value="index.jsp" >
						<button type="submit" style=" background: none;
	border: 0;
	outline: 0;" ><i class="login">logout</i></button>
						</form>
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<a href="./index.jsp" class="site-logo"> <img
						src="img/logo.png" alt="">
					</a>
				</div>
				<!-- 				<div class="col-sm-4 col-md-3 order-3 order-sm-3">
					<div class="header__switches">
						<a href="#" class="search-switch"><i class="fa fa-search"></i></a>
						<a href="#" class="nav-switch"><i class="fa fa-bars"></i></a>
						<a href="bookmark.html"><i class="fa fa-bookmark"></i></a>
					</div>
				</div> -->
			</div>
			<nav class="main__menu">
				<ul class="nav__menu">
					<li><a href="user_manage" class="menu--active">회원 관리</a></li>
					<li><a href="sup_manage" class="menu--active">영양제 관리</a></li>
					
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header Section end -->

	<!-- Blog Page -->

	<section>

	<!-- 	<div id="map" style="width: 500px; height: 400px;"> -->
			<div align="center">
				<table>
<!-- 					<caption>
						<h2>회원관리페이지</h2>
					</caption> -->
					<tr>
						<td>ID</td>
						<td>Nick</td>
						<td>JoinDate</td>
					</tr>
					<%
					for (MemberDTO dto : UM) {
					%>
					<tr>
						<td><%=dto.getMem_id()%></td>
						<td><%=dto.getMem_nick()%></td>
						<td><%=dto.getMem_joindate()%></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
		<!-- </div> -->
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c1c6d4f378ee5fe9cf12e5ddee329eaa"></script>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center : new kakao.maps.LatLng(33.450701, 126.570667),
				level : 3
			};

			var map = new kakao.maps.Map(container, options);
		</script>
	</section>
	<!-- <section class="blog__page">
		<div class="blog__warp">
			<div class="row blog__grid text-white">
				<div class="col-lg-8 col-xl-9">
					<div class="row">
						<div class="col-md-8 col-lg-7 col-xl-8">
							<div class="blog__item set-bg" data-setbg="img/blog/1.jpg">
								<div class="blog__content">
									<div class="blog__date">DEC 18, 2019</div>
									<h3><a href="./blog-single.html">9 Reasons to Buy a 50mm Prime Lens & Skip the Kit Lens</a></h3>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-lg-5 col-xl-4">
							<div class="blog__item set-bg" data-setbg="img/blog/2.jpg">
								<div class="blog__content">
									<div class="blog__date">DEC 18, 2019</div>
									<h4><a href="./blog-single.html">Assorted Textures FREE Stock Photos</a></h4>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-lg-5 col-xl-4">
							<div class="blog__item set-bg" data-setbg="img/blog/4.jpg">
								<div class="blog__content">
									<div class="blog__date">DEC 18, 2019</div>
									<h4><a href="./blog-single.html">Assorted Textures FREE Stock Photos</a></h4>
								</div>
							</div>
						</div>
						<div class="col-md-8 col-lg-7 col-xl-8">
							<div class="blog__item set-bg" data-setbg="img/blog/5.jpg">
								<div class="blog__content">
									<div class="blog__date">DEC 18, 2019</div>
									<h3><a href="./blog-single.html">Improve Your Portrait Photography with These Helpful Tips</a></h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-xl-3">
					<div class="blog__item blog__item--long set-bg" data-setbg="img/blog/3.jpg">
						<div class="blog__content">
							<div class="blog__date">DEC 18, 2019</div>
							<h4><a href="./blog-single.html">Assorted Textures FREE Stock Photos</a></h4>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section> -->
	<!-- Blog Page end -->

	<!-- Footer Section -->
	<footer class="footer__section">
		<div class="container">
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			<div class="footer__copyright__text">
				<p>
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
				</p>
			</div>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		</div>
	</footer>
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

	<!-- Popper JS -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
	<!-- Bootstrap JS -->
	<script
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>

	<!-- facebook login -->
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1173014240143749"
		nonce="SiOBIhLG"></script>


</body>
</html>