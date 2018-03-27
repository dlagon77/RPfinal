<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- 3_27 -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="/finalp/resources/css/jhanimate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="/finalp/resources/css/jhstyle.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<!--  -->

<script>
	$(function(){
		$("#findBtn").click(function(){
			$.ajax({
				url : "findPwd.do",
				type : "POST",
				data : {
					mem_id : $("#username").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
</script>
<title>비번찾기</title>
</head>

<body>
<%-- <c:import url="../header.jsp" /> --%>
<!-- 	<div>
		<div> -->
			
			<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">LEAP</span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Find Password</h2>
			</div>
			<label for="username">Email ID를 입력하세요</label>
			<br/>
			<input type="text" id="username" name="mem_id" required>
			<br/>
			
			<button type="button" id=findBtn >FIND p/w</button>
			
			<button type="button" onclick="history.go(-1);">Cancel</button>
		</div>
	</div>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
</script>
			<!-- <div>
				<p>
					<label>Email:</label>
					<input type="text" id="id" name="mem_id" required>
				</p>
				<p class="w3-center">
					<button type="button" id=findBtn >찾기</button>
					<button type="button" onclick="history.go(-1);" >취소</button>
				</p>
			</div> -->
		</div>
	</div>
</body>
</html>