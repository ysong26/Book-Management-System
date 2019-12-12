<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<table class="table table-bordered">

  <br>
    <div id="board">
        <table id="bList" width="800" border="3" bordercolor="lightgray">
            <tr heigh="30">
                <td>글번호</td>
                <td>제목</td>
                <td>작성자</td>
                <td>작성일</td>
                <td>조회수</td>
            </tr>
            
            	</tr>
	<c:forEach items="${list}" var="data">	
	<tr>
	
		<td style="width: 10px">${data.board_No}</td>
			<td><a href ="detail?board_No=${data.board_No}">${data.board_Subject}</a></td>
			<td>${data.user_ID}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${data.board_DateTime}"/></td>
			<td><span class="badge bg-red">${data.board_Cnt}</span></td>
		</tr>
	</c:forEach>
		
</table>

<script>
var result ='${result}'
if(result=='success'){
	alert("글이 등록되었습니다.");
}

var msg ='${msg}'
if(msg=='success'){
	alert("글 삭제가 정상적으로 처리되었습니다.");
}

</script>

    
    
    <%@include file="../footer.jsp"%>
