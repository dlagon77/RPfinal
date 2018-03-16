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

<hr> 
<title>QnA 게시판</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<body>
	<c:import url="../header.jsp" />
		<div class="container">
	        <table class="table table-striped table-hover">
	        <br>
	        <img src="/finalp/resources/img/QnaImg.jpg" height="100" width="450" style="display: block;margin-left: auto;margin-right: auto;">
	           <h2 align="center">게시판</h2><br><br>
	   	<div>
        <form action="qbsearch.do" method="post">
            <select name="qboption">
                <option value="0">제목</option>
                <option value="1">내용</option>
                <option value="2">제목+내용</option>
                <option value="3">작성자</option>
            </select>
            <input type="text" size="20" name="qbsearch"/>&nbsp;
            <input type="submit" value="검색"/>
            
        </form><br><br>
    </div>
           
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
            <a href='qbInsertform.do' class="btn btn-success">글 쓰기</a>   
          </c:if>             
        </div>
        <br><br>
        <div class="col-md-12">
         <div class="text-center">
         <ul class="pagination">
            <li>              
	            <c:url var="first" value="qblist.do">
					<c:param name="currentPage" value="1" />
				</c:url>
				<c:if test="${currentPage != 1}">
					<a href="${first }">FIRST</a>
				</c:if>
            </li>
            <li>
               <c:url var="prev" value="qblist.do">
					<c:param name="currentPage" value="${currentPage - 1 }" />
			   </c:url>
			   <c:if test="${currentPage != 1}">
					<a href="${prev }">PREV</a>
			   </c:if>
            </li>
            <li>
            <c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
					<c:url var="page" value="qblist.do">
						<c:param name="currentPage" value="${p }" />
					</c:url>
			   <c:if test="${p ne currentPage }">
					 	<a href="${page }">${p }</a> 
			   </c:if>
			</li>
			<li>
			   <c:if test="${p eq currentPage }">	
				 		<a href="${page }"><b>${p }</b></a>
			   </c:if>
			</c:forEach>
			</li>
            
            <li>
            	<c:if test="${currentPage != maxPage }">
              	<c:url var="next" value="qblist.do">
					<c:param name="currentPage" value="${currentPage + 1 }" />
				</c:url>
					<a href="${next }">NEXT</a>
            </li>
            <li>
               <c:url var="last" value="qblist.do">
					<c:param name="currentPage" value="${maxPage }" />
			   </c:url>
					<a href="${last }">END</a>
			   </c:if>
            </li>
         </ul>
         	 </div>
    	 </div>
    	 <br>
    
	</div>
</body>
</html>