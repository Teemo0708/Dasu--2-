<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Boto Photo Studio HTML Template">
	<meta name="keywords" content="photo, html">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name ="google-signin-client_id" content="217755353555-3msma49ckq4fa47k0tg5tkshatcdh8c9.apps.googleusercontent.com">
    <title>DaSu | Daily Supplements</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    

      <!-- Main Stylesheets -->
      <link rel="stylesheet" href="./css/login.css">
</head>
<body>
    <section class="Login-form">
        <h1></h1>
        <form action="mem_login" method="post">
            <div class="int-area">
                <input type="text" name="id" id="id"
                autocomplete="off" required>
                <label for="id">USER ID</label>
            </div>
            <div class="int-area">
                <input type="password" name="pw" id="PW"
                autocomplete="off" required>
                <label for="PW">PASSWORD</label>
            </div>
            <div class="btn-area">
              <button type="submit">LOGIN</button>
            </div>
            <div class="btn-sns">
            <a href="javascript:void(0)" name="facebooklogin"><i onclick="fnFbCustomLogin();"><img src="img/facebookicon.png"></i></a>
            <a href="javascript:void(0)" name="kakaologin"><i onclick="kakaoLogin();"><img src="img/kakaoicon.png"></i></a>
            <a href="javascript:void(0)" name="googlelogin"><i onclick=""><img src="img/googleicon.png"></i></a>
        </div>
        </form>
        <div class="caption">
            <a href="">Forget Password></a>
        </div>
    </section>

    <!--====== Javascripts & Jquery ======-->
	<script src="./js/vendor/jquery-3.2.1.min.js"></script>
	<script src="./js/jquery.slicknav.min.js"></script>
	<script src="./js/slick.min.js"></script>
	<script src="./js/fresco.min.js"></script>
	<script src="./js/main.js"></script>
	<script src="./js/login.js"></script>
</body>
</html>