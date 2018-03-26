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
<!-- === BEGIN CONTAINER ABOUT ===  -->
<div class="container about" style="display:flex;width:1284px;">
<c:import url="mpsidemenu.jsp" />
<!-- === BEGIN mywriteqna_ModifyView ===  -->
<script type="text/javascript">
// 	function serviceUpdate() {
// 		location.href = 'serviceUpdate.do';
// 	}
// 	console.log("${myqnaboardupdate}");
</script>
<!-- === BEGIN CONTENT === -->
<div id="content">
	<div class="container background-white">
		<div class="row margin-vert-30">
			<!-- Main Column -->
			<div class="col-md-9">
				<!-- Main Content -->
				<div class="headline">
					<h2>고객센터</h2>
				</div>
				<hr>
				<form name="servicecenter" method="post" action="/finalp/serviceUpdate.do">
<%-- 					<input type="hidden" name="writer" value="${sessionScope.loginUser.mem_no }">  --%>
					<input type="hidden" name="q_no" value="${myqnaboardupdate.q_no }"> 
					<label>작성자 <span class="color-red">*</span></label>
					<div class="row margin-bottom-20">
						<div class="col-md-6 col-md-offset-0">
							<input name="user_name" class="form-control" type="text"
								value="${myqnaboardupdate.mem_name}" readonly>
						</div>
					</div>
					<label>제목 <span class="color-red">*</span></label>
					<div class="row margin-bottom-20">
						<div class="col-md-6 col-md-offset-0">
							<input id="title" name="q_title" class="form-control" type="text"
								value="${myqnaboardupdate.q_title }">
						</div>
					</div>
					<label>내용</label>
					<div class="row margin-bottom-20">
						<div class="col-md-8 col-md-offset-0">
							<textarea id="contents" name="q_content" rows="8"
								class="form-control" placeholder="내용을 입력해주세요">${myqnaboardupdate.q_content }</textarea>
						</div>
					</div>
					<div align="center">
						<button type="submit" class="btn btn-primary">수정하기</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:history.go(-1);">
							<button type="button" class="btn btn-primary">수정취소</button>
						</a>
					</div>
				</form>
			</div>
			<hr>
			<!-- End Contact Form -->
			<!-- End Main Content -->
		</div>
		<!-- End Main Column -->
	</div>
	<!-- End Side Column -->
</div>
</body>
</html>