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

		<div class="panel panel-default" style="margin-top: 0px;margin-left: 20px;">
			<div class="panel-body" style="display:  inline-flex;">
				<div class="list-group" style="background-color:#A9A9F5;">
					<h3>구독중인 강사님</h3>
				</div>
			</div>
			<div class="panel-body" style="display:  inline-flex;">
			
            <c:choose>
				<c:when test="${fn:length(mysubsc) > 0}">
					<c:forEach items="${mysubsc }" var="row">
						<tr>
<%-- 							<td>${row.mem_no }</td> --%>
<%-- 							<td>${row.app_student_no }</td> --%>
<%-- 							<td>${row.mem_name }</td> --%>
<%-- 							<td>${row.mem_orfile }</td> --%>
						</tr>
					
				
				<div class="bluck" style="width: 200px; margin-right: 30px;">
					<div class="cuadro_intro_hover " style="background-color: #cccccc;">
						<p style="text-align: center;">
							<img src="/finalp/resources/img/profileupload/${row.mem_orfile }" class="img-responsive" alt="">
						</p>
					<div class="caption">
						<div class="blur"></div>
						<div class="caption-text">
							<h3	class="img-h3" style="border-top: 2px solid white; border-bottom: 2px solid white; padding: 10px;">${row.mem_name }</h3>
							<p> 
							- ${row.mem_name } 강사님 -
								</p>
							<a class=" btn btn-default" href="tutorHome.do" ><span class="glyphicon glyphicon-plus" style="color:black;">
									방송국가기</span></a>
						</div>
					</div>
					<!--END DIV class caption -->
				</div>
				<!-- END DIV class cuadro_intro_hover -->
			</div>
			<!-- END DIV Class bluck -->
			</c:forEach>
			</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
<%-- 	<c:forEach var="i" begin="1" end="4" step="1">			 --%>

<%-- 	</c:forEach> --%>

		</div>
		
		<!--===== END DIV class panel-body ===== -->
				</div>
		        <!-- 밑에 div 2개 지우지 말것. mypagemenu.js에서 닫는 용도-->
		</div>
	</div>
	<!-- 밑에 div 1개 지우지 말것. header.jsp 닫는 용도 -->
	</div>
</body>
</html>