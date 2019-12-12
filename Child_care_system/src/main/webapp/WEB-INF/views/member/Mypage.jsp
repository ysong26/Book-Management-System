<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.jsp"%>
	

	<br><br><br>
	<center>
		<font size="25">MyPage</font><br><br><br>
		아이디:${member.user_ID}<br>
		이름:${member.user_Name}<br>
		휴대번호:${member.user_CPN}<br>
		이메일:${member.user_Email}<br><br>
		
		
		<h3>＊개인정보 변경＊</h3>
		
		개인정보&emsp;&emsp;<a href="#">변경하기</a><br>
		비밀번호&emsp;&emsp;<a href="/member/modify_pw">변경하기</a><br><br>
		

		<h3>＊회원탈퇴＊</h3>
		회원탈퇴&emsp;&emsp;<a href="/member/delete1">탈퇴하기</a><br>
		<br><br><br><br>
		<input type="submit" onclick="location.href='/'" value="메인으로">
	</center>
	<br><br>
	
		
	
<%@include file="../footer.jsp"%>