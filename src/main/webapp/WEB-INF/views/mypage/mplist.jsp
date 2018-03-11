<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생-내가쓴글</title>
</head>
<!-- === BEGIN BODY ===  -->
<body>
<!-- === BEGIN HEADER ===  -->
<c:import url="../header.jsp" />
<!-- === END HEADER ===  -->
<c:import url="mpsidemenu.jsp" />
<!-- === BEGIN STU_PROFILE ===  -->
<script>
	$('#stumypage').addClass('list-group-item');
	$('#stusubsc').addClass('list-group-item');
	$('#stuquestion').addClass('list-group-item');
	$('#stusubmit').addClass('list-group-item');
	$('#stuanalist').addClass('list-group-item');
	$('#stuchangeTu').addClass('list-group-item');
	$('#stuupdate').addClass('list-group-item');
	$('#stumessage').addClass('list-group-item');
	$('#stumyboard').addClass('list-group-item active');
</script>	
<!-- === BEGIN CONTENT === -->
<div id="content">
	<div class="container background-white" style="min-height: 800px">
		<div class="row margin-vert-30">
			<!-- Main Column -->
			<div style="width:800px;">
				<!-- Main Content -->
				<div class="headline">
					<h2>게시판에 내가 쓴 글 내역</h2>
				</div>
				<hr>

				<form action="selectServiceList.do" method="post">
					<div align="right" style="width:200px;">
						<c:if test="${keyword ne ''}">
							<span>&nbsp;&nbsp;&nbsp;&nbsp;검색어 <b>"${keyword}"</b></span>
						</c:if>
					</div>
					<div align="right" style="width:200px;">
						<input class="form-control" type="search" id="keyword"
							placeholder="제목을 입력해 주세요" name="keyword">
					</div>
					<div>
						<button type="submit" class="btn btn-primary btn-sm">검색</button>
					</div>
				</form>
				<br> <br>
				<div align="left" style="margin-left: 5%; margin-right: 5%">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<tr>
								<th width="10%"
									style="background-color: rgb(51, 116, 122); text-align: center; color: white;">글번호</th>
								<th width="55%"
									style="background-color: rgb(51, 116, 122); text-align: center; color: white;">제목</th>
								<th width="15%"
									style="background-color: rgb(51, 116, 122); text-align: center; color: white;">작성자</th>
								<th width="10%"
									style="background-color: rgb(51, 116, 122); text-align: center; color: white;">등록일</th>
								<th width="10%"
									style="background-color: rgb(51, 116, 122); text-align: center; color: white;">조회수</th>
							</tr>
							<c:if test="${result ne 0 }">
								<c:forEach var="sc" items="${list }">
									<tr onclick="detail(${sc.service_no });"
										style="cursor: pointer">
										<td style="text-align: center;">${sc.service_no}</td>
										<td style="text-align: center;">${sc.title}</td>
										<td style="text-align: center;">${sc.user_name}</td>
										<td style="text-align: center;">${sc.write_date}</td>
										<td style="text-align: center;">${sc.readcount}</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${result eq 0 }">
								<tr>
									<td colspan="5" style="text-align: center;">글이 존재하지 않습니다</td>
								</tr>
							</c:if>
						</table>
						<div align="right">
							<button type="button" class="btn btn-primary"
								onclick="serviceMyWrite(${sessionScope.user.user_no});">내가쓴글</button>
							&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary" onclick="writeService();">글쓰기</button>
						</div>

						<!-- 페이지 -->
						<div class="text-center">
							<ul class="pagination">
								<c:if test="${currentPage <= 1 }">
									<li class='disabled'><a href="#">&laquo;</a></li>
								</c:if>
								<c:if test="${currentPage > 1 }">
									<li><a
										href="selectServiceList.do?page=${currentPage-1 }">&laquo;</a></li>
								</c:if>
								<c:forEach begin="${startPage}" end="${endPage}" step="1"
									varStatus="status">
									<c:if test="${status.index eq currentPage }">
										<li class="active"><a href='#'>${status.index}</a></li>
									</c:if>
									<c:if test="${status.index ne currentPage }">
										<li><a
											href='selectServiceList.do?page=${status.index}'>${status.index}</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${currentPage < maxPage }">
									<li><a
										href="selectServiceList.do?page=${currentPage+1 }">&raquo;</a></li>
								</c:if>
								<c:if test="${currentPage >= maxPage }">
									<li class='disabled'><a href="#">&raquo;</a></li>
								</c:if>
							</ul>
						</div>
						<hr>
						<!-- End Contact Form -->
						<!-- End Main Content -->
					</div>
				</div>
				<!-- End Side Column -->
			</div>
		</div>
	</div>
	</div>
	<!-- === END CONTENT === -->
	        <!-- 밑에 div 2개 지우지 말것. mypagemenu.js에서 닫는 용도-->
		</div>
	</div>
	<!-- 밑에 div 1개 지우지 말것. header.jsp 닫는 용도 -->
	</div>
	</body>
</html>
