<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
	<head>
		<title>VITA500</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="/" id="logo">VITA <em>500</em></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="about.jsp">Our Story</a></li>
									
									</ul>
								</li>
								
								<li>
									<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;Time&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="수정할곳.jsp">My Kids</a></li>
									
									</ul>
								</li>
								
								<li>
								<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;QnA&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="수정할곳.jsp">Board</a></li>
									
									</ul>
								</li>
								
								<li>
								<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;MyPage&nbsp;&nbsp;&nbsp;&nbsp;</a>
									<ul>
										<li><a href="수정할곳.jsp">MyPage</a></li>
									</ul>
								</li>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2><em>우리아이 안심 귀가 서비스</em></h2>
						<a href="여기수정.jps" class="button">Submit</a>
					</header>
				</section>
			</div>							




<html>
<head>
    <title>전체 게시글</title>
    
    <style type="text/css">
        #wrap {
            width: 800px;
            margin: 0 auto 0 auto;
        }
        #topForm{
            text-align :right;
        }
        #board, #pageForm, #searchForm{
            text-align :center;
        }
        
        #bList{
            text-align :center;
        }
    </style>
    
    <script type="text/javascript">
        function writeForm(){
            location.href="BoardWriteForm.bo";
        }
    </script>
    
</head>
<body>    
 
<div id="wrap">
 
    <!-- 글목록 위 부분-->
    <br>
    <div id="topForm">
        <c:if test="${sessionScope.sessionID!=null}">
            <input type="button" value="글쓰기" onclick="writeForm()">
        </c:if>    
    </div>
    
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
		
		
					
		
		
        <c:forEach var="board" items="${requestScope.list}">
            <tr>
                <td>${board.board_num}</td>
                <td>
                    <a href="BoardDetailAction.bo?num=${board.board_num}&pageNum=${pageNum}">
                    ${board.board_subject}
                    </a>
                </td>
                <td>
                    <a href="#">
                    ${board.board_id}
                    </a>
                </td>
                <td>${board.board_date}</td>
                <td>${board.board_count}</td>
            </tr>
        </c:forEach>
        </table>
        
    </div>

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

<li>
<br><br>

<form method="GET">
<input type="text" name="page">
<input type="submit" value="이동">
</form>

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
 
		
	

<tr>
<td>

		</div>
					<header>
					<br><br>
					
					
					<p align="right"> <a href="pan.jps" class="button"  style="width:250px; height:55px;">게시판 글작성</a><p>
					</header>
				</section>
			</div>							

</td>
</tr>




<script>
var result ='${result}'
if(result=='success'){
	alert("글이 등록되었습니다.");
}

var result ='${msg}'
	if(result=='success'){
		alert("글이 삭제되었습니다.");
}
</script>


			
			
			
			<!-- 게시판 만드는곳 -->
			<br><br><br><br><br><br><br><br><br><br>
			
			
	
		
			
			
			
			
			
			
			
			
			

					<!-- Icons -->
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon brands fa-google-plus-g"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="https://github.com/ysong26/Child-care-systems">Team_VITA500</a></li>
							</ul>
						</div>

				</div>

		</div>

		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>

