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
   </div>
        <p> <p align="right"><input type="submit"  class="" onclick="location.href='/board/pan'" value="글쓰기"></p>
</table>



<div class="text-center">
<ul class ="pagination">

<c:if test="${pageMaker.prev}">
	<li><a href="listPage${pageMaker.makeQuery(1)}">&laquo;&laquo;</a></li>
	<li><a href="listPage?page=${pageMaker.startpage-1}">&laquo;</a></li>
</c:if>

<c:forEach begin="${pageMaker.startpage}" end="${pageMaker.endpage}" var="idx">
<li
 <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
 <a href="listPage${pageMaker.makeQuery(idx)}"> ${idx} &nbsp;&nbsp;</a>
 </li>
</c:forEach>

<c:if test="${pageMaker.next}">
	<li><a href="listPage?page=${pageMaker.endpage+1}">&raquo;</a></li>
	<li><a href="listPage${pageMaker.makeQuery(pageMaker.tempEndPage)}">&raquo;&raquo;</a></li>
</c:if>

</body>
</html>

  <!--  검색 부분 -->
    <br>
    <div id="searchForm">
        <form>
            <select name="opt">
                <option value="0">제목</option>
                <option value="1">내용</option>
                <option value="2">제목+내용</option>
                <option value="3">글쓴이</option>
            </select>
            <br>
            <input type="text" style="text-align:center; width:800px; height:50px; name="condition"/>&nbsp;
            
             <br><input type="submit" value="검색"/>
        </form>    
    </div>
</div>    
 


<%@include file="../footer.jsp"%>