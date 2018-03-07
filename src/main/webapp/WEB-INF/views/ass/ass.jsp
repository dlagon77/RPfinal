<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="/finalp/resources/js/j_main__script.js"></script>
<style>
/* 	.java{
		display:inline-block;
		border:1px solid black;
	} */
	.question{
		overflow:auto;
		height:505px;
		width:480px;
		border:1px solid black;
	}
	.answer{
		overflow:auto;
		height:250px;
		width:480px;
		border:1px solid black;
	}
</style>
<title>과제 풀기</title>
</head>
<body style="line-height: 1.0 !important;">
<%-- <c:import url="../header.jsp" /> --%>
<div class="ass_wrapper" align="center">
	<div class="java" style="flaot:left;display:inline-block;border:1px solid black">
			<br>
		<h1> JAVA QUESTION</h1>
		<h3>배열기초문제1</h3>
		<br>
		<div class="question" style="overflow:auto;"></div>
		<div class="question"></div>
		<br><br>
		<div class="answer"></div>
	</div>
	<div class="java" style="flaot:left;display:inline-block;border:1px solid black">
		<h1> JAVA COMPILER</h1>
		Enter Class Name : <input type="text" id="class" onblur="check()"> <br><br>
		<button onclick="compile()">COMPILE</button>
		<button onclick="run()">RUN</button>
		<button onclick="empty()">CLEAR</button>
		<br>
		<br>

		<textarea rows="32" cols="65" id="maincode" name="maincode" style="overflow:auto;"></textarea> <br><br><br>
		<textarea rows="16" cols="65" id="output" name="output" style="overflow:auto;"></textarea>
	</div>
</div>
</body>
</html>.