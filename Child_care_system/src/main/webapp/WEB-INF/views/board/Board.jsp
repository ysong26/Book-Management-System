<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header.jsp"%>
			
			

			<!-- 게시판 만드는곳 -->
 <!-- 게시글 목록 부분 -->
    <br>
    
    <div id="board">
        <table id="bList" width="800" border="3" bordercolor="lightgray">
            <tr heigh="30">
                <td>글번호</td>
                <td>제목</td>
                <td>작성자</td>
                <td>작성일</td>

            </tr>
            
            	
	<c:forEach items="${list}" var="data">	
	<tr>
	
		<td style="width: 10px">${data.board_No}</td>
			<td><a href ="detail?board_No=${data.board_No}">${data.board_Subject}</a></td>
			<td>${data.user_ID}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${data.board_DateTime}"/></td>

		</tr>
	</c:forEach>
		

        </table>
	
   </div>
        <p> <p align="right"><input type="submit"  class="" onclick="location.href='/board/pan'" value="글쓰기"></p>





</body>
</html>

 

 


<%@include file="../footer.jsp"%>