<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필수정페이지</title>

<style>
.tableone{
font-size:  18px;
font-weight:  bold;
margin-right: 0px;
width:250px;
}
.tabletwo{
font-size:  18px;

}
.tablethr{
margin: 15px;
display:  inline-flex; 
width:500px
}
section{
padding:350px;
    padding-top: 0px;
    padding-bottom: 0px;
	
}
.tablecate{
display:inline-grid;
}
.tableimg{

}
.largeboxone{
width:600px; height:820px;border:1px solid #E2E2E2; background-color:#FFF;
box-shadow: 0 4px 5px 0 rgba(0,0,0,0.1), 0 1px 10px 0 rgba(0,0,0,0.12), 0 2px 4px -1px rgba(0,0,0,0.2);
}
.largeboxtwo{
margin-top:20px;
width:600px; height:350px;border:1px solid #E2E2E2; background-color:#FFF;
box-shadow: 0 4px 5px 0 rgba(0,0,0,0.1), 0 1px 10px 0 rgba(0,0,0,0.12), 0 2px 4px -1px rgba(0,0,0,0.2);
}
.largeboxfour{
margin-top:20px;
width:600px; height:400px;border:1px solid #E2E2E2; background-color:#FFF;
box-shadow: 0 4px 5px 0 rgba(0,0,0,0.1), 0 1px 10px 0 rgba(0,0,0,0.12), 0 2px 4px -1px rgba(0,0,0,0.2);
}
.input-block {
	color: red;
    vertical-align: middle;
    border-top: 0;
    border-left: 0;
    border-right: 0;
    border-bottom: 1px solid #9e9e9e;
    border-radius: 0;
    width: 100%;
    min-height: 45px;
    font-weight: 400;
    font-size: 16px;
}
input {
    
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    font: 400 13.3333px Arial;
}
</style>
 </head>
 <!-- === BEGIN BODY ===  -->
 <body style="background-color:#F5F4F4">
<!-- === BEGIN HEADER ===  -->
<c:import url="../header.jsp" />
<!-- === END HEADER ===  -->

<!-- === BEGIN STU_PROFILE ===  -->

 <section style="padding-top: 20px;">
  <div class="largeboxone" style="margin-top: 40px;">
	<div style="margin: 20px;">
	<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px;">기본 정보</div>
	<form>

		<div class="tablethr">
			<div class="tableone">이름(실명)</div>
			<div class="tabletwo">윤준우</div>
		</div>
		<div class="tablethr">
			<div class="tableone">아이디</div>
			<div class="tabletwo">emoticon@naver.com</div>
		</div>
		<div class="tablethr" style="height:200px;">
			<div class="tableone"style="padding-top: 80px;">사진</div>
			<div class="tableimg">
			<img src="https://educast.com/static/image/default_images/default-user-image.88caf4ad80f4.png"/>
			<div style="margin-left:36px;margin-top:10px;">
			사진변경
			</div>
			</div>
		</div>
		<div class="tablethr">
			<div class="tableone">관심 카테고리</div>
			<div class="tablecate">
	<label for="check1"><input type="checkbox" name="categories" id="check1" value="1"> CSS</label>
	<label for="check2"><input type="checkbox" name="categories" id="check2" value="2"> HTML</label>
	<label for="check3"><input type="checkbox" name="categories" id="check3" value="3"> JSP</label>
	<label for="check4"><input type="checkbox" name="categories" id="check4" value="4"> ORACLE</label>
	<label for="check5"><input type="checkbox" name="categories" id="check5" value="5"> FrameWork</label>
	<label for="check6"><input type="checkbox" name="categories" id="check6" value="6"> JAVA</label>
	<label for="check7"><input type="checkbox" name="categories" id="check7" value="7"> C++</label>
	<label for="check8"><input type="checkbox" name="categories" id="check8" value="8"> Spring</label>
			</div>
		</div>
		<div class="tablethr" style="margin-left: 450px;">
	<button type="submit">저장하기</button>
	</div>
  </form>
</div>
</div>
</section>

<!-- ==비밀번호 변경== -->
<section style="padding-top: 0px;">
<div class="largeboxtwo">
<div style="margin: 20px;">
	<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px;">비밀번호 변경</div>
</div>
<div class="tablethr" style="display:inline-block;">
	<div class="tableone" style="width:300px">
		<input type="password" name="oldpass" placeholder="현재 비밀번호입력" class="input-block">
	</div>
	<div class="tableone" style="width:300px">
		<input type="password" name="newpass1" placeholder="새 비밀번호입력" class="input-block">
	</div>
	<div class="tableone" style="width:300px">
		<input type="password" name="newpass2" placeholder="새 비밀번호 확인하기" class="input-block">
	</div>
	<div class="tablethr" style="margin-left: 450px;">
		<button type="submit">변경하기</button>
	</div>
</div>
</div>
</section>

<!-- ==탈퇴하기== -->
<section style="margin-bottom: 40px;padding-top: 0px;">
<div class="largeboxfour">
<div style="margin: 20px;">
	<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px; color: #f44336!important;">탈퇴하기</div>
	<p>탈퇴하실 경우 리프에서의 모든 수강 기록이 사라지게 되며,</p>
    <p>개인정보(이름, 이메일, 비밀번호, 생년월일 등)는 탈퇴 즉시 파기됩니다.</p>
    <p>단, 질문게시판이나 수강평과 같은 게시판형 기능에 남긴 게시글은 '탈퇴회원' 이름으로 변경됩니다.</p>
    <p>이를 원치 않으실 경우 반드시 해당 게시물을 삭제후 탈퇴 신청을 해주시기 바랍니다.</p>
</div>
	<div class="tablethr" style="margin-left: 450px;">
		<button type="submit">탈퇴하기</button>
	</div>

</div>
</section>

        <!-- 밑에 div 2개 지우지 말것. mypagemenu.js에서 닫는 용도-->
		</div>
	</div>
	<!-- 밑에 div 1개 지우지 말것. header.jsp 닫는 용도 -->
	</div>
</body>
</html>