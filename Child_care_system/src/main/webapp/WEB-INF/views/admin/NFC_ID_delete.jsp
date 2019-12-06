<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

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
										<li><a href="basic/About">Our Story</a></li>
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
								
								
								<li>
								<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;Admin&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="admin/Admin_main">NFC ID 등록</a></li>
									</ul>
								</li>
								
								
							</ul>
						</nav>

				</div>
				
				
				<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							
							
						<section class="off-4 col-12-narrower" >
			
		
							<h3> NFC ID 등록 </h3> <br>							
							
							<form action="/admin/nfc_id_regist" method="post">
								<table> </table>  
						            
						        <table>
						            <tr class="NFC_regist" height="30">
						                <td align="center"> <h5> 1. &nbsp;&nbsp; </h5></td>
						                <td width="50%"> <h5> NFC_ID </h5>
						                <input type="text" name="NFC_ID" placeholder="NFC_ID" style="text-align:center; width:400px; height:50px;"/></td>
						            </tr>						            
						            <tr height="7">
						                <td colspan="3"><hr /></td>
						            </tr>
						            
						            <tr class="NFC_regist" height="30">
						            	<td align="center"> <h5> 2. &nbsp;&nbsp; </h5></td>
						            	<td width="50%"> <h5> User_ID </h5>
						                <input type="text" name="User_ID" placeholder="User_ID" style="text-align:center; width:400px; height:50px;"/></td>						                						                
						            </tr>						            
						            <tr height="7">
						                <td colspan="3"><hr /></td>
						            </tr>
						            
						            <tr class="NFC_regist" height="30">
						                <td align="center"> <h5> 3. &nbsp;&nbsp; </h5></td>
						                <td width="50%"> <h5> Child_Name </h5>
						                <input type="text" name="Child_Name" placeholder="Child_Name" style="text-align:center; width:400px; height:50px;"/></td>
						            </tr>						            
						            <tr height="7">
						                <td colspan="3"><hr /></td>
						            </tr>
						            
						            <tr class="NFC_regist" height="30">
						                <td align="center"> <h5> 4. &nbsp;&nbsp; </h5></td>
						                <td width="50%"> <h5> Child_Gender </h5>
						                	<input type="radio" name="Child_Gender" value="M" /> 남
    										<input type="radio" name="Child_Gender" value="F" /> 여						                
						            </tr>						            
						            <tr height="7">
						                <td colspan="3"><hr /></td>
						            </tr>
						            						 
						        </table>
						        
						        <input type="submit" value="저장">
								<input type="reset" onclick="location.href='Admin_main'" value="취소">			
						        						        
						    </form>					    
					    
					    </section>
					    
					    </div>
					</div>
				</div>
					
									
				
			

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							
						</div>
					</div>

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
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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