<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- === BEGIN BODY ===  -->
<body>
<!-- === BEGIN HEADER ===  -->
<c:import url="../header.jsp" />
<!-- === END HEADER ===  -->
<c:import url="mpsidemenu.jsp" />
<!-- === BEGIN mySubmitAssign_DetailView ===  -->

<script type="text/javascript">
/* 	  	function deleteService(sno) 
		{
		 var answer = false;
		
		answer = confirm("해당 게시물을 삭제하시겠습니까?");
		if (answer){
			location.href ='delmyQna.do?sno='+sno;
			alert("삭제되었습니다.");
			} 
	} */
/* 	function modifyService(no) {
		location.href = 'MyWriteQNAModifyPage.do?no='+no;
		
	} */
	</script>
<!-- === BEGIN CONTENT === -->
<div id="content">
	<div class="container background-white">
		<div class="row margin-vert-30">
			<!-- Main Column -->
			<div class="col-md-9">
				<!-- Main Content -->
				<div class="headline">
					<h2>글 상세보기</h2>
				</div>
				<hr>
			
				<label>푼 문제 제목 <span class="color-red">*</span>
				</label>
				
				<div class="row margin-bottom-20">
					<div class="col-md-6 col-md-offset-0">
						<input class="form-control" type="text"
							value="${mypassign.ass_title}" readonly>
					</div>
				</div>
				
				<label>제출날짜 <span class="color-red">*</span>
				</label>
					<div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6 col-md-offset-0">
							<input class="form-control" type="text"
								value="${mypassign.ass_date }" readonly>
						</div>
					</div>
				<label>첨부파일 <span class="color-red">*</span>
				</label>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6 col-md-offset-0">
						<%-- 	<input class="form-control" type="text"
								value="${mypassign.ass_date }" readonly> --%>
									<c:if test="${!empty mypassign.ass_orfile }">
								<c:url var="assdownfile" value="assdownfile.do">
									<c:param name="rfile" value="${mypassign.ass_refile }" />
									<c:param name="ofile" value="${mypassign.ass_orfile }" />
								</c:url>
								<a href="${assdownfile }">${mypassign.ass_orfile }</a>
								</c:if>
								<c:if test="${empty mypassign.ass_orfile }">
								첨부파일 없음
							</c:if> 
						</div>
					</div>
				
				<%-- 	<label>내용</label>
					<div class="row margin-bottom-20">
						<div class="col-md-8 col-md-offset-0">
							<textarea rows="8" class="form-control" placeholder="내용을 입력해주세요" readonly
								>${mypassign.ass_title }</textarea>
						</div>
					</div> --%>
					
					<div align="center">
<%-- 						<c:if test="${sessionScope.loginUser.mem_name eq myqnaboard.mem_name }"> --%>
<!-- 							<button type="button" class="btn btn-primary" -->
<%-- 								onclick="modifyService(${myqnaboard.q_no});">수정</button> --%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%--                                     <a href='deleteService.do?q_re_no=${ rlist.q_re_no}' class="btn btn-success">삭제</a>                                                                                                   --%>
<%--                                     <button type="button" class="btn btn-primary" onclick="deleteService(${myqnaboard.q_no});">삭제</button> --%>
<%--                                     <a href='qbrDelete.do?q_re_no=${ rlist.q_re_no}' class="btn btn-success">삭제</a>                                                                                                --%>
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%--                                    </c:if> --%>
						<button type="submit" class="btn btn-primary"
							onclick='location.href="MyAssignBoardList.do"'>목록으로</button>

					</div>
				</div>
				<%-- </c:forEach>  --%>
				<hr>
				<!-- End Contact Form -->
				<!-- End Main Content -->
			</div>
			<!-- End Main Column -->

		</div>
		<!-- End Side Column -->
	</div>
</div>
</body>
</html>