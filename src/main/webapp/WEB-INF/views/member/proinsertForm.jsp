<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>강사 회원가입</title>

<script>
	
	//아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위해 변수설정
	var idCheck = 0;
	var pwdCheck = 0;
	function checkId() {
        var inputed = $('.emailId').val();
        $.ajax({
            data : {
                emailId : inputed
            },
            url : "checkId.do",
            success : function(data) {
                if(inputed=="" && data=='0') {
                    $(".btn btn-info").prop("disabled", true);
                    $(".btn btn-info").css("background-color", "#aaaaaa");
                    $("#checkaa").css("background-color", "#FFCECE");
                    idCheck = 0;
                } else if (data == '0') {
                    $("#checkaa").css("background-color", "#B0F6AC");
                    idCheck = 1;
                    if(idCheck==1 && pwdCheck == 1) {
                        $(".btn btn-info").prop("disabled", false);
                        $(".btn btn-info").css("background-color", "#4CAF50");
                        signupCheck();
                    } 
                } else if (data == '1') {
                    $(".btn btn-info").prop("disabled", true);
                    $(".btn btn-info").css("background-color", "#aaaaaa");
                    $("#checkaa").css("background-color", "#FFCECE");
                    idCheck = 0;
                } 
            }
        });
    }
	
	//재입력 비밀번호 체크하여 가입버튼 비활성화 또는 맞지않음을 알림.
    function checkPwd() {
        var inputed = $('.pass').val();
        var reinputed = $('#InputPassword2').val();
        if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
            $(".btn btn-info").prop("disabled", true);
            $(".btn btn-info").css("background-color", "#aaaaaa");
            $("#InputPassword2").css("background-color", "#FFCECE");
        }
        else if (inputed == reinputed) {
            $("#InputPassword2").css("background-color", "#B0F6AC");
            pwdCheck = 1;
            if(idCheck==1 && pwdCheck == 1) {
                $(".btn btn-info").prop("disabled", false);
                $(".btn btn-info").css("background-color", "#4CAF50");
                signupCheck();
            }
        } else if (inputed != reinputed) {
            pwdCheck = 0;
            $(".btn btn-info").prop("disabled", true);
            $(".btn btn-info").css("background-color", "#aaaaaa");
            $("#InputPassword2").css("background-color", "#FFCECE");
            
        }
    }
    //닉네임과 이메일 입력하지 않았을 경우 가입버튼 비활성화
    function signupCheck() {
        var inputMail = $("#inputMail").val();
        var email = $("#email").val();
        if(inputMail=="" || email=="") {
            $(".btn btn-info").prop("disabled", true);
            $(".btn btn-info").css("background-color", "#aaaaaa");
        } else {
        }
    }
    //캔슬버튼 눌렀을 눌렀을시 인풋박스 클리어
    $(".btn btn-danger").click(function(){
            $(".emailId").val(null);
            $(".pass").val('');
            $(".btn btn-info").prop("disabled", true);
            $(".btn btn-info").css("background-color", "#aaaaaa");
    });
</script>


<!-- 아마 필요없을껑 -->
<!-- <script type="text/javascript">
	$(document).ready(function(){
		  $('#checkbtn').on('click', function(){
	            $.ajax({
	                type: 'POST',
	                url: '/mate/checkSignup',
	                data: {
	                    "id" : $('#id').val()
	                },
	                success: function(data){
	                    if($.trim(data) == 0){
	                        $('#checkMsg').html('<p style="color:blue">사용가능</p>');
	                    }
	                    else{
	                        $('#checkMsg').html('<p style="color:red">사용불가능</p>');
	                    }
	                }
	            });    //end ajax    
	        });    //end on 
	});
</script> -->

<!-- Bootstrap -->
    <link href="/finalp/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="/finalp/resources/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="/finalp/resources/css/style.css" media="screen" title="no title" charset="utf-8">
	<style>
		nav.n1{
		float:left;
		left:180px;
		top:140px;
		width: 250px;
		height: 300px;
		border-radius:5px;
		border: 1px solid gray;
		text-align:center;
	}

	#output{
		width:200px;
		height: 220px;
	}

	.col-md-offset-3{
		margin-left: 5%;
	}
	
  </style>
</head>
<body>
 <article class="container">
        <div class="page-header">
          <h1>강사회원가입</h1>
		</div>
		
		<form action="proinsert.do" method="post" id="form1" enctype="multipart/form-data">
		
		<nav class="n1">
			<h4>프로필사진</h4>
			<img id="output"/>
			<input type="file" accept="image/*" id="fileUp" name="uploadFile" onchange="mem_refile(event)"/>
		<script>
  			var mem_refile = function(event) {
    			var output = document.getElementById('output');
    			output.src = URL.createObjectURL(event.target.files[0]);
  			};
		</script>
			
		</nav>
		
        <div class="col-md-6 col-md-offset-3">
		
		

            <div class="form-group">
              <label for="InputEmail">이메일ID</label>
              <input type="email" class="emailId" id="InputEmail" name="mem_id" placeholder="이메일 주소">
              <!-- div id="checkMsg"></div-->
            </div>
            
			<!-- div class="form-group">
    			<button type="submit" id="checkbtn" class="btn btn-default">중복확인</button>
			</div-->
			
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="pass" id="InputPassword1"  name="mem_pwd" placeholder="비밀번호">
            </div>
            <div class="form-group">
              <label for="InputPassword2">비밀번호 재확인</label>
              <input type="password" class="form-control" id="InputPassword2"  name="mem_pwd" placeholder="비밀번호 재확인">
              <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요!</p>
            </div>
				
			<div class="form-group">
			<label for="carrier">경력</label>
			<input type="text" class="form-control" id="username" name="mem_career" placeholder="1">
			<input type="text" class="form-control" id="username" name="mem_career" placeholder="2">
			<input type="text" class="form-control" id="username" name="mem_career" placeholder="3">
			<input type="text" class="form-control" id="username" name="mem_career" placeholder="4">
			</div>

            <div class="form-group">
              <label for="mem_name">이름</label>
              <input type="text" class="form-control" id="username" name="mem_name" placeholder="이름을 입력해 주세요">
            </div>
            
             <div class="form-group">
              <label for="mem_phone">핸드폰번호</label>
              <input type="text" class="form-control" id="username" name="mem_phone" placeholder="'-'를 넣어주세요">
            </div>

			<div class="form-group">
			<label for="mem_gen">성별</label>
				<div class="col-sm-12 text-center">
					<!-- <button class="btn btn-primary" type="submit">남자<i class="fa fa-check spaceLeft"></i></button>
					<button type="submit" class="btn btn-info">여자<i class="fa fa-check spaceLeft"></i></button> -->
					<input type="radio" name="mem_gen" value="M"> 남 
      				<input type="radio" name="mem_gen" value="F"> 여
				</div>
			</div>

            <div class="form-group">
            
              <!-- <label for="mem_birth">생년월일</label>
              <input type="text" id="mem_births" name="mem_birth" list="birthday">
              <div class="input-group">
              <datalist id="birthday"> -->
              <input type="hidden" name="mem_birth" value="03/01/2004">
               <!-- select name="mem_birth">
       <option value="2013">2013</option>
       <option value="2012">2012</option>
       <option value="2011">2011</option>
       <option value="2010">2010</option>
       <option value="2009">2009</option>
       <option value="2008">2008</option>
       <option value="2007">2007</option>
       <option value="2006">2006</option>
       <option value="2005">2005</option>
       <option value="2004">2004</option>
       <option value="2003">2003</option>
       <option value="2002">2002</option>
       <option value="2001">2001</option>
       <option value="2000">1999</option>
	   <option value="2000">1998</option>
	   <option value="2000">1997</option>
	   <option value="2000">1996</option>
	   <option value="2000">1995</option>
	   <option value="2000">1994</option>
	   <option value="2000">1993</option>
	   <option value="2000">1992</option>
	   <option value="2000">1991</option>
	   <option value="2000">1990</option>
	   <option value="2000">1989</option>
	   <option value="2000">1988</option>
	   <option value="2000">1987</option>
     </select>년&nbsp;
     <select name="birth2">
       <option value="1">1</option>
       <option value="2">2</option>
       <option value="3">3</option>
       <option value="4">4</option>
       <option value="5">5</option>
       <option value="6">6</option>
       <option value="7">7</option>
       <option value="8">8</option>
       <option value="9">9</option>
       <option value="10">10</option>
       <option value="11">11</option>
       <option value="12">12</option>
     </select>
     <select name="birth3">
       <option value="1">1</option>
       <option value="2">2</option>
       <option value="3">3</option>
       <option value="4">4</option>
       <option value="5">5</option>
       <option value="6">6</option>
       <option value="7">7</option>
       <option value="8">8</option>
       <option value="9">9</option>
       <option value="10">10</option>
       <option value="11">11</option>
       <option value="12">12</option>
       <option value="13">13</option>
       <option value="14">14</option>
       <option value="15">15</option>
       <option value="16">16</option>
       <option value="17">17</option>
       <option value="18">18</option>
       <option value="19">19</option>
       <option value="20">20</option>
       <option value="21">21</option>
       <option value="22">22</option>
       <option value="23">23</option>
       <option value="24">24</option>
       <option value="25">25</option>
       <option value="26">26</option>
       <option value="27">27</option>
       <option value="28">28</option>
       <option value="29">29</option>
       <option value="30">30</option>
       <option value="31">31</option>
     </select>일<br><br> -->
	</datalist>

				<!--select name="job" class="form-control" placeholder="생일   년(4자)   월">
				<input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요">
                <span class="input-group-btn">
                  <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
                </span-->
              </div>
            </div>
            <div class="form-group">
              <label for="username">전공분야</label>
              <input type="text" name="mem_inter" list="interestValues">
              <div class="input-group">
              <!--p-->
                <datalist id="interestValues">
                	<option value="CSS"/>CSS
                	<option value="HTML"/>HTML
					<option value="JSP" />JSP
					<option value="ORACLE" />ORACLE
					<option value="JAVA" />JAVA
					<option value="C++" />C++
					<option value="SPRING" />SPRING
				</datalist>	
				<!-- <input type="checkbox" id="checkbox1" name="mem_inter" checked="checked" />
				<label for="checkbox1">CSS</label>&nbsp;
				<input type="checkbox" id="checkbox2" name="mem_inter"/>
				<label for="checkbox2">HTML</label>
				<input type="checkbox" id="checkbox2" name="mem_inter"/>
				<label for="checkbox2">JSP</label>
				<input type="checkbox" id="checkbox2" name="mem_inter" />
				<label for="checkbox2">ORACLE</label>
				<input type="checkbox" id="checkbox2" name="mem_inter"/>
				<label for="checkbox2">Frame Work</label>
				<input type="checkbox" id="checkbox2" name="mem_inter"/>
				<label for="checkbox2">JAVA</label>
				<input type="checkbox" id="checkbox2" name="mem_inter"/>
				<label for="checkbox2">C++</label>
				<input type="checkbox" id="checkbox2" name="mem_inter"/>
				<label for="checkbox2">Spring</label> -->
			  <!--  /p-->
				
				
              </div>
            </div>
           
           <div class="form-group">
              <label for="mem_class">홈페이지제목</label>
              <input type="text" class="form-control" id="memclass" name="mem_class" placeholder="이름을 입력해 주세요">
            </div>
            
            <div class="form-group">
              <label for="mem_content">홈페이지설명</label>
              <input type="text" class="form-control" id="memcontent" name="mem_content" placeholder="이름을 입력해 주세요">
            </div>
            
            <!-- <div class="form-group text-center">
              <button type="submit" class="btn btn-info">강사회원가입<i class="fa fa-check spaceLeft"></i></button>
              button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button
			  <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div> -->
    
        </div>
	   </form>
	   <div class="form-group text-center">
              <button type="submit" class="btn btn-info" form="form1">강사회원가입<i class="fa fa-check spaceLeft"></i></button>
              <!--button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button-->
			  <button class="btn btn-danger" type="submit" form="form1">가입취소<i class="fa fa-times spaceLeft"></i></button>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/finalp/resources/js/jbootstrap.min.js"></script>
    
</body>
</html>