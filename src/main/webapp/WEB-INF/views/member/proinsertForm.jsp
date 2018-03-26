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
	/* var idCheck = 0;
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
    } */
    
    var pwdCheck = 0;
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
	
	.emailId{
   display: block;
   width: 100%;
   height: 34px;
   padding: 6px 12px;
   font-size: 14px;
   line-height: 1.42857143;
   background-color: #fff;
   background-image: none;
   border:1px solid #ccc;
   border-radius:4px;
   box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
   transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;

}
	.pass{
   display: block;
   width: 100%;
   height: 34px;
   padding: 6px 12px;
   font-size: 14px;
   line-height: 1.42857143;
   background-color: #fff;
   background-image: none;
   border:1px solid #ccc;
   border-radius:4px;
   box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
   transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;

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
		
		
			<script type="text/javascript">
			  
			
			function checkId(){
			  		var id = $('#id').val();
			  			$.ajax({
			  				type:'POST',
			  				url:'checkId.do',
			  				data:{
			  					mem_id:$('#imadd').val()
			  				},
			  				success:function(data){
			  					if($.trim(data)==0){
			  						$('#checkMsg').html('<p style="color:blue">사용가능</p>');
			  					}
			  					else{
			  						$('#checkMsg').html('<p style="color:red">사용불가능</p>');
			  					}
			  				},
			  				error:function(){
			  					alert("에러입니당");
			  				}
			  				
			  			});  //end ajax
			  		}
			  	
			  </script>
			  
            <div class="form-group">
              <label for="InputEmail">이메일ID</label>
              <input type="email" id="imadd" required class="emailId" maxlength="50" name="mem_id" placeholder="이메일 주소">
              
              <div id="checkMsg"></div>
              
              <button id="checkbtn" class="btn btn-default" onclick="checkId()">중복확인</button>
			 	
			  
			  	
            </div>
            
			<!-- div class="form-group">
    			<button type="submit" id="checkbtn" class="btn btn-default">중복확인</button>
			</div-->
			
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" required class="pass" id="InputPassword1" maxlength="14" oninput="checkPwd()" name="mem_pwd" placeholder="비밀번호">
            </div>
            
            <div class="form-group">
              <label for="InputPassword2">비밀번호 재확인</label>
              <input type="password" class="form-control" id="InputPassword2"  oninput="checkPwd()" placeholder="비밀번호 재확인">
              <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요!</p>
            </div>
				
			<div class="form-group">
			<label for="carrier">경력</label>
			<input type="text" class="form-control" id="username" name="mem_career" placeholder="1">
			<input type="text" class="form-control" id="username" name="mem_career" placeholder="2">
			<input type="text" class="form-control" id="username" name="mem_career" placeholder="3">
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
					
					<input type="radio" name="mem_gen" value="M"> 남 
      				<input type="radio" name="mem_gen" value="F"> 여
				</div>
			</div>

            <div class="form-group">
            
              
				<div class="form-group">
					<label for="inputBirth">생일</label>
					<div class="form-group">
						<input type="date" class="form-control" id="birth" name="mem_birth"
							placeholder="생일 입력" required>
					</div>
				</div>
	
				
              </div>
            	
            	<input type="hidden" name="mem_cate" value="T">
            
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
				
				
				
              </div>
            </div>
           
            <div class="form-group">
              <label for="mem_content">강사 유튜브 채널 ID</label>
              <input type="text" class="form-control" id="memcontent" name="mem_channel_id" placeholder="유튜브채널ID입력">
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
    
      
	   </form>
	   <div class="form-group text-center">
              <button type="submit" class="btn btn-info" form="form1">강사회원가입<i class="fa fa-check spaceLeft"></i></button>
              <!--button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button-->
			  <button class="btn btn-danger" type="submit" form="form1" onclick='$("#_joinsung").css("display", "none")'>가입취소<i class="fa fa-times spaceLeft"></i></button>
        </div>
      </article>

   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <script src="/finalp/resources/js/jbootstrap.min.js"></script>
    
</body>
</html>