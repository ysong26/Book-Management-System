<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../header.jsp"%>
	
	<br> <center>		
		<h1> NFC_ID 관리   </h1>	
	</center> <br> <br>
	
	<div class="container">
	<div class="row">
	
	<table class="table table-bordered">	
				
		<tr>			
			<th>NFC 아이디</th>
			<th>학부모 아이디</th>
			<th>아동 이름</th>
			<th>아동 성별</th>	
		</tr>
		
		<c:forEach items="${NFC_ID_list}" var="NFC_ID_list">	
			<tr>
				<th>${NFC_ID_list.nfc_id}</th>
				<th>${NFC_ID_list.user_id}</th>
				<th>${NFC_ID_list.child_name}</th>
				<th>${NFC_ID_list.child_gender}</th> 															
			</tr>		
		</c:forEach>			
	</table>
	
	</div>
	</div>	
	
	<center>
		<input type="reset" onclick="location.href='/admin/NFC_ID_regist'" value="등록 페이지">
		<input type="reset" onclick="location.href='/'" value="메인 화면">		
	</center>
	
	
	
		
	
<%@include file="../footer.jsp"%>