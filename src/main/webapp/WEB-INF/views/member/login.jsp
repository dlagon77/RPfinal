<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>login page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
.card-login {
	max-width: 25rem
}
</style>
</head>
<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">로그인 화면</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">아이디입력</label>
            <input class="form-control" id="exampleInputEmail1" type="email" name="mem_id" aria-describedby="emailHelp" placeholder="아이디입력" required>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">비밀번호입력</label>
            <input class="form-control" id="exampleInputPassword1" type="password"  name="mem_pwd" placeholder="비밀번호입력" required>
          </div>
          <!-- <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> 비밀번호 기억하기 </label>
            </div>
          </div> -->
          <a class="btn btn-primary btn-block" href="index.jsp">로그인</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="/semi/views/login/enrolll.html">회원가입하기</a>
          <a class="d-block small" href="/semi/views/login/findpwd.html">비밀번호 찾기</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>