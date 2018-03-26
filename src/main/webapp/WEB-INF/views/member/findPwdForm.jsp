<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#findBtn").click(function(){
			$.ajax({
				url : "findPwd.do",
				type : "POST",
				data : {
					mem_id : $("#id").val()
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
	<div>
		<div>
			<div>
				<h3>비밀번호 찾기</h3>
			</div>
			<div>
				<p>
					<label>Email:</label>
					<input type="text" id="id" name="mem_id" required>
				</p>
				<p class="w3-center">
					<button type="button" id=findBtn >찾기</button>
					<button type="button" onclick="history.go(-1);" >취소</button>
				</p>
			</div>
		</div>
	</div>
</body>
</html>