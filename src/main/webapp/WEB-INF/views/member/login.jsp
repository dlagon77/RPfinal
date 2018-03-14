<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>login page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<style>
.card-login {
	max-width: 25rem
}
</style>
</head>
<div class="modal show" id="crudExceptions" role="dialog" style="top: 40px; left: 50px;">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-body"> 

				<body class="bg-dark">
					<div class="container" style="margin-top: 60px;">
						<div class="card card-login mx-auto mt-5">
							<div class="card-header">로그인</div>
							<div class="card-body">
								<form action="login.do" method="post">
									<div class="form-group">
										<label for="exampleInputEmail1">아이디입력</label> <input
											class="form-control" id="exampleInputEmail1" type="email"
											name="mem_id" aria-describedby="emailHelp"
											placeholder="아이디입력" required>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">비밀번호입력</label> <input
											class="form-control" id="exampleInputPassword1"
											type="password" name="mem_pwd" placeholder="비밀번호입력" required>
									</div>
									<!-- <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> 비밀번호 기억하기 </label>
            </div>
         </div> -->
									<input type="submit" class="btn btn-primary btn-block">로그인
								</form>
								<div class="text-center">
									<a class="d-block small mt-3" href="/semi/views/login/enrolll.html">회원가입하기</a> 
										<a class="d-block small" href="/semi/views/login/findpwd.html">비밀번호찾기</a>
								</div>
							</div>
						</div>
					</div>
			</div>

			<div class="modal-footer">
				<button type="button" onClick="$('#crudExceptions').removeClass('modal show').addClass('modal close')" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>

			</body>
</html>