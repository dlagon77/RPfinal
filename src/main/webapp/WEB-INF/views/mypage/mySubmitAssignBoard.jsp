<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 제출한 과제</title>
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
	$('#stuanalist').addClass('list-group-item active');
	$('#stuchangeTu').addClass('list-group-item');
	$('#stuupdate').addClass('list-group-item');
	$('#stumessage').addClass('list-group-item');
	$('#stumyboard').addClass('list-group-item');
	function detail(sno){
		location.href = 'detailMyQnaService.do?sno='+sno;
	}
</script>	
<!-- === BEGIN CONTENT === -->
<div id="content" style="    margin-left: 20px;">
	<div class="container background-white" style="min-height: 800px">
		<div class="row margin-vert-30">
			<!-- Main Column -->
			<div style="width:1200px;">
				<!-- Main Content -->
				<div class="headline">
					<h2>내가 제출한 과제</h2>
				</div>
				<hr>

				<style>
				.qtable{
					background-color: skyblue; 
					text-align: center; 
					color: white;"
				}
				</style>
				<br> <br>
				<div align="left" style="margin-left: 5%; margin-right: 5%">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<tr>
<!-- 								<th class="qtable" style="width:100px;">글번호</th> -->
								<th class="qtable" style="width:700px;">제목</th>
								<th class="qtable" style="width:100px;">작성자</th>
								<th class="qtable" style="width:200px;">제출일</th>
								<th class="qtable" style="width:100px;">해당수업</th>
							</tr>
							<c:if test="${result ne 0 }">
								<c:forEach var="sc" items="${list }">
									<tr onclick="detail(${sc.ass_no });"
										style="cursor: pointer">
<%-- 										<td style="text-align: center;">${sc.ass_no}</td> --%>
										<td style="text-align: center;">${sc.ass_title}</td>
										<td style="text-align: center;">${sessionScope.loginUser.mem_name}</td>
										<td style="text-align: center;">${sc.ass_date}</td>
										<td style="text-align: center;">${sc.ass_cate}</td>
<%-- 										<td style="text-align: center;">${sc.q_read_cnt}</td> --%>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${result eq 0 }">
								<tr>
									<td colspan="5" style="text-align: center;">글이 존재하지 않습니다</td>
								</tr>
							</c:if>
						</table>


						<!-- 페이지 -->
						
					 	<c:url var="stusub" value="stumypage.do">
                           <c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
                        </c:url>  
						
						<div class="text-center">
							<ul class="pagination">
								<c:if test="${currentPage <= 1 }">
									<li class='disabled'><a href="#">&laquo;</a></li>
								</c:if>
								<c:if test="${currentPage > 1 }">
									<c:url var="paging1" value="selectQnaBoardList.do">
                          				 <c:param name="page" value="${currentPage-1 }" />
                          				 <c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
                        			</c:url> 
									<li><a href="${paging1 }">&laquo;</a></li>
								</c:if>
								<c:forEach begin="${startPage}" end="${endPage}" step="1" varStatus="status">
									<c:if test="${status.index eq currentPage }">
										<li class="active"><a href='#'>${status.index}</a></li>
									</c:if>
									<c:if test="${status.index ne currentPage }">
									<c:url var="paging2" value="selectQnaBoardList.do">
                          				 <c:param name="page" value="${status.index}" />
                          				 <c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
                        			</c:url> 
										<li><a href='${paging2 }'>${status.index}</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${currentPage < maxPage }">
									<c:url var="paging3" value="selectQnaBoardList.do">
                          				 <c:param name="page" value="${currentPage+1 }" />
                          				 <c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
                        			</c:url> 
									<li><a
										href="${paging3 }">&raquo;</a></li>
								</c:if>
								<c:if test="${currentPage >= maxPage }">
									<li class='disabled'><a href="#">&raquo;</a></li>
								</c:if>
							</ul>
						</div>
						
							 
 				<form action="/finalp/selectQnaBoardList.do" method="get" style="display:inline-flex;margin-left: 470px;">
					<div align="right" style="width:200px;">
						<c:if test="${keyword ne ''}">
							 <c:url var="keyword1" value="selectQnaBoardList.do">
			                          	<c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
			               	</c:url> 
								<span>&nbsp;&nbsp;&nbsp;&nbsp;검색어 <b>"${keyword}"</b></span>
						</c:if>
					</div>
					<div align="right" style="width:200px;">
						<input class="form-control" type="search" id="keyword"
							placeholder="제목을 입력해 주세요" name="keyword">
					</div>
					<div style="    margin-left: 40px;    margin-top: 10px;">
						<button type="submit" class="btn btn-primary btn-sm">검색</button>
					</div>
				</form>  
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
