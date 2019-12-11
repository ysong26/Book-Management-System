<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
	<head>
		<title>VITA500</title>
		<meta charset="utf-8" />
		<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
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
							
							
<section class="off-4 col-12" >
		
	<h3>회원가입 정보 작성</h3>

   <form role="form" method="post" onsubmit="return check();">
        <table>
            <tr>
                <td><b>[회원가입]</b></td>
            </tr>
        </table>    
        <table>
                    <!-- 중복검사  ID랑 PW ajax로 ,정규식, 단방향암호화 -->
            <tr class="register" height="30">
                <td align="center">*</td>
                <td width="50%">회원 ID (5~20자리의 알파벳, 숫자만 입력 가능합니다.)
                <input type="text" name="User_ID" id="User_ID" style="text-align:center; width:200px; height:50px;"/>
                &emsp;&emsp;<button type="button" class="idCheck">중복확인</button>
                	<p class="result">
                		<span class="msg">아이디를 확인해주십시오.</span>
                	</p>
                </td>
            </tr>
           
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">비밀번호 (영문 대소문자, 숫자, 특수문자를 하나이상 포함하여 5~20 자리사이로 입력 가능합니다.)
                <input type="password" name="User_PW" id="User_PW" style="text-align:center; width:200px; height:50px;" onchange="isSame()" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">비밀번호 확인
                <input type="password" name="User_PW_Check" id="User_PW_Check" style="text-align:center; width:200px; height:50px;" onchange="isSame()" />&nbsp;&nbsp;<span id="same"></span></td>
            </tr>

            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">이 름 (2~6 자리의 한글만 입력 가능합니다.)
              <input type="text" name="User_Name" id="User_Name"style="text-align:center; width:150px; height:50px;"/></td>
            </tr>

            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">휴대전화 ('-'없이 번호만 입력해주세요.)<br>
                <input type="text" name="User_CPN" id="User_CPN" placeholder="ex)01012341234" style="text-align:center; width:250px; height:50px;" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">이메일
                <input type="email" name="User_Email" id="User_Email" placeholder="ex)vita500@email.com"style="text-align:center; width:250px; height:50px;" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
  	
        </table>
        <br />
        <p><input type="submit"  class="" onclick="location.href='/'" value="취소">
		<input type="submit"  class="btn-primary" id="confirmBtn" disabled="disabled" value="확인"></p>
    </form>

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


  <script>

  var text = "";
  var count = 0;
  function check() {
    count++;
     
      var User_ID = document.getElementById("User_ID"); //User_ID요소값을 가져옴
      var User_PW = document.getElementById("User_PW");
      var User_PW_Check = document.getElementById("User_PW_Check");
      var User_Name = document.getElementById("User_Name");
      var User_Email = document.getElementById("User_Email");
      var User_CPN = document.getElementById("User_CPN");
 	  // 정규식
      var idPattern = /^[A-Za-z]{1}[A-Za-z0-9]{5,20}$/;
      var pwPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{5,20}$/;
      var namePattern = /^[가-힣]{2,6}$/;
      var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      var phonePattern = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;
 
      // 아이디
      if(idPattern.test(User_ID.value) == true){
        text += "ID : " + User_ID.value + "\n";
      }
      else 
    	  {
    	  alert("아이디를 잘못 입력 하셨습니다.");
    	  return false;
    	  }
      
      
      // 패스워드
      if(pwPattern.test(User_PW.value) == true){
        if(pwPattern.test(User_PW_Check.value) == true){
          if(User_PW.value == User_PW_Check.value){
            text += "PW : " + User_PW.value + "\n";
          }
        }
        else {
        	alert("패스워드가 일치 하지 않습니다.");
        	return false;
        	}
      }
      else {
    	  alert("패스워드를 잘못 입력 하셨습니다.");
    	  return false;
      }
      
      
      
      // 이메일
      if(emailPattern.test(User_Email.value) == true){
        text += "EMAIL : " + User_Email.value + "\n";
      }
      else {
    	  alert("이메일을 잘못 입력 하셨습니다.");
    	  return false;
      }
      
    	// 이름
        if(namePattern.test(User_Name.value) == true){
          text += "NAME : " + User_Name.value + "\n";
        }
        else {
          alert("이름을 잘못 입력 하셨습니다.");
        	return false;
      }
      
      // 휴대폰 번호
      if(phonePattern.test(User_CPN.value) == true){
        text += "PHONE : " + User_CPN.value + "\n";
      }
      else {
    	  alert("번호를 잘못 입력 하셨습니다.");
    	  return false;
      }

      // 이전에 입력했던 회원정보를 비우기
      if(count == 0+count)
        text = [];
    }
 
    // 클리어
    function inputClear() {
      document.getElementById("SingUp").reset();
    }
  </script>

<script> 
$(".idCheck").click(function(){
 
 var query = {User_ID : $("#User_ID").val()};
 
 $.ajax({
  url : "/member/idCheck",
  type : "post",
  data : query,
  success : function(data) {
  
   if(data == 1) { //아이디 중복되면
    $(".result .msg").text("중복된 아이디입니다.");
    $(".result .msg").attr("style", "color:#f00");
    $("#confirmBtn").attr("disabled", "disabled"); //가입버튼 막아둠
   } else {
    $(".result .msg").text("사용가능한 아이디입니다."); //아이디 사용가능하면
    $(".result .msg").attr("style", "color:#00f");
    $("#confirmBtn").removeAttr("disabled"); //가입버튼 열림
   }
  }
 });  // ajax 끝
});

</script>



		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>