<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../header.jsp"%>

	<br> <center>		
		<h1> 회원 관리  </h1>	
	</center> <br> <br>
	
	<div class="container">
	<div class="row">
	
	<table class="table table-bordered">
		
		<tr>
			<th>학부모 아이디</th>
			<th>학부모 이름</th>
			<th>휴대폰 번호</th>	
			<th>E-mail</th>
		</tr>
		
		<c:forEach items="${User_list}" var="User_list">	
			<tr>
				<th>${User_list.getUser_ID()}</th>
				<th>${User_list.getUser_Name()}</th>
				<th>${User_list.getUser_CPN()}</th>
				<th>${User_list.getUser_Email()}</th> 															
			</tr>		
		</c:forEach>			
	</table>
	
	</div>
	</div>	
	
	<center>		
		<input type="reset" onclick="location.href='/'" value="메인 화면">				
	</center>
	

<%@include file="../footer.jsp"%>