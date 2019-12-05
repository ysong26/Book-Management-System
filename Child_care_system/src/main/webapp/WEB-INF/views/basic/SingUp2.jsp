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
 
			</div>
	</div>				

		
			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							
							
<section class="off-1 col-12" >
		
	<h3>회원가입 정보 작성</h3>

   <form role="form" method="post">
        <table>
            <tr>
                <td><b>[회원가입]</b></td>
            </tr>
        </table>    
        <table>
            <tr class="register" height="30">
                <td align="center">*</td>
                <td width="50%">회원 ID
                <input type="text" name="User_ID" placeholder="X자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." style="text-align:center; width:200px; height:50px;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:id_check()">[ID 중복 검사]</a></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">비밀번호
                <input type="password" name="User_PW" id="pw" style="text-align:center; width:200px; height:50px;" onchange="isSame()" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">비밀번호 확인
                <input type="password" name="UserPW_Confirm" id="pwCheck" style="text-align:center; width:200px; height:50px;" onchange="isSame()" />&nbsp;&nbsp;<span id="same"></span></td>
            </tr>

            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">이 름
              <input type="text" name="User_P_Name" style="text-align:center; width:150px; height:50px;"/></td>
            </tr>

            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">휴대전화 ('-'없이 번호만 입력해주세요.)<br>
                <input type="text" name="User_P_CPN"  style="text-align:center; width:250px; height:50px;" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">이메일
                
                <input type="email" name="User_E_mail" style="text-align:center; width:250px; height:50px;" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
  	
        </table>
        <br />
    </form>
			</section>
		</div>
	</div>
	
	
	
	<p><input type="submit"  class="" onclick="location.href='/'" value="취소">
	<input type="submit"  onclick="location.href='SingUp3'" value="확인"></p>
		
		
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

		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>