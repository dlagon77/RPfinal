<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="/finalp/resources/js/j_main__script.js"></script>

<title>과제 풀기</title>
</head>
<body>
	<h1> JAVA COMPILER</h1>
	Enter Class Name : <input type="text" id="class" onblur="check()"> <br><br>
	<button onclick="compile()">COMPILE</button>
	<button onclick="run()">RUN</button>
	<button onclick="empty()">CLEAR</button>
	<br>
	<br>
	<textarea rows="25" cols="180" id="maincode" name="maincode"></textarea> <br><br>
	<textarea rows="25" cols="180" id="output" name="output"></textarea>
</body>
</html>