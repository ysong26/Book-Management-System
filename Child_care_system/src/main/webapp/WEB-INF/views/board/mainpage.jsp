<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<title>VITA500</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="/" id="logo">VITA <em>500</em></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="about.jsp">Our Story</a></li>
									
									</ul>
								</li>
								
								<li>
									<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;Time&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="수정할곳.jsp">My Kids</a></li>
									
									</ul>
								</li>
								
								<li>
								<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;QnA&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="수정할곳.jsp">Board</a></li>
									
									</ul>
								</li>
								
								<li>
								<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;MyPage&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="수정할곳.jsp">MyPage</a></li>
									</ul>
								</li>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2><em>우리아이 안심 귀가 서비스</em></h2>
						<a href="여기수정.jps" class="button">Submit</a>
					</header>
				</section>
			</div>							
			
			
			<!-- 게시판 만드는곳 -->
<!-- Main content -->

<div class="box-body">

	<button id="newBtn">글쓰기</button>
</div>

<script>
	$(document).ready(
		function(){
			$('#searchBtn').on("click",function(event){
				self.location="list"+'${pageMaker.makeQuery(1)}'+
				"&searchType="+$("select option:selected").val()+
				"&keyword=" +encodeURIComponent($('#keywordInput').val());
			});
			$('#newBtn').on('click',function(evt){
				self.location="register";
			});
		});

</script>





			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">전체 게시글</h3>
				</div>
				<div class="box-body">
				
				
				
				
<table class="table table-bordered">
	<tr>
		<th style="width: 10px">글번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>아이디</th>
		<th>등록시간</th>
		<th style="width: 40px">조회수</th>
	</tr>



<c:forEach items="${list}" var="boardVO">

	<tr>
		<td>${boardVO.Board_No}</td>
		<td><a href="/board/read?Board_No=${boardVO.Board_No}">${boardVO.Board_Subject}</a></td>
		<td>${boardVO.Board_Content}</td>
		<td>${boardVO.Board_User_ID}</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.Board_DateTime}"/></td>
		<td><span class="badge bg-red">${boardVO.Board_Cnt}</span></td>
	</tr>
	

</c:forEach>


</table>






			
			
	
		
			
			
			
			
			
			
			
			
			

					<!-- Icons -->
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon brands fa-google-plus-g"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="https://github.com/ysong26/Child-care-systems">Team_VITA500</a></li>
							</ul>
						</div>

				</div>

		</div>

		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>