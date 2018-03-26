<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필수정페이지</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
.tableone{
text-align: -webkit-center;
font-size:  18px;
font-weight:  bold;
margin-right: 0px;
width:250px;
display:  -webkit-inline-box;
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
padding:200px;
    padding-top: 0px;
    padding-bottom: 0px;
	
}
.tablecate{
display:inline-grid;
}
.tableimg{

}
.largeboxone{
width:700px; height:620px;border:1px solid #E2E2E2; background-color:#FFF;
box-shadow: 0 4px 5px 0 rgba(0,0,0,0.1), 0 1px 10px 0 rgba(0,0,0,0.12), 0 2px 4px -1px rgba(0,0,0,0.2);
}
.largeboxtwo{
margin-top:20px;
width:700px; height:350px;border:1px solid #E2E2E2; background-color:#FFF;
box-shadow: 0 4px 5px 0 rgba(0,0,0,0.1), 0 1px 10px 0 rgba(0,0,0,0.12), 0 2px 4px -1px rgba(0,0,0,0.2);
}
.largeboxfour{
margin-top:20px;
width:700px; height:300px;border:1px solid #E2E2E2; background-color:#FFF;
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
#userimg{
 width:130px;
 height:130px; 
 border-radius: 50%;
 margin-top: 20px;
 margin-left: -20px;
}
</style>
 </head>
 <!-- === BEGIN BODY ===  -->
 <body style="background-color:#F5F4F4">
<!-- === BEGIN HEADER ===  -->
<c:import url="../header.jsp" />
<!-- === END HEADER ===  -->
<!-- === BEGIN DIV CONTAINER ABOUT ===  -->
<div class="container about" style="display:flex;width:1284px;">
<!-- === BEGIN STU_PROFILE ===  -->
 <section style="padding-top: 20px;">
  <div class="largeboxone" style="margin-top: 40px;">
	<div style="margin: 20px;">
	<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px;">기본 정보
	<c:if test="${Member.mem_cate eq 'S'}">
		(학생회원)
	</c:if>
	<c:if test="${Member.mem_cate eq 'T'}">
		(강사회원)
	</c:if>
	</div>	
		<div class="tablethr">
			<div class="tableone">이름(실명)</div>
			<div class="tabletwo">${Member.mem_name }</div>
		</div>
		<div class="tablethr">
			<div class="tableone">생년월일</div>
			<div class="tabletwo">${Member.mem_birth }</div>
		</div>
		<div class="tablethr">
			<div class="tableone">성별</div>
			<div class="tabletwo">${Member.mem_gen }</div>
		</div>
		<div class="tablethr">
			<div class="tableone">아이디</div>
			<div class="tabletwo">${Member.mem_id }</div>
		</div>
		<div class="tablethr" style="height:200px;">
			<div class="tableone"style="padding-top: 80px;">사진</div>
			<div class="tableimg">
			<div>
			<c:if test="${Member.mem_refile eq null || Member.mem_refile eq ''}">
			<img src="/finalp/resources/img/profileupload/default-user.png"/>
			</c:if>
			<c:if test="${Member.mem_refile ne null && Member.mem_refile ne ''}">
 				<img src="/finalp/resources/img/profileupload/${Member.mem_refile }" id="userimg" >
<%--  				<img src="/finalp/target/m2e-wtp/web-resources/uploadFiles/${Member.mem_refile }" id="userimg" > --%>
			</c:if>
			</div>
				<div style="margin-left:10px;margin-top:10px;">
					<form id="file-form" method="post" enctype="multipart/form-data" action="">
						<div class="filebox bs3-primary preview-image">
							<label for="input_file" class="btn btn-green">업로드</label>
							<input class="btn btn-green" type="button" id="userimginit" onclick ="initImg();" value = "기본이미지">
							<input type="file" id="input_file" name="userimgfile" style="display:none;" class="upload-hidden">
							<br><br>
						</div>
					</form>
				</div>
			</div>
		</div>
	
		<div class="tablethr">
			<div class="tableone">전공분야</div>
			<div class="tabletwo" style="display:  inline-flex;">
			<div class="tablefive">
              <input type="text" name="mem_inter" id="mem_inter" list="interestValues" placeholder="전공 선택해주세요" value="${Member.mem_inter }">
	              <div class="input-group">
	                <datalist id="interestValues">
	                	<option value="CSS"/>
	                	<option value="HTML"/>
						<option value="JSP" />
						<option value="ORACLE" />
						<option value="JAVA" />
						<option value="C++" />
						<option value="SPRING" />
					</datalist>	
	              </div>
			</div>
 			<div class="tablefive">
				<input type="button" onclick="checkinter();" value = "전공변경" style="margin-left: 10px;">
			</div> 
           </div>
		</div>
</div>
</div>
</section>
</div>
<!-- === END DIV CONTAINER ABOUT ===  -->
<!-- ==============================강사회원 로그인시 경력사항 변경======================================================= -->

<c:if test="${Member.mem_cate eq 'T'}">
<!-- === BEGIN CONTAINER ABOUT ===  -->
<div class="container about" style="display:flex;width:1284px;">
<section style="margin-bottom: 40px;padding-top: 0px;">
<div class="largeboxfour">
	<div style="margin: 20px;">	
		<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px; color: #f44336!important;">강사경력사항</div>
		<p>강사 경력을 입력해주세요<br>한줄에 한개의 경력을 넣어주세요</p>
		<div class="career-group" style="    display:  inline-grid; width:500px;">
<!-- 			<label for="carrier">경력</label> -->
<style>
.careerform{
    margin-bottom:  20px;
}
</style>


		 	<c:set var="strr" value="${fn:split(Member.mem_career,',') }" />
			 	<c:forEach var="x" items="${strr}" varStatus="g">
					<c:if test="${g.count==1 }">
						<c:set var="car1" value="${x}"/>
					</c:if>
					<c:if test="${g.count==2 }">
						<c:set var="car2" value="${x}"/>
					</c:if>
					<c:if test="${g.count==3 }">
						<c:set var="car3" value="${x}"/>
					</c:if>
			 	</c:forEach>
			<input type="text" class="careerform" id="username1" name="mem_career1" placeholder="1" value="${car1}">
			<input type="text" class="careerform" id="username2" name="mem_career2" placeholder="2" value="${car2}">
			<input type="text" class="careerform" id="username3" name="mem_career3" placeholder="3" value="${car3}">
			</div>
	</div>
	
		<div class="tablethr" style="margin-left: 450px;">
			<input type="button" id="careerchangebtn" onclick ="changecareer();" value = "경력변경하기">
		</div>
</div>
</section>
</div>
<!-- === END DIV CONTAINER ABOUT ===  -->		
		
</c:if>

<script>
/* 경력사항 변경 */
function changecareer(){
	 var username1=document.getElementById("username1").value;
	 var username2=document.getElementById("username2").value;
	 var username3=document.getElementById("username3").value;
		$.ajax({
 	  			url:"changecareer.do",
 	  			data: { username1 : username1, username2 : username2, username3:username3 },
 	  			type: "post",
 	  			success:function(result){
					if(result == "ok")
						alert("변경 성공!");
					else
						alert("변경 실패!");
				},
				error: function(request, status, errorData){
					alert("error code : " + request.status + "\n"
						+ "message : " + request.responseText + "\n"
						+ "error : " + errorData);
				}
 	  			});
}
/* 관심분야 변경 */
function checkinter(){
	 var meminter=document.getElementById("mem_inter").value;
		$.ajax({
  	  			url:"changeMemInter.do",
  	  			data: { meminter : meminter },
  	  			type: "post",
  	  			success:function(result){
					if(result == "ok")
						alert("변경 성공!");
					else
						alert("변경 실패!");
				},
				error: function(request, status, errorData){
					alert("error code : " + request.status + "\n"
						+ "message : " + request.responseText + "\n"
						+ "error : " + errorData);
				}
  	  			});
}
</script>

<!-- ==비밀번호 변경== -->
<!-- === BEGIN CONTAINER ABOUT ===  -->
<div class="container about" style="display:flex;width:1284px;">
<section style="padding-top: 0px;">
<div class="largeboxtwo">
<div style="margin: 20px;">
	<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px;">비밀번호 변경</div>
</div>
<div class="tablethr" style="display:inline-block;">


<div>
 	<div class="tableone" style="width:300px">
		<input type="password" id="oldpass"name="oldpass" placeholder="현재 비밀번호입력" class="input-block">
		<p id="pid1"></p>
	</div>
	<div class="tableone" style="width:300px">
		<input type="password" name="newpass1" id="pwd" placeholder="새 비밀번호입력" maxlength=15 class="input-block" oninput="pwdCheck();">
		<p id="pid2"></p>
	</div>
	<div class="tableone" style="width:300px">
		<input type="password" name="newpass2" id="repwd" placeholder="새 비밀번호 확인하기" maxlength=15 class="input-block" oninput="repwdCheck();">
		<p id="pid3"></p>
	</div>
</div>	
<div>
	<div class="tablethr" style="margin-left: 450px;">
		<input type="button" id="pwdchangebtn" onclick ="changepwd();" value = "변경하기">
<!-- 		<button type="submit">변경하기</button> -->
	</div>
	</div>
 
</div>
</div>
</section>
</div>
<!-- === END DIV CONTAINER ABOUT ===  -->

<script>
/* 마이페이지 - 프로필 비밀번호 변경 */
function changepwd(){
	 var oldpass=document.getElementById("oldpass").value;
	 var newpass1=document.getElementById("pwd").value;
	 var newpass2=document.getElementById("repwd").value;
		$.ajax({
 	  			url:"changepwd.do",
 	  			data: { oldpass : oldpass, newpass1 : newpass1, newpass2 :newpass2 },
 	  			type: "post",
 	  			success:function(result){
 	  				console.log(result);
					if(result == "ok")
						alert("변경 성공!");
					else if(result =="serverfail"){
						alert("변경 오류!");
					}else if(result =="fail1"){
						alert("현재 비밀번호 다시 확인하세요!");
					}else if(result =="fail2"){
						alert("바꿀 비밀번호 다시 확인하세요!");
					}
// 						alert("현재비밀번호 확인!");
				},
				error: function(request, status, errorData){
					alert("error code : " + request.status + "\n"
						+ "message : " + request.responseText + "\n"
						+ "error : " + errorData);
				}
 	  			});
}
</script>

<!-- ==탈퇴하기== -->
<!-- === BEGIN CONTAINER ABOUT ===  -->
<div class="container about" style="display:flex;width:1284px;">
<section style="margin-bottom: 40px;padding-top: 0px;">
<div class="largeboxfour">
	<div style="margin: 20px;">
		<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px; color: #f44336!important;">탈퇴하기</div>
		<p>탈퇴하실 경우 리프에서의 모든 수강 기록이 사라지게 되며,</p>
	    <p>개인정보(이름, 이메일, 비밀번호, 생년월일 등)는 탈퇴 즉시 파기됩니다.</p>
	    <p>질문게시판, 수강평 같은 게시판형 기능에 남긴 게시글도 탈퇴 즉시 파기됩니다.</p>
	</div>
		<div class="tablethr" style="margin-left: 450px;">
					<ul>
					<li style="margin-top:3%; margin-left:40%">
					<a data-toggle="modal" data-target="#deleteMember-modal">
					<input name="checkButton" type="submit" value="탈퇴하기" class="btn0">
					</a>
					</li></ul>
<!-- 			<a href="mypageWithdraw.do">탈퇴하기</a> -->
<!-- 			<button type="submit">탈퇴하기</button> -->
		</div>
</div>
</section>
</div>
<!-- === END DIV CONTAINER ABOUT ===  -->

		<div class="modal fade" id="deleteMember-modal">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="container-login100">
					<div class="wrap-delete1000">
					<h3>정말 탈퇴하시나요?</h3><br>
					<h5>Leap 에서는 개인정보 보호 차원으로<br><br> 비밀번호를 한번 더 입력받고 있습니다.</h5><br>
				 	<form action="mDelete.do" method="post" id="deleteMember">
						<input type="password" id="mem_pwdd" name="mem_pwd" placeholder="비밀번호를 입력해주세요." oninput="checkdelpwd()">
						<input type="submit" name="mdelete" id="mdeleteid" value="탈퇴하기" disabled>
				  	</form>
						<div class="modal-footerr">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		

		<script>
		
		function checkdelpwd(){
				 var mempass=document.getElementById("mem_pwdd").value;
					$.ajax({
			 	  			url:"checkdelpwd.do",
			 	  			data: { mempass : mempass },
			 	  			type: "post",
			 	  			success:function(result){
			 	  				console.log(result);
								if(result == "ok"){
									 $("#mdeleteid").prop("disabled", false);
								}else{
									$("#mdeleteid").prop("disabled", true);
								}
							},
							error: function(request, status, errorData){
								alert("error code : " + request.status + "\n"
									+ "message : " + request.responseText + "\n"
									+ "error : " + errorData);
							}
			 	  			});
			}
		
		
		</script>




        <!-- 밑에 div 2개 지우지 말것. mypagemenu.js에서 닫는 용도-->
		</div>
	</div>
	

	
	<!-- 밑에 div 1개 지우지 말것. header.jsp 닫는 용도 -->
	</div>
	
 <script>
 function currentpwd(){
	var oldpass = $("#oldpass").val();
	var newpass1 = $("#newpass1").val();
 	$.ajax({
 		url:'/finalp/ajax/modifypwd.do',
 		data:{oldp:oldpass,newp1:newpass1},
 		type:'post',
 		success:function(data){
 				console.log(data);
 			if(data > 0){
 				console.log("성공~!");
 			}else{
 				console.log("internal server error");
 			}		
 		},
 		error:function(error){
 			console.log(error);
 		}
 	});
 } 
		/*================ 바꿀 비밀번호   ===================*/
		function repwdCheck(){
			var pwd = $("#pwd").val();
			var repwd = $("#repwd").val();
			if(pwd.length>3 && pwd==repwd){
				$("#pid3").html("사용가능").css("color","#2C784B");
				$("#pwdchangebtn").prop("disabled", false);
			}else if(repwd.length==0){
				$("#pid3").html("사용불가능").css("color","#BA1589");
				$("#pwdchangebtn").prop("disabled", true);
			}else{
				$("#pid3").html("사용불가능").css("color","#BA1589");
				$("#pwdchangebtn").prop("disabled", true);
			}
		}
		/*================ 바꿀 비밀번호  ===================*/

		/*================ 기본 이미지로 변경 ===================*/
		function initImg(){
			 	$.ajax({
			 		url:'/finalp/ajax/initimg.do',
			 		type:'get',
			 		success:function(data){
			 			if(data>0){
			 				$("#userimg").attr("src","/finalp/resources/img/profileupload/default-user.png");
			 			}else{
			 				console.log("internal server error");
			 			}		
			 		},
			 		error:function(error){
			 			console.log(error);
			 		}
			 	});
		}
		/*================ 기본 이미지로 변경 ===================*/
		
		/*================ 업로드 이미지로 변경 ===================*/
		 $(document).ready(function(){
			    var fileTarget = $('.filebox .upload-hidden');
			     fileTarget.on('change', function(){
			         if(window.FileReader){
			             // 파일명 추출
			             var filename = $(this)[0].files[0].name;
			         }else {
			             // Old IE 파일명 추출
			             var filename = $(this).val().split('/').pop().split('\\').pop();
			         };
			     });
			     //preview image 
			     var imgTarget = $('.preview-image .upload-hidden');
			     imgTarget.on('change', function(){
			         var parent = $(this).parent();
			         parent.children('.upload-display').remove();
			         if(window.FileReader){
			             //image 파일만
			             if (!$(this)[0].files[0].type.match(/image\//)) return;
			             var reader = new FileReader();
			             reader.onload = function(e){
			                 var src = e.target.result;
			                 $("#userimg").attr("src",src);
			             }
			             reader.readAsDataURL($(this)[0].files[0]);
			             
			             var form = $('#file-form')[0];
			             var formData = new FormData(form);
			             formData.append("fileObj", $("#input_file")[0].files[0]);
			 
			             $.ajax({
			        			url: '/finalp/ajax/userimgupload.do',
			                 processData: false,
			                 contentType: false,
			                 data: formData,
			                 type: 'POST',
			                 success: function(result){
			                 	swal({
			     					title: '이미지 업로드 성공',
			     					timer: 1500,
			     					type: 'success'
			     				});
			                 },
			                 error:function(error){
			         			console.log(error);
			         		}
			                 });
			         }
			     });
			 });
		 /*================ 업로드 이미지로 변경 ===================*/
		</script>	
		
<!-- ==========================제거 예정 스크립트================================== -->
	<script>
	/* 		function checkcurPwd() {
	var oldpass = $('#oldpass').val();
// 	var regexp = /^[a-z0-9]{5,13}$/; // 영어소문자 숫자로만 5-13자
	$.ajax({
		type : "post",
		data : {
			oldpass : oldpass
		},
		url : "/finalp/ajax/oldpasscheck.do",
		success : function(data) {
			if (oldpass == "" && data == 0) {
				$("#oldpass").css("background-color", "white");
				$("#pid1").html("비밀번호입력해주세요").css("color","#BA1589");
				$("#pwdchangebtn").prop("disabled", false);
			} else {
				if(oldpass=="")
				{
					$("#oldpass").css("background-color", "#FFCECE");
					$("#pid1").html("비밀번호입력해주세요").css("color","#BA1589");
					$("#pwdchangebtn").prop("disabled", true);
				}else if (data == 0)
				{
					$("#oldpass").css("background-color", "#FFCECE");
					$("#pid1").html("비밀번호불일치").css("color","#BA1589");
					$("#pwdchangebtn").prop("disabled", true);
				} else if (data == 1)
				{
					$("#oldpass").css("background-color", "#B0F6AC");
					$("#pid1").html("비밀번호일치").css("color","green");
					$("#pwdchangebtn").prop("disabled", false);
				}
			}
		}
	});
} */


/* function pwdCheck(){
	var pwd = $("#pwd").val();
	if(pwd.length>3){
		$("#pid2").html("사용가능").css("color","green");
	}else if(pwd.length==0){
		$("#pid2").html("사용불가능").css("color","red");
	}else{
		$("#pid2").html("사용불가능").css("color","red");
	}
} */
	</script>
</body>
</html>