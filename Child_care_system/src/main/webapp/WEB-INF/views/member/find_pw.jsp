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
						<h1><a href="/" id="logo">VITA <em>500</em></a></h1>
 
			</div>
	</div>				

		
			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							
							
<section class="off-4 col-12" >
		
	<h3>비밀번호 찾기</h3>

   <form role="form" method="post" onsubmit="return check();">
        <table>
            <tr>
                <td><b>[회원님의 아이디, 이름, 비밀번호, 이메일을 입력하세요.]</b></td>
            </tr>
        </table>    
        <table>
                 
              <tr class="register" height="30">
                <td width="15%">아이디
              <input type="text" name="User_ID" id="User_ID" style="text-align:center; width:150px; height:50px;"/></td>
            </tr>

            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>

           
            <tr class="register" height="30">
                <td width="15%">이 름 
              <input type="text" name="User_Name" id="User_Name"style="text-align:center; width:150px; height:50px;"/></td>
            </tr>

            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            
            
             <tr class="register" height="30">
                <td width="15%">휴대전화 ('-'없이 번호만 입력해주세요.)<br>
                <input type="text" name="User_CPN" id="User_CPN" placeholder="ex)01012341234" style="text-align:center; width:250px; height:50px;" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            
            
            <tr class="register" height="30">
                <td width="15%">이메일
                <input type="email" name="User_Email" id="User_Email" placeholder="ex)vita500@email.com"style="text-align:center; width:250px; height:50px;" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
  	
        </table>
        <br />
        <p><input type="submit"  class="btn-primary" id="confirmBtn" disabled="disabled" value="비밀번호 찾기"></p>
    </form>

			</section>
		</div>
	</div>
	
	</div>
	</body>
	</html>
	
	
		
	<%@include file="../footer.jsp"%>