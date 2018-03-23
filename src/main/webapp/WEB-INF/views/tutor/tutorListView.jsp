<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 - Real Programmer</title>
<style>
.applyButton{
	background-color: darkcyan;
	border-radius: 2px;
	color: white;
	padding: 13px 20px;
	white-space: nowrap;
	font-size: 1.4rem;
	font-weight: 500;
	letter-spacing: .007px;
	display: flex;
	-ms-flex-direction: row;
	-webkit-flex-direction: row;
	flex-direction: row;
	outline:none;
	border:none;
}
.className{
	display: block;
  max-height: 4.8rem;
  overflow: hidden;
  font-size: 1.8rem;
  font-weight: 400;
  line-height: 2.4rem;
}
</style>
</head>
<body style="background-color:hsla(0, 0%, 93.3%, .4)">
<c:import url="../header.jsp" />

<div class="container about" style="width:1284px;margin-top:100px">
			<span style="font-size:15px">검색결과 ${tCount}명</span>
			<hr>
			<ul class="nav navbar-nav navbar-right" style="font-size:15px">
				<li><a href="#about">수강생 순</a></li>
				<li><a href="#portfolio">등록 순</a></li>
			  </ul>
		</div>

		<div class="container about" style="width:1284px;font-size:14px">

			<section class="about" id="about" style="width:1284px;padding-bottom:30px;padding-top:0">

		
		
			<div class="row">
			<div class="col-md-12">
			
															
							
							
			<c:choose>
				<c:when test="${fn:length(tList) > 0}">
					<c:forEach items="${tList }" var="row">
					
						<c:if test="${row.mem_class != null}">
							
						
					
						<!-- 강사 템플릿 -->
						<c:if test="${loginUser.mem_no !=null }">
							<c:url var="tdetail" value="tutorHome.do">
								<c:param name="tutor_no" value="${row.mem_no }" />
								<c:param name="mem_no" value="${loginUser.mem_no }" />
							</c:url>
						</c:if>
						
						<c:if test="${loginUser.mem_no == null }">
							<c:url var="tdetail" value="loginpage.do">
								
							</c:url>
						</c:if>
						
						<a href="${tdetail }" style="text-decoration:none">
						<section id="description" style="padding-top:30px;display:flex">
						
						<div class="col-md-10" style="display:flex">
			
							<div class="avatar" style="width:246px">
								<div class="user_image" style="width: 136px;height: 136px;cursor: pointer;margin: 0 32px;border-radius: 50%;background-color: transparent;overflow: hidden;">
									<img height="136" width="136" src="/finalp/resources/img/profileupload/${row.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
								</div>
							</div>
							
							<div id="info">
								<h3 id="home-title" class="" style="padding-top: 10px;">
								 <span class="className">${row.mem_class}</span>
								</h3>
								<div id="metadata" class="">
								  <span id="subscribers" style="color:gray">수강생 ${row.apply_count }명	&nbsp;</span>
								  <span id="video-count" style="color:gray">동영상 ${row.lecture_count }개</span>
								</div>
								<span id="description" style="color:gray">${row.mem_content } </span>
							  </div>
						
						</div><!--col-md-10-->
						
						<div class="col-md-2">
							<div class="button" style="margin-top: 40px;left: 25%;">
								<button id="apply" class="applyButton">자세히 보기</button>
							</div>
						</div>
						
						
						

						
						
						</section>
						</a>
						<!-- 강사 템플릿 끝-->
						
								
						</c:if>	

					</c:forEach>
				</c:when>
				<c:otherwise>

						조회된 결과가 없습니다.

				</c:otherwise>
				</c:choose>
			
			
		
			

		</div>
	</div><!--row-->




	</section>
	
	



</div><!-- container about -->



</div><!-- container about -->
	
	
	<a href="#page-top" class="cd-top">Top</a>




</div>


</body>
</html>