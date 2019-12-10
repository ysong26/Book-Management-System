<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../header.jsp"%>


	<br>
	<table class="table table-bordered">
		
		<tr>			
			<th>NFC_ID</th>
			<th>User_ID</th>
			<th>Child_Name</th>
			<th>Child_Gender</th>	
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
	
	
	<center>
		<input type="reset" onclick="location.href='/admin/NFC_ID_regist'" value="등록 페이지">		
	</center>
		
	
<%@include file="../footer.jsp"%>