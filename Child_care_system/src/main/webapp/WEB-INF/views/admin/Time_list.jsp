<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../header.jsp"%>
	
	
	<br> <center>		
		<h1> 시간 관리  </h1>		
		
		<select name="NFC아이디">
			<c:forEach items="${nfc_id}" var="nfc_id">				    
		    	<option value="${nfc_id.nfc_id}"> ${nfc_id.nfc_id} </option>
		    </c:forEach>
		    
		</select>
		
	</center> <br> <br>
		
	
	<div class="container">
	<div class="row">
	
	<table class="table table-bordered">	
				
		<tr>			
			<th>No</th>
			<th>날짜/시간</th>
			<th>NFC 아이디</th>				
		</tr>		
		
		<c:forEach items="${Time_list}" var="Time_list">	
			<tr>
				<th>${Time_list.nfc_no}</th>
				<th>${Time_list.nfc_datetime}</th>
				<th>${Time_list.nfc_id}</th>				 															
			</tr>		
		</c:forEach>			
	</table>
	
	</div>
	</div>	
	
	<center>
		<input type="reset" onclick="location.href='/admin/Time_chart'" value="차트 화면">
		<input type="reset" onclick="location.href='/'" value="메인 화면">		
	</center>
	
	
	
	



			


<%@include file="../footer.jsp"%>