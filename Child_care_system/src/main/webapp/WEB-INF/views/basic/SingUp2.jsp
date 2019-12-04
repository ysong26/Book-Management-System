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
							
							
		<section class="off-4 col-12-narrower" >
		
	<h3>회원가입 정보 작성</h3>

    <form action="?" method="post" name="?">
   
        <table style="border-collapse:collapse; font-size:9pt;">
            <tr class="register">
                <td>*</td>
                <td>회원 ID</td>
                <td><input type="text" name="wUserID" />&nbsp;<a href="javascript:id_check()">[ID 중복 검사]</a></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td>*</td>
                <td>비밀번호</td>
                <td><input type="password" name="wUserPW" id="pw" onchange="isSame()" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">비밀번호 확인</td>
                <td><input type="password" name="wUserPWConfirm" id="pwCheck" onchange="isSame()" />&nbsp;&nbsp;<span id="same"></span></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">이 름</td>
                <td><input type="text" name="wUserName" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">성 별</td>
                <td>
                    남 성<input type="radio" name="wUserGender" value="1" checked />&nbsp;여 성<input type="radio" name="wUserGender" value="2"/>
                </td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">집전화</td>
                <td><input type="tel" name="wUserHomePhone" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">휴대전화</td>
                <td><input type="tel" name="wUserCellPhone" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">이메일</td>
                <td><input type="email" name="wUserEmail" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr>
                <td width="5%" align="center">*</td>
                <td width="15%">주 소</td>
                <td>
                    <input type="text" size="10" name="wPostCode" id="postcode" placeholder="우편번호" readonly="readonly" onclick="DaumPostcode()">
                    <input type="button" onclick="DaumPostcode()" value="우편번호 찾기"><br><br />
                    <input type="text" size="30" name="wRoadAddress" id="roadAddress" placeholder="도로명주소" readonly="readonly" onclick="DaumPostcode()">
                    <input type="text" size="30" name="wJibunAddress" id="jibunAddress" placeholder="지번주소" readonly="readonly" onclick="DaumPostcode()">
                    <br /><span id="guide" style="color:#999;font-size:10px;"></span>   
                    <br /><br /><input type="text" name="wRestAddress" placeholder="나머지 주소" size="70" />
                </td>
            </tr>
 
        </table>
        <br />
        <table>
            <tr height="40">
                <td><input width="120" type="image" src="img/button/btn_join.png" />&nbsp;<a href="index.php"><img src="img/button/btn_cancel.png" width="120" /></a></td>
            </tr>
        </table>
    </form>










   							  
     							  
									<p><input type="submit" value="취소">
									<input type="submit" value="확인"></p>
							</section>
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