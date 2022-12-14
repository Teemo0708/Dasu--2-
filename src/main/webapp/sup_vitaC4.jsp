<%@page import="model.markupDTO"%>
<%@page import="model.SupDTO"%>
<%@page import="java.util.ArrayList"%>
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
	

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Modal -->
	<%MemberDTO dto = (MemberDTO) session.getAttribute("user");%>
	<%ArrayList<SupDTO> SVC = (ArrayList<SupDTO>) request.getAttribute("SVC");%>
	<%ArrayList<markupDTO> ML = (ArrayList<markupDTO>) request.getAttribute("ML"); %>
	<%String src = ""; %>
	<%String action = ""; %>
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
				<span aria-hidden="true">??</span>
			  </button>
			</div>
			<div class="modal-body">
			  <div class="form-title text-center">
				<h4>Login</h4>
			  </div>
			  <div class="d-flex flex-column text-center">
						<form action="mem_login" method="post">
							<div class="form-group">
								<input type="hidden" name=url value="sup_show_vitaC4"> 
								<input
									type="text" name="id" class="form-control" id="email1"
									placeholder="???????????? ???????????????">
							</div>
							<div class="form-group">
								<input type="password" name="pw" class="form-control"
									id="password1" placeholder="??????????????? ???????????????">
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
	<!-- login modal ??? -->

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
                        <!-- ?????? ?????? ?????? ?????? ????????? -->
					<% if(dto==null){ %>
						<a data-toggle="modal" href="#loginModal"><i class="login">Login</i></a>
						<%}else{ %>
						<form action="LogoutService">
						<input type="hidden" name = "url" value="sup_show_vitaC4" >
						<button type="submit"><i class="login">logout</i></button>
						</form>
				  		<%} %> 
						<a href="join.jsp"><i class="join" >Join</i></a>
					</div>
				</div>
				<div class="col-sm-4 col-md-6 order-1  order-md-2 text-center">
					<a href="./index.jsp" class="site-logo">
						<img src="img/logo.png" alt="">
					</a>
				</div>
				<div class="col-sm-4 col-md-3 order-3 order-sm-3">
					<div class="header__switches">
						<a href="#" class="search-switch"><i class="fa fa-search"></i></a>
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
					<li><a href="user_manage" class="menu--active">?????? ??????</a></li>
					<li><a href="sup_manage" class="menu--active">????????? ??????</a></li>
					<li><a href="./index.jsp" class="menu--active">?????? ??????</a></li>					
					<%} else{ %> 
					<li><a href="./index.jsp" class="menu--active">????????? ??????</a></li>
					<li><a href="best_show">?????? ??????</a>
						<ul class="sub__menu">
							<li><a href="sup_show_cns">?????? ?????????</a></li>
							<li><a href="sup_show_lutein">?????????</a></li>
							<li><a href="sup_show_cvita">?????????E</a></li>
							<li><a href="sup_show_vitaA">?????????A</a></li>
							<li><a href="sup_show_vitaB">?????????B</a></li>
							<li><a href="sup_show_vitaC">?????????C</a></li>
							<li><a href="sup_show_vitaD">?????????D</a></li>
							<li><a href="sup_show_omega">?????????3</a></li>
							<li><a href="sup_show_milk">????????????</a></li>
							<li><a href="sup_show_iron">??????</a></li>
							<li><a href="sup_show_mag">????????????</a></li>
							<li><a href="sup_show_zinc">??????</a></li>
							<li><a href="sup_show_pro">???????????????</a></li>
							<li><a href="sup_show_lacto">?????????</a></li>
						</ul></li>
					<li><a href="./???????????????.jsp" target="_blank">????????? ??????</a></li>
					<li><a href="./hospital.jsp">????????? ?????? ??????</a></li>
					<%} %>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header ??? -->
<div class="supplements_container">
		<div class="row">
			<%
			for (int i = 36; i < 42; i++) {
			%>
			<div class="col-lg-2 col-md-4 col-sm-3" id="list1"
				style="width: 18rem;">
				<%
				if (dto != null) {
				%>

				<%
				for (markupDTO mdto : ML) {
					if (mdto.getSup_seq() == SVC.get(i).getSup_seq()) {
						action = "markup_delete";
						src = "img/bookmark_remove.png";
				%>
				<%
				} else {
				action = "markup_insert";
				src = "img/bookmark.png";
				%>
				<%
				}
				%>
				<%
				}
				%>
				<form action=<%=action%> style="text-align: right">
					<input type="hidden" name="seq" value=<%=SVC.get(i).getSup_seq()%>>
					<input type="hidden" name="id" value=<%=dto.getMem_id()%>>
					<input type="hidden" name="url" value="sup_show_vitaC4">
					<button type="submit">
						<img alt="" src=<%=src%>>
					</button>
				</form>
				<%
				}
				%>
				<a href=<%=SVC.get(i).getSup_link()%>
					class="fa fa-bookmark pull-right"> <img
					src=<%=SVC.get(i).getSup_img()%> class="card-img-top" alt="...">
				</a>
				<div class="card-body">
					<h5 class="card-title"><%=SVC.get(i).getSup_name()%></h5>
					<p class="card-text" style="text-align: center;"><%=SVC.get(i).getSup_price()%>???
					</p>
					<p class="card-text"><%=SVC.get(i).getSup_description()%></p>
					<p class="card-text"><%=SVC.get(i).getSup_func()%></p>
				</div>
			</div>
			<%
			}
			%>
			</div>
			<div class="row">
				<%
				for (int i = 42; i < 48; i++) {
				%>
				<div class="col-lg-2 col-md-4 col-sm-3" id="list1"
					style="width: 18rem;">
					<%
					if (dto != null) {
					%>
					<%
					for (markupDTO mdto : ML) {
						if (mdto.getSup_seq() == SVC.get(i).getSup_seq()) {
							action = "markup_delete";
							src = "img/bookmark_remove.png";
					%>
					<%
					} else {
					action = "markup_insert";
					src = "img/bookmark.png";
					%>
					<%
					}
					%>
					<%
					}
					%>
					<form action=<%=action%> style="text-align: right">
						<input type="hidden" name="seq" value=<%=SVC.get(i).getSup_seq()%>>
						<input type="hidden" name="id" value=<%=dto.getMem_id()%>>
						<input type="hidden" name="url" value="sup_show_vitaC4">
						<button type="submit">
							<img alt="" src=<%=src%>>
						</button>
					</form>
					<%
					}
					%>
					<a href=<%=SVC.get(i).getSup_link()%>
						class="fa fa-bookmark pull-right"> <img
						src=<%=SVC.get(i).getSup_img()%> class="card-img-top" alt="...">
					</a>
					<div class="card-body">
						<h5 class="card-title"><%=SVC.get(i).getSup_name()%></h5>
						<p class="card-text" style="text-align: center;"><%=SVC.get(i).getSup_price()%>???
						</p>
						<p class="card-text"><%=SVC.get(i).getSup_description()%></p>
						<p class="card-text"><%=SVC.get(i).getSup_func()%></p>
					</div>
				</div>
				<%
				}
				%>
				</div>
				</div>
	<div class="paging-div">
				<ul class="pagination" id="pagination"></ul>
			</div>

			<!-- ????????? -->
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">??</span> <span
							class="sr-only">Previous</span>
					</a></li>
					<li class="page-item active"><a class="page-link" href="sup_show_vitaC">1</a></li>
					<li class="page-item"><a class="page-link" href="sup_show_vitaC2">2</a></li>
					<li class="page-item"><a class="page-link" href="sup_show_vitaC3">3</a></li>
					<li class="page-item"><a class="page-link" href="sup_show_vitaC4">4</a></li>
					<li class="page-item"><a class="page-link" href="sup_show_vitaC5">5</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">??</span> <span
							class="sr-only">Next</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
   <!-- Bootstrap Footer ?????? -->
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
			  <i class="fas fa-gem me-3"></i> Team. ???????????????
			</h6>
			<p>
			  ????????? ????????? ????????? ????????? ????????? ?????????
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
	  ?? 2021 Copyright:
	  <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
	</div> -->
  </footer>
  <!-- Footer ??? -->

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
