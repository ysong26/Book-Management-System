<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="header.jsp"%>


<<<<<<< HEAD
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
										<li><a href="board/mainpage">Board</a></li>
									
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
=======
>>>>>>> branch 'master' of https://github.com/ysong26/Child-care-systems.git

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2><em>우리아이 안심 귀가 서비스</em></h2>
						<a href="basic/SingUp1" class="button">Submit</a>
					</header>
				</section>
										

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h3>Notice</h3>
								<ul class="links">
									<li><a href="#">2019-12-03 서버 임시 오픈 공지</a></li>
									<li><a href="#">서비스 오픈 안내 관련 공지</a></li>
									<li><a href="#">시스템 오류 관련하여 공지</a></li>
									<li><a href="#">어린이 등·하원 관리 문의사항</a></li>
									<li><a href="#">테스트 공지입니다.</a></li>
									<li><a href="#">홈페이지 오류 수정··</a></li>
									<li><a href="#">VITA500 홈페이지 개설···</a></li>
								</ul>
							</section>
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h3>History</h3>
								<ul class="links">
									<li><a href="#">2019-12-03 입금자 내역</a></li>
									<li><a href="#">2019-12-02 입금자 내역</a></li>
									<li><a href="#">11월 미확인 입금자</a></li>
									<li><a href="#">2019-11-29 입금자 내역</a></li>
									<li><a href="#">2019-11-28 입금자 내역</a></li>
									<li><a href="#">2019-11-27 입금자 내역</a></li>
									<li><a href="#">2019-11-26 입금자 내역</a></li>
								</ul>
							</section>
							<section class="col-6 col-12-narrower">
								<h3>LOGIN</h3>
								<form role="form" method="post" autocomplete="off" action="/basic/login"> 
									<div class="row gtr-50">
										<div class="col-6 col-12-mobilep">
											<input type="text" name="id" id="id" placeholder="ID" />
										</div>&nbsp;&nbsp;&nbsp;&nbsp;
										<div class="col-6 col-12-mobilep">
											<input type="password" name="pw" id="pw" placeholder="PW" />
										</div>

										<div class="col-12">
											<ul class="actions">
												<li><input type="submit" class="button alt" value="로그인" /></li>
												<li><input type="submit" class="button alt" value="ID/PW찾기" /></li>
											</ul>
										</div>
									</div>
								</form>
								<p>${login.User_Name}님 환영합니다.</p>
							</section>
						</div>
					</div>
				</div>				

					
<%@include file="footer.jsp"%>
