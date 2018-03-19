<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#lec-container{
		width: 800px;
		padding-top: 30px;
		margin-left: auto;
		margin-right: auto;
		display: inline-block;
		vertical-align: top;
		align: center;
		margin-left: 25%;
		
	}
	
	
	#videoList{
		width: 500px;
		height: 850px;
		display: inline-block;
		margin-top: 30px;
		margin-left: 50px;
		overflow: auto;
		position: fixed;
	}
	
</style>
 <script type="text/javascript" src="/finalp/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<c:import url="../header.jsp" />
	<div id="lec-container">
		<iframe width="800" height="450" src="https://www.youtube.com/embed/${videoId}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
	
	
		<div class="desc">
			<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${ videoTitle }</h3>
			<h5 style="padding-left:10px;color:gray!important;">조회수 ${ Lecture.lec_readcount }</h5>
			<h5 style="padding-left:10px;color:gray!important;">${ videoTime }</h5>
			<hr>
		</div>
		
		
	</div>
	
	<!-- <div id="videoList">
		<ul id="videoListView" style="list-style:none;"></ul>
	</div> -->
	
</body>
</html>