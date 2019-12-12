<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

<form role="form" method="post">

	<div class="box-body">

		<div class="form-group">
			<label for="exampleInputEmail1">글번호</label> <input type="text"
				name='Board_No' class="form-control" value="${boardVO.board_No}"
				readonly="readonly"> <!-- 글 번호 수정불가 -->
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">제목</label> <input type="text"
				name='Board_Subject' class="form-control" value="${boardVO.board_Subject}">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">내용</label>
			<textarea class="form-control" name="Board_Content" rows="3">${boardVO.board_Content}</textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">작성자</label> <input
				type="text" name="User_ID" class="form-control"
				value="${boardVO.user_ID}"
				readonly="readonly"> <!-- 작성자 수정불가 -->
		</div>
	</div>
	<!-- /.box-body -->
</form>


<div class="box-footer">
	<button type="submit" class="btn btn-primary">저장</button>
	<button type="submit" class="btn btn-warning">취소</button>
</div>

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			self.location = "/board/Board";
		});
		

		$(".btn-primary").on("click", function() {
			formObj.submit();
		});

	});
</script>




			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="../footer.jsp"%>
