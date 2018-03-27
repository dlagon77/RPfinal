<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/css/bootstrap.css">
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

	<title>QnA 게시판</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<style type="text/css">
			#navbar{
				 overflow: hidden;
			}
			.sticky{
				position: fixed;
				top: 60px;
				width: 100%
			}
			.navbar-brand{
					font-size:16px!important;
			}
			.navbar-brand .a:hover {
				color:black;
			}
			.selected{
				border-bottom: solid 2px darkcyan;
				margin-top: 9px;
			}
			.container{
				margin-top:10px;
			}
			.search{
				margin-top:100px;
				margin-left:350px;
		
			}
		

	</style>
</head>
<body>
<c:import url="../header.jsp" />

	<div id="banner" style="height:305px;background-image: url('/finalp/resources/img/board.jpg');background-size:cover;"></div>
	<br>
		<div style="margin-left: 130pt">
			<nav class="navbar sticky-top navbar-light bg-light" style="display:flex">
			  <a href="qblist.do" class="navbar-brand" style="width:120px;color:gray"><span class="a">QnA Board</span><div class="selected"></div></a>
			  <a href="tblist.do" class="navbar-brand" style="width:120px;color:gray"><span class="a">Tip Board</span></a>

			</nav>
		</div>
	<br>
	
	<div class="container">
		<h2 style="text-align:center;">QnA 게시판</h2>
		<br>
		<div>
			<table class="table table-striped table-hover">
			
			
				
				<p>총 ${listCount}개의 게시물이 있습니다.</p> 
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>조회수</th>
						<th>날짜</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(qblist) > 0}">
							<c:forEach items="${qblist }" var="row">
								<tr>
									<td>${row.q_no }</td>
									<td>
										<c:url var="qbdv" value="qbDetail.do">
											<c:param name="q_no" value="${row.q_no }" />
										</c:url>
										<a href="${qbdv }">${row.q_title }</a>								
									</td>
									<td>${row.q_read_cnt }</td>
									<td>${row.q_date }</td>
									<td>${row.q_writer }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
						<tr>
							<td colspan="5">조회된 결과가 없습니다.</td>
						</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			
			<div class="writeButton">
				<c:if test="${!empty sessionScope.loginUser }">    
					<a href='qbInsertform.do' class="btn btn-warning"><i class="xi-pen xi-x"></i>&nbsp;글 쓰기</a>   
				</c:if>             
			</div>
			
			<div class="col-md-12">
         <div class="text-center">
         <ul class="pagination">
            <c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
					<c:url var="page" value="qblist.do">
						<c:param name="currentPage" value="${p }" />
					</c:url>
					<c:if test="${p ne currentPage }">
						<li>
							<a href="${page }">${p }</a> 
						</li>
					</c:if>
					<c:if test="${p eq currentPage }">	
						<li class="active">
							<a href="${page }"><b>${p }</b></a>
						</li>
					</c:if>
				</c:forEach>
         </ul>
         	 </div>
    	 </div>
			
			<div class="search">
				<form action="qbsearch.do" method="post">
				<select name="qboption">
					<option value="0">제목</option>
					<option value="1">내용</option>
					<option value="2">제목+내용</option>
					<option value="3">작성자</option>
				</select>
					<input type="text" size="20" name="qbsearch" required/>&nbsp;
					<input class="btn btn-warning" type="submit" value="검색"/>
				</form>
				<br><br>
			</div>
			<br>
	   	</div>
	</div>
</body>
</html>