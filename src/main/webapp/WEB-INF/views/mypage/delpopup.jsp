<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<script>
function nextWin(){
	location = 'logout.do'
}
swal({
	title: '정상적으로 회원탈퇴 되었습니다',
	html:'이용해 주셔서 감사합니다',
	timer: 2000,
	type: 'success'
/* 	self.location.replace('logout.do'); */
});
</script>
<body onLoad="setTimeout('nextWin()', 2050)">
</body>
</html>