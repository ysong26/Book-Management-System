<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../header.jsp"%>



<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">게시판</h3>
				</div>
				<!-- /.box-header -->

<form role="form" method="post">
	<input type='hidden' name='board_No' value="${boardVO.board_No}">
</form>	

<div class="box-body">
	<div class="form-group">
		<label for="exampleInputEmail1">제목</label> <input type="text"
			name='Board_Subject' class="form-control" value="${boardVO.board_Subject}"
			readonly="readonly">
	</div>
	<div class="form-group">
		<label for="exampleInputPassword1">내용</label>
		<textarea class="form-control" name="Board_Content" rows="3"
			readonly="readonly">${boardVO.board_Content}</textarea>
	</div>
	<div class="form-group">
		<label for="exampleInputEmail1">작성자</label> <input type="text"
			name="User_ID" class="form-control" value="${boardVO.user_ID}"
			readonly="readonly">
	</div>
</div>


<div class="box-footer">
	<button type="submit" class="btn btn-warning">수정</button>
	<button type="submit" class="btn btn-danger">삭제</button>
	<button type="submit" class="btn btn-primary">전체목록</button>
</div>



<script>
	$(document).ready(function(){
		var formObj = $("form[role='form']");
		console.log(formObj);
		
		
		
		$(".btn-warning").on("click",function(){
			formObj.attr("action","/board/modify");
			formObj.attr("method","get");
			formObj.submit();
		});	
		
		
		$(".btn-danger").on("click",function(){
			formObj.attr("action","/board/remove");
			formObj.submit();
		});	
		
		
		
		$(".btn-primary").on("click",function(){
			self.location="/board/Board"
		});	
		

	
	});
</script>
			</div>
		</div>
	</div>
</section>
	


 <%@include file="../footer.jsp"%>