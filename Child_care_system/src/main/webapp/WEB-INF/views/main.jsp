<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp"%>



			<!-- Banner -->
				<section id="banner">
					<header>
						<h2><em>우리아이 안심 귀가 서비스</em></h2>
						<c:if test="${member == null }">
						<a href="member/SingUp1" class="button">Submit!</a>
						</c:if>
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
							<c:if test="${member == null}">
								<h3>LOGIN</h3>
								<form role="form" method="post" autocomplete="off" action="/member/login"> 
									<div class="row gtr-50">
										<div class="col-6 col-12-mobilep">
											<input type="text" name="User_ID" id="id" placeholder="ID" />
										</div>&nbsp;&nbsp;&nbsp;&nbsp;
										<div class="col-6 col-12-mobilep">
											<input type="password" name="User_PW" id="pw" placeholder="PW" />
										</div>

										<div class="col-12">
											<ul class="actions">
												<li><input type="submit" value="로그인" />&emsp;&emsp;</li>
												<a href="member/find1" class="button">ID/PW찾기</a>
											</ul>
										</div>
									</div>
								</form>
								</c:if>
								
								
					<c:if test="${msg == false }">
						<script>
						alert("로그인에 실패했습니다.\n아이디 또는 패스워드를 다시 확인해주세요.");
						</script>
					</c:if>


					<c:if test="${member != null }">
						<h3>${member.user_Name}님 환영합니다!</h3>
						<a href="member/logout">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;로그아웃</a>
					</c:if>
	
							</section>
						</div>
					</div>
				</div>				

			
<%@include file="footer.jsp"%>
