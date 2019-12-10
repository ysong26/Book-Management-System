<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../header.jsp"%>


	<br>
	<table class="table table-bordered">
		
		<tr>
			<th>User_ID</th>
			<th>User_Name</th>
			<th>User_CPN</th>	
			<th>User_Email</th>
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
	
	<center>		
		<input type="reset" onclick="location.href='/admin/main'" value="확인">
	</center>
	

<%@include file="../footer.jsp"%>