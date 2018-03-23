<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생-구독중인강사</title>
<link rel="stylesheet" type="text/css" href="/finalp/resources/mypage/hover1.css">
<style>
.btn{
cursor:pointer;
}
.cuadro_intro_hover .caption-textt {
    z-index: 10;
    color: #fff;
    position: absolute;
    height: 300px;
    text-align: center;
    width: 100%;
}
</style>
</head>
<!-- === BEGIN BODY ===  -->
<body>
<!-- === BEGIN HEADER ===  -->
<c:import url="../header.jsp" />
<!-- === END HEADER ===  -->
<c:import url="mpsidemenu.jsp" />
<!-- === BEGIN STU_SUBSCRIBE ===  -->		
<script>
	$('#stumypage').addClass('list-group-item');
	$('#stusubsc').addClass('list-group-item active');
	$('#stuquestion').addClass('list-group-item');
	$('#stusubmit').addClass('list-group-item');
	$('#stuanalist').addClass('list-group-item');
	$('#stuchangeTu').addClass('list-group-item');
	$('#stuupdate').addClass('list-group-item');
	$('#stumessage').addClass('list-group-item');
	$('#stumyboard').addClass('list-group-item');
</script>

		<div class="panel panel-default" style="margin-top: 0px;margin-left: 20px; display: inline-block;">
			<div class="panel-body" style="display:  inline-flex;">
				<div class="list-group" style="background-color:#A9A9F5;">
					<h3>구독중인 강사님</h3>
				</div>
			</div>
			 <!-- style="display:  inline-flex;" -->
			<c:set var="i" value="0" /> 
			<c:set var="j" value="3" />
				<c:forEach items="${mysubsc }" var="row">
					<c:if test="${row.app_y eq 'Y' }">
						<c:if test="${i%j == 0}">
							<div class="panel-body" style="display:  inline-flex;">
						</c:if>
					
											<div class="bluck" style="width: 200px; margin-right: 30px;">
											<div class="cuadro_intro_hover " style="background-color: #cccccc;">
												<p style="text-align: center;">
													<img src="/finalp/resources/img/profileupload/${row.mem_refile }" class="img-responsive" alt="">
												</p>
											<div class="caption">
												<div class="blur"></div>
												<div class="caption-textt">
													<h3	class="img-h3" style="border-top: 2px solid white; border-bottom: 2px solid white; padding: 10px;">${row.mem_name }</h3>
													<p> 
													- ${row.mem_name } 강사님 -
														</p>
															<c:if test="${loginUser.mem_no ne null }">
																<c:url var="tdetail" value="tutorHome.do">
																	<c:param name="tutor_no" value="${row.mem_no }" />
																	<c:param name="mem_no" value="${loginUser.mem_no }" />
																</c:url>
															</c:if>
													<a class=" btn btn-default" href="${tdetail }" >
													<span class="glyphicon glyphicon-plus" style="color:black;">
															방송국가기</span></a>
												</div>
											</div>
											<!--END DIV class caption -->
											</div>
										<!-- END DIV class cuadro_intro_hover -->
										</div>
						<c:if test="${i%j== j-1}">
							</div>
						</c:if>
					<c:set var="i" value="${i+1 }" />
				</c:if>
			</c:forEach>
			
			
			<!-- END DIV Class bluck -->
		
			<%-- 	<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise> --%>
<%-- 			</c:choose> --%>
<%-- 	<c:forEach var="i" begin="1" end="4" step="1">			 --%>

	

		
		<!--===== END DIV class panel-body ===== -->
				</div>
		        <!-- 밑에 div 2개 지우지 말것. mypagemenu.js에서 닫는 용도-->
		</div>
	</div>
	<!-- 밑에 div 1개 지우지 말것. header.jsp 닫는 용도 -->
	</div>
</body>
</html>