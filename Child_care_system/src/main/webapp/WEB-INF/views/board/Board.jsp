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
	
	<tr>
		<td style="width: 10px">1</td>
		<td>이제 곧 페이지 1이라면서요?</td>
		<td>원빈</td>
		<th>2016.12.02</th>
		<td style="width: 40px">2</td>
		</tr>
	
		<tr>
		<td style="width: 50px">   2</td>
		<td>이제 곧 페이지 2이라면서요?</td>
		<td>장돈건</td>
		<th>2016.12.02</th>
		<td style="width: 40px">11</td>
		</tr>
	
		<tr>
		<td style="width: 50px">   3</td>
		<td>이제 곧 페이지 3이라면서요?</td>
		<td>아이유</td>
		<th>2016.12.02</th>
		<td style="width: 40px">10</td>
		</tr>
		
		<tr>
		<td style="width: 50px">   4</td>
		<td>이제 곧 페이지 4이라면서요?</td>
		<td>현빈</td>
		<th>2016.12.03</th>
		<td style="width: 40px">5</td>
		</tr>
		
		<tr>
		<td style="width: 50px">   5</td>
		<td>이제 곧 페이지 5이라면서요?</td>
		<td>진우</td>
		<th>2016.12.05</th>
		<td style="width: 40px">12</td>
		</tr>
		
		
					
		
		

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