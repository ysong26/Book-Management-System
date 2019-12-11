<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../header.jsp"%>




    
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script> 
  


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
	<input type="hidden" name="bno" value="65539">
	<input type="hidden" name="page" value="1">
	<input type="hidden" name="perPageNum" value="10">
</form>	

<div class="box-body">
	<div class="form-group">
		<label for="exampleInputEmail1">제목</label> <input type="text"
			name='title' class="form-control" value="123"
			readonly="readonly">
	</div>
	<div class="form-group">
		<label for="exampleInputPassword1">내용</label>
		<textarea class="form-control" name="content" rows="3"
			readonly="readonly">456</textarea>
	</div>
	<div class="form-group">
		<label for="exampleInputEmail1">작성자</label> <input type="text"
			name="writer" class="form-control" value="777"
			readonly="readonly">
	</div>
</div>

<div class="box-footer">
	<button type="submit" class="btn btn-warning">수정</button>
	<button type="submit" class="btn btn-danger">삭제</button>
	<button type="submit" class="btn btn-primary">목록</button>
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
			formObj.attr("method", "get");
			formObj.attr("action", "/board/listPage");
		formObj.submit();
		});	
	
	});
</script>
			</div>
		</div>
	</div>
</section>
	



 <%@include file="../footer.jsp"%>