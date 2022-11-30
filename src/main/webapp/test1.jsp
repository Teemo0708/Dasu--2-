<%@page import="model.SurveyDTO"%>
<%@page import="model.SurveyDTO"%>
<%@page import="model.SurveyDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	<section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>추천하는 영양제</h4>
                            
                            <%for(int i =0; i < D3.length; i++){%>
   	                         
                            <ul>
                                <li>
                                
                                <a href="#">
                               
								<%out.print(D3[i]);%>
										
                                </a>
                                
                                </li>
                                
                            </ul>
								<%}%>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4></h4>
                            <div class="blog__sidebar__recent">
                                
                            </div>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4></h4>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div class="row"> 
                    <!-- ------------------------------------------------------------------------------------- -->
     <div class="supplements_container">
	<div class="row">
	<% for(int i =0; i<D3.length; i++){%>
	<div class="col-lg-2 col-md-4 col-sm-3" id ="list1" style="width: 18rem;">
		<a href=<%=SL.get(D4[i]).getSup_link() %> class="fa fa-bookmark pull-right">
		<img src=<%=SL.get(D4[i]).getSup_img() %> class="card-img-top" alt="...">
		</a>		
		<div class="card-body">
		  <h5 class="card-title"><%= SL.get(i).getSup_name() %></h5>
		  <p class="card-text" style="text-align: center;"><%= SL.get(i).getSup_price()%>원</p>
		  <p class="card-text"><%= SL.get(i).getSup_description()%></p>
		  <p class="card-text"><%= SL.get(i).getSup_func() %></p>
		</div>
	  </div>
	<%}%>
	                                <div>
                                <a href="./index.jsp">메인페이지로 돌아가기</a>
                                </div>
	<div class="paging-div">
				<ul class="pagination" id="pagination"></ul>
			</div> 
                    
                    
                    
                         <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-2.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                
                                </div>
                                <div>
                                <a href="./index.jsp">메인페이지로 돌아가기</a>
                                </div>
                                 
                                <!--  for 문 사용 -->
<%--                                 <%for(int i=0; i<SL.size(); i++){ %>
		<a href=<%=SL.get(i).getSup_link() %> class="fa fa-bookmark pull-right">
		<img src=<%=SL.get(i).getSup_img() %> class="card-img-top" alt="...">
		</a>	
                                    <%} %> --%>
                                    
                                    <!-- for each 사용  -->
                                <%-- <% for(SurveyDTO dto : SL){ %>   
                                <h5><a href="#"><%= dto.getSup_img() %></a></h5> 
                                <%} %> --%>
                                    <!-- <p>영양제 설명 블라블라 </p>
                                    <a href="#" class="blog__btn">구매하러 가기 <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div> -->
                     <!-- ------------------------------------------------------------------------------------- -->
                       
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>