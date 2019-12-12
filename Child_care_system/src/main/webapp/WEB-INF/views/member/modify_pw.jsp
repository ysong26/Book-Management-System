<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
						<h1><a href="/" id="logo"><font size="10">VITA <em>500</em></font></a></h1>
 
			</div>
	</div>				

		
			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							
							
<section class="off-4 col-12" >
		
	<h3>비밀번호 변경</h3>

   <form role="form" method="post" autocomplete="off" onsubmit="return checkpw();">
  
  
        <table>
            <tr class="register" height="30">
                <td width="15%">아이디 
              <input type="text" id="User_ID" name="User_ID" value="${member.user_ID}" style="text-align:center; width:150px; height:50px;" readonly/></td>
            </tr>

            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            
            
            <tr class="register" height="30">
 
                <td width="15%">새로운 패스워드<br>
                (영문 대소문자, 숫자, 특수문자를 하나이상 포함해 5~20 사이로 입력 가능합니다.)
                <input type="password" id="User_PW"  name="User_PW" style="text-align:center; width:250px; height:50px;" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
  	
        </table>
        <br />
    <input type="submit" id="modify"value="비밀번호 수정">
    <input type="button" class="btn-back" onclick="history.go(-1);" value="취소">

    
    </form>

			</section>
		</div>
	</div>
	
	</div>
	</body>
	
	</html>
	<script>
	window.onload = function() {
		var e = document.forms;
			for(i=0; i<e.length; i++){
				for(j=0; j<e[i].elements.length; j++){
					if(e[i].elements[j].readOnly) e[i].elements[j].style.backgroundColor = "#EAEAEA";
						}
					}
				}
	</script>
	
	
 <script>

  var text = "";

  function checkpw() {
 
      var User_PW = document.getElementById("User_PW");

 	  // 정규식
      var pwPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{5,20}$/;

      
      
      // 패스워드
      if(pwPattern.test(User_PW.value) == true){
 
        }else {
    	  alert("비밀번호 양식에 맞춰주세요.");
    	  return false;
      }
      
      
    // 클리어
    function inputClear() {
      document.getElementById("SingUp").reset();
    }
  }
  </script>

	
	
	
	
		
	<%@include file="../footer.jsp"%>