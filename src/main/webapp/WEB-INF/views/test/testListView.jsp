<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test List</title>
</head>
<body>
<c:import url="../header.jsp" />
<hr>
<h2 align="center">게시판 목록</h2>
	<table align="center" border="1" cellspacing="0">
		<colgroup>
			<col width="10%"/>
			<col width="*"/>
			<col width="15%"/>
			<col width="20%"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">글번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(testList) > 0}">
					<c:forEach items="${testList}" var="row">
						<tr>
							<td>${row.test_no}</td>
							<td class="title">
<%-- 							<c:if test="${empty loginUser }">${row.test_title }</c:if>
							<c:url var="testdetail" value="testdetail.do">
								<c:param name="currentPage" value="${currentPage }" />
								<c:param name="test_no" value="${row.test_no }" />
							</c:url>
							<c:if test="${!empty loginUser }">
								<a href="${testdetail }" name="title">${row.test_title }</a>
							</c:if>		 --%>	
								<c:url var="testdetail" value="testDetailForm.do">
								<c:param name="currentPage" value="${currentPage }" />
								<c:param name="test_no" value="${row.test_no }" />	
								</c:url>			
								<a href="${testdetail}" name="title">${row.test_title }</a>
							</td>
							<td>${row.test_date }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<br><br>
	<!-- 페이지 번호 처리 -->
	<div style="text-align:center;">
	<c:url var="first" value="testList.do">
		<c:param name="currentPage" value="1" />
	</c:url>
	<a href="${first }">[맨처음]</a>
	<c:url var="prev" value="testList.do">
		<c:param name="currentPage" value="${startPage - limit }" />
	</c:url>
	<a href="${prev }">	[prev]</a>
	<c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
	<c:url var="page" value="testList.do">
		<c:param name="currentPage" value="${p }" />
	</c:url>
	<c:if test="${p ne currentPage }">
		<a href="${page }">	| ${p } |&nbsp; </a> 
	</c:if>
	<c:if test="${p eq currentPage }">	
	<a href="${page }">	| <b>${p }</b> |&nbsp; </a>
	</c:if>
	</c:forEach>
	<c:url var="next" value="testList.do">
		<c:param name="currentPage" value="${endPage + limit }" />
	</c:url>
	<a href="${next }">	[next]</a>
	<c:url var="last" value="testList.do">
		<c:param name="currentPage" value="${maxPage }" />
	</c:url>
	<a href="${last }">[맨끝]</a>
	</div>
</body>
</html>