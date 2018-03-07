<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Assignment Detail</title>
</head>
<body>
<c:import url="../header.jsp" />
<h1 align="center">${ass.ass_no }번 글 상세보기</h1>
<br>
<table align="center" width="600" cellspacing="0" border="1">
<tr><th>제 목</th>
<td>${ass.ass_title }</td></tr>
<tr><th>작성자</th>
  <td>${ass.ass_writer }</td></tr>

<tr><th>첨부파일</th>
   <td>
			<c:if test="${!empty ass.ass_orfile }">
			<c:url var="downfile" value="assdownfile.do">
				<c:param name="rfile" value="${ass.ass_refile }" />
				<c:param name="ofile" value="${ass.ass_orfile }" />
			</c:url>
			<a href="${downfile }">${ass.ass_orfile }</a>
			</c:if>
			<c:if test="${empty ass.ass_orfile }">
			첨부파일 없음
		</c:if> 
   </td>
</tr>

<tr><th>내 용</th>
   <td>${ass.ass_comment }</td></tr>
<%--    <c:if test="${ bone.board_level<2}">
<tr><td colspan="2" align="center">
<a href="#">[댓글달기]</a></td></tr>
   </c:if> --%>
<tr><th colspan="2">
	<c:if test="${loginUser.mem_no eq ass.ass_writer }">
		<c:url var="bup" value="bupdateForm.do">
									<c:param name="board_num" value="${bone.board_num }"/>
									</c:url>
									<a href="${bup}">수정페이지로 이동</a>&nbsp; 
				<c:url var="bdel" value="bdelete.do">
									<c:param name="board_num" value="${bone.board_num }"/>
									</c:url>
									<a href="${bdel}">글 삭제</a>	<!-- 삭제할 땐 레벨이 2 미만이면 이후 레벨들도 같이 지워져야 됨 -->
	</c:if>
</th></tr>
  
</table>
<c:import url="../footer.jsp" />
</body>
</html>