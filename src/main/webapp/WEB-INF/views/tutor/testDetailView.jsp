<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/finalp/resources/css/codemirror.css">
	<link rel="stylesheet" href="/finalp/resources/theme/lesser-dark.css">
<style>
	#navbar{
		 overflow: hidden;
	}
	.sticky{
		position: fixed;
		top: 60px;
		width: 100%
	}
	.navbar-brand{
			font-size:16px!important;
	}
		.navbar-brand .a:hover {
			color:black;
		}
		.selected{
			border-bottom: solid 2px darkcyan;
			margin-top: 9px;
		}

		.searchLecture {
		  border: 0;
		  outline: 0;
		  background: transparent;
		  border-bottom: 2px solid black;
		}
		.searchButton{
			border:0;
			background-color:transparent;
		}
		.applyButton{
			background-color: darkcyan;
			border-radius: 2px;
			color: white;
			padding: 13px 20px;
			white-space: nowrap;
			font-size: 1.4rem;
			font-weight: 500;
			letter-spacing: .007px;
			display: flex;
			-ms-flex-direction: row;
			-webkit-flex-direction: row;
			flex-direction: row;
			outline:none;
			border:none;
		}
		.taskRegButton{
			background-color: #337ab7;
			border-radius: 2px;
			color: white;
			padding: 13px 19px;
			white-space: nowrap;
			font-size: 1.4rem;
			font-weight: 500;
			letter-spacing: .007px;
			display: flex;
			-ms-flex-direction: row;
			-webkit-flex-direction: row;
			flex-direction: row;
			outline:none;
			border:none;
			margin: 10px;
		}

		.taskRegButton:hover{
			background-color:#285e8e;
		}

		table {
			color: #333;
			font-size: 14px;
		}

		.badge {
			display: inline-block!important;
			padding: .45em .5em!important;
			font-size: 75%!important;
			font-weight: 700!important;
			line-height: 1!important;
			text-align: center!important;
			white-space: nowrap!important;
			vertical-align: baseline!important;
			border-radius: .25rem!important;
		}

		.badge-primary {
			color: #fff!important;
			background-color: #007bff!important;
		}
		
		.badge-light-green{
			background: #79d5b3!important;
		}
		.badge-purple{
			background:#9b6bcc!important;
		}
		.badge-info{
			background:#5bc0de!important;
		}	
		.badge-from{
			background:#428bca!important;
		}
		
		.headline {
			display: block;
			margin: 10px 0 25px 0;
			border-bottom: 1px dotted #e4e9f0;
		}

		.headline h2, .headline h3, .headline h4 {
			border-bottom: 2px solid #0076C0;
			margin: 0 0 -2px 0;
			padding-bottom: 5px;
		}
		.headline h2 {
			font-size: 22px;
		}
		p, li, li a {
			color: #555;
		}
		h1, h2, h3, h4, h5, h6 {
			color: #585f69!important;
			margin-top: 5px;
			text-shadow: none!important;
			font-weight: 600;
			font-family: 'Open Sans', sans-serif!important;
		}

		.compileButton{
			background-color: #337ab7;
			border-radius: 2px;
			color: white;
			padding: 10px 15px;
			white-space: nowrap;
			font-size: 1.4rem;
			font-weight: 500;
			letter-spacing: .007px;
			display: flex;
			-ms-flex-direction: row;
			-webkit-flex-direction: row;
			flex-direction: row;
			outline:none;
			border:none;
			margin: 10px;
		}

		.compileButton:hover{
			background-color:#285e8e;
		}
		#deapply{
			background-color: hsl(0, 0%, 93.3%);
			color: hsla(0, 0%, 6.7%, .6);
		}
			#applyready{
			background-color: burlywood;
			border-radius: 2px;
			color: white;
			padding: 13px 20px;
			white-space: nowrap;
			font-size: 1.4rem;
			font-weight: 500;
			letter-spacing: .007px;
			display: flex;
			-ms-flex-direction: row;
			-webkit-flex-direction: row;
			flex-direction: row;
			outline:none;
			border:none;
		}
</style>
</head>
<body>
<c:import url="../header.jsp" />
<div id="banner" style="height:305px;background-image: url('/finalp/resources/img/avatar.jpg');background-size:cover;background-position-y: -200px;"></div>

	<div style="background-color:hsla(0, 0%, 93.3%, .4);">
	
		
		<div class="container about" style="display:flex;width:1284px">
			<div class="col-lg-9" style="display: inline-flex">
				<div class="profile" style="height: 96px;position: relative; display: inline-block; floar:left;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/profileupload/${Lecture.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>

				<div class="desc">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${Lecture.mem_name }</h3>
					<h5 style="padding-left:10px;color:gray!important">수강생 ${Lecture.apply_count }명</h5>
				</div>

				<c:if test="${loginUser.mem_no eq tutor_no }">
				<div style="margin-top: 25px;margin-left:10px">
					<button style="border: 0;outline: 0;background-color: hsla(0, 0%, 97%, 1);" onclick="location.href='classManageLecture.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}'">
						<img height="40" width="50" src="/finalp/resources/img/setting1.png">
					</button>
				</div>
				</c:if>

			</div>
			<div class="col-lg-3">
				<div style="margin-left: 75%;margin-top: 25px;">
					<c:if test="${checkReady eq 0 && checkApply eq 0}">
						<c:url var="apply" value="apply.do">
							<c:param name="mem_no" value="${loginUser.mem_no }"/>
							<c:param name="tutor_no" value="${tutor_no }" />
							<c:param name="pageName" value="tutorHome.do" />
						</c:url>
						<c:if test="${loginUser.mem_no != tutor_no }">
							<button id="apply" class="applyButton" onclick="location.href='${apply }'">수강신청</button>
						</c:if>
					</c:if>
					
					<c:if test="${checkReady gt 0}">
						<button id="applyready" class="applyButton" disabled><i class="xi-spinner-1 xi-spin xi-x"></i>&nbsp;&nbsp;수강대기</i></button>
					</c:if>
					
					
					<c:if test="${checkApply gt 0 }">
						<c:url var="deapply" value="deapply.do">
							<c:param name="mem_no" value="${loginUser.mem_no }"/>
							<c:param name="tutor_no" value="${tutor_no }" />
							<c:param name="pageName" value="tutorHome.do" />
						</c:url>
						<button id="deapply" class="applyButton" data-toggle="modal" data-target="#exampleModal">
							<img src="/finalp/resources/img/check.png">&nbsp;수강중 ${Lecture.apply_count }명
						</button>
						
						<!-- 수강신청취소 Modal -->
						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">수강 신청 취소</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        정말로 수강을 취소하시겠습니까?
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
						        <button type="button" class="btn btn-primary" onclick="location.href='${deapply}'">수강 취소</button>
						      </div>
						    </div>
						  </div>
						</div>
					</c:if>
					
				</div>
			</div>
		</div>

	</div>

	<div id="navbar" style="z-index:99;width:100%;height:48px;background-color: hsla(0, 0%, 97%, 1);text-align:center; font-size:14px">
		<div class="container about" style="display:flex;">
			<nav class="navbar sticky-top navbar-light bg-light" style="display:flex">
			  <a href="tutorHome.do?tutor_no=${tutor_no }" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">Home</span></a>
			  <a href="lecturePlayList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">강의</span></a>
			  <a href="taskList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">과제</span></a>
			  <a href="testList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">Test</span><div class="selected"></div></a>

			  <form style="margin-top:7px;display:flex" action="search.do">
			  <div>
			  	<button type="submit" class="searchButton" style="outline:none"><img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer"></button>
			  </div>
			  <div>	
			  	<input class="searchLecture" type="text" placeholder="검색" name="search_content" style="height: 35px;width: 150px;background: transparent;margin-left: -30px;">
			  	<input type="hidden" name="tutor_no" value=${tutor_no } >
			  	<input type="hidden" name="mem_no" value=${loginUser.mem_no }>
			  </div>
				  
				</form>

			</nav>
		</div>
		</div>


<!-- About -->

<div class="container about" style="width:1170px;font-size:14px">

	<section class="about" id="about" style="width:1170px;padding-bottom:30px">

		
		
		<div class="row">
		<div class="col-md-12">

			
			<ul class="nav nav-pills no-print">
				<li class="active"><a href="/problem/1000">${test_sub_no }번</a></li>
				<li><a href="submitTestList.do?tutor_no=${tutor_no }&test_no=${test_no}&test_sub_no=${test_sub_no}&test_cate=${test.test_cate}&mem_no=${loginUser.mem_no}&test_maker=${tutor_no}">제출 답안</a></li>
			</ul>

					


			<div class="page-header">
				<h1 style="font-weight:600">
					<span id="problem_title" class="">${test.test_title }</span>
					<span class="label label-light-green">풀이</span>
				</h1>
			</div>
			

			<div class="table-responsive">
				<table class="table" id="problem-info">
				<thead>
				<tr>
					<th style="width:25%;">제한시간</th>
					<th style="width:25%;">카테고리</th>
					<th style="width:25%;">맞은 사람</th>
					<th style="width:25%;">정답 비율</th>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td><b>${test.test_lec_id }초</b></td>
						<td>${test.test_cate }</td>
						<td>${test.test_cor_cnt }</td>
						<td>${test.test_cor_cnt/Lecture.apply_count*100 }%</td>
					</tr>
				</tbody>
				</table>
			</div>


			<section id="description" style="padding-top:30px">
				<div class="headline">
					<h2 style="width: 4%;font-weight:600">문제</h2>
				</div>
				<div style="font-size:medium; line-height:30px;" id="problem_description">
					<p>${test.test_pro }</p>
				</div>
			</section>


			<section id="description" style="padding-top:30px">
				<div class="headline">
					<h2 style="width: 9%;font-weight:600">예제 정답</h2>
				</div>
				<div style="font-size:medium; line-height:30px;" id="problem_description">
					<pre class="sampledata" id="sample-input-1">${test.test_answer }</pre>
				</div>
			</section>

			<section id="sampleinput" style="padding-top:30px">
				<div class="headline">
					<h2 style="width:6%;font-weight:600">풀기</h2>
				</div>
			</section>
			<!-- 제한시간 -->
				제한시간 : <B><span id="timeLeft"></span></B> 초<br>
			<!-- 제한시간 END -->
			<div class="row">
			<div class="col-md-8">
				<section id="sampleinput" style="padding-top:0">
				
				<div style="display:flex;margin-bottom: 20px;">
					<p>Tutor_NO : <p><input type="text" id="tutorno" onblur="check()" value="  ${tutor_no }" style="border: 0px solid;" readonly>
					<p>Enter Class Name : <p><input type="text" id="class" onblur="checkTest()">
				</div>
				<div style="display:flex;width: fit-content;">
					<button class="compileButton" onclick="compileTest()">Compile</button>
					<button class="compileButton" onclick="runTest()">Run</button>
					<button class="compileButton" onclick="empty()">Clear</button>
					<button class="compileButton" onclick="subtest()">제출</button>
				</div>
				<textarea class="form-control" aria-label="With textarea" rows="30" id="maincode" name="maincode" style="overflow:auto;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.12)"></textarea>
				
				</section>
			</div>
			<div class="col-md-4">
				<section id="sampleoutput" style="padding-top:30px">
				<div style="padding-top:84px"></div>
				
				<textarea class="form-control" aria-label="With textarea" rows="30" id="output" name="output" style="overflow:auto;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.12)"></textarea>
				</section>
			</div>
				
			</div>


		</div>


			

		<div class="col-md-12">
			

		</div>
		<div class="margin-bottom-20"></div>
		<div style="width: 100%;">
			
</div>
<div class="margin-bottom-20"></div>

	</div><!--row-->


<input type="hidden" id="teTitle" value=${test.test_title } >
<input type="hidden" id="teCate" value=${test.test_cate } >
<input type="hidden" id="teTno" value=${tutor_no }>
<input type="hidden" id="teMem" value=${loginUser.mem_no }>

	</section>
	
	

	
	
	






</div><!-- container about -->
	
	
	<a href="#page-top" class="cd-top">Top</a>

	
	<script>
		// For Demo purposes only (show hover effect on mobile devices)
		[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
			el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
		} );
	</script>


    <!-- script -->
    <script src="/finalp/resources/js/jquery.js"></script>
    <script src="/finalp/resources/js/bootstrap.min.js"></script>
	<script src="/finalp/resources/js/modernizr.js"></script>
	<script src="/finalp/resources/js/script.js"></script>
<!-- 	<script type="text/javascript" src="/finalp/resources/js/j_main__script.js"></script> -->
<!-- 	<script type="text/javascript" src="/finalp/resources/js/jquery-3.3.1.min.js"></script> -->
	<script type="text/javascript" src="/finalp/resources/js/codemirror.js"></script>
	<script type="text/javascript" src="/finalp/resources/mode/javascript.js"></script>
	

	



<script>

function myFunction() {
    var x = document.getElementById("mySidenav");
	var y = document.getElementById("main");
	var b = document.getElementById("banner");
    if (x.style.display == "none") {
        x.style.display = "block";
		y.style.marginLeft = "240px";
		b.style.height = "265px";
		
    } else {
        x.style.display = "none";
		y.style.marginLeft = "0";
		b.style.height = "305px";
		
    }
}

</script>


	<script>
		window.onscroll = function() {myFunction2()};

		var navbar = document.getElementById("navbar");
		var sticky = navbar.offsetTop;

		function myFunction2() {
		  if (window.pageYOffset >= sticky) {
			navbar.classList.add("sticky")
		  } else {
			navbar.classList.remove("sticky");
		  }
		}
		</script>
		
		
	<!-- 제한시간 -->
		<script>
		var init1 = '${test.test_lec_id}';
		var init = init1;
		function time_reset(){
			init=-1;
			clearTimeout(timer);
			timer=setTimeout("count()",500);
		
		}
		function show_clock(){
			document.all.timeLeft.innerHTML=init;
			count();
		}
		
		function count(){
			if(init>0){
				document.all.timeLeft.innerHTML=init;
				init--;
				timer=setTimeout("count()",1000);
			} else if(init<0) {
				clearTimeout(timer);
				init=init1;
				show_clock();
			} else {
				document.all.timeLeft.innerHTML=init;
				timer=setTimeout("subtest()",500);
			}
		}
		 window.onload=show_clock; 
		</script>
	<!-- 제한시간END -->
	<script type="text/javascript">
	<!-- 코드미러 -->
	var textarea=document.getElementById('maincode');
	var editor = CodeMirror.fromTextArea(textarea, {	//코드미러는 앞으로 editor로 씀
	    lineNumbers: true,
	    lineWrapping: true,
	     theme: "lesser-dark", 
	    val: textarea.value
	});
	<!-- 코드미러 -->

	
	<!-- 컴파일러 자바스크립트 -->
	function check() {
	
		var classname = document.getElementById("class").value;
		classname.trim();
		if(classname == ""){
	/*		alert("enter valid class name !!");*/
			document.getElementById("class").focus();
		}
		else{
			editor.setValue("public class " + classname + "{\n\t public static void main(String[] args){ \n\n\n		} \n}") ;
		}
		
	}
	
	function checkTest() {
	
		var classname = document.getElementById("class").value;
		classname.trim();
		if(classname == ""){
	/*		alert("enter valid class name !!");*/
			document.getElementById("class").focus();
		}
		else{
			editor.setValue("public class " + classname + "_test" + "{\n\t public static void main(String[] args){ \n\n\n		} \n}") ;
		}
		
	}
	
	
	function  compile() {
		console.log("compiling");
		if(editor.getValue()==""){	//editor가 코드미러고 코드미러상의 값은 .getValue로 가져온다.
			alert("Insert some code please !");
		}
		else{
			//code = maincode
			//classname = class
			var code=encodeURIComponent(editor.getValue());
			var url = "compileAssign.do?code=" + code + "&className=" + document.getElementById("class").value;
			
			if(window.XMLHttpRequest){
	           xmlhttp=new XMLHttpRequest();
	        }
	        else{
	            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	        }  
	
	        xmlhttp.onreadystatechange=function(){
	            if(xmlhttp.readyState==4 && xmlhttp.status==200){
	            	document.getElementById("output").innerHTML=xmlhttp.responseText;                       
	            }
	        }
	        xmlhttp.open("POST",url,true);
	        xmlhttp.send();
		}
		console.log("compiled !!");
	}
	
	function run() {
		
		var url = "runAssign.do?classname=" + document.getElementById("class").value;
		
		if(window.XMLHttpRequest){
	        xmlhttp=new XMLHttpRequest();
	     }
	     else{
	         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	     }  
		var button_joinus = document.getElementById('subutton');
		xmlhttp.onreadystatechange=function(){
	        if(xmlhttp.readyState==4 && xmlhttp.status==200){
	        	document.getElementById("output").innerHTML=xmlhttp.responseText; 
	       	if(document.getElementById("an").innerHTML==document.getElementById("output").innerHTML){
	
	      	
	      		button_joinus.disabled = false;
	       	}else{
	       		button_joinus.disabled = true;
	       	}
	        }
	    }
	     xmlhttp.open("POST",url,true);
	     xmlhttp.send();
	}
	
	function  compileTest() {
		console.log("compiling");
		if(editor.getValue()==""){
			alert("Insert some code please !");
		}
		else{
			//code = maincode
			//classname = class
			var code=encodeURIComponent(editor.getValue());
			var url = "compileTest.do?code=" + code + "&className=" + document.getElementById("class").value;
			
			if(window.XMLHttpRequest){
	           xmlhttp=new XMLHttpRequest();
	        }
	        else{
	            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	        }  
	
	        xmlhttp.onreadystatechange=function(){
	            if(xmlhttp.readyState==4 && xmlhttp.status==200){
	            	document.getElementById("output").innerHTML=xmlhttp.responseText;                       
	            }
	        }
	        xmlhttp.open("POST",url,true);
	        xmlhttp.send();
		}
		console.log("compiled !!");
	}
	
	function runTest() {
		
		var url = "runTest.do?classname=" + document.getElementById("class").value;
		
		if(window.XMLHttpRequest){
	        xmlhttp=new XMLHttpRequest();
	     }
	     else{
	         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	     }  
		var button_joinus = document.getElementById('subutton');
		xmlhttp.onreadystatechange=function(){
	        if(xmlhttp.readyState==4 && xmlhttp.status==200){
	        	document.getElementById("output").innerHTML=xmlhttp.responseText; 
	       	if(document.getElementById("an").innerHTML==document.getElementById("output").innerHTML){
	
	      	
	      		button_joinus.disabled = false;
	       	}else{
	       		button_joinus.disabled = true;
	       	}
	        }
	    }
	     xmlhttp.open("POST",url,true);
	     xmlhttp.send();
	}
	
/* 	function startass(){
		var button_joinus1 = document.getElementById('subutton');
		button_joinus1.disabled = true;
	}
	 */
	
	function empty() {
		
		document.getElementById("class").value="";
		editor.setValue("");
	  	document.getElementById("output").value="";
		
	}
	
	function subass() {
		console.log("submiting");
		if(editor.getValue()==""){
			alert("Insert some code please !");
		}
		else{
			//code = maincode
			//classname = class
			var code=encodeURIComponent(editor.getValue());
			var url = "submitAssign.do?code=" + code + "&className=" + document.getElementById("class").value + "&tutorno=" + document.getElementById("tutorno").value;
			
			if(window.XMLHttpRequest){
	           xmlhttp=new XMLHttpRequest();
	        }
	        else{
	            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	        }  
	
	        xmlhttp.onreadystatechange=function(){
	            if(xmlhttp.readyState==4 && xmlhttp.status==200){
	            	document.getElementById("output").innerHTML=xmlhttp.responseText;
	            }
	        }
	        xmlhttp.open("POST",url,true);
	        xmlhttp.send();
		}
		console.log("submited !!");
	}
	
	function subtest() {	//시간되면 디비에 값 넣고, 
		console.log("submiting");
		if(editor.getValue()==""){
			alert("Insert some code please !");
		}
		else{
			//code = maincode
			//classname = class
			var code=encodeURIComponent(editor.getValue());
			var url = "submitTest.do?code=" + code + "&className=" + document.getElementById("class").value+"_test.java" + "&tutorno=" + document.getElementById("tutorno").value
						+"&submit=sub"+"&test_orfile="+document.getElementById("class").value+"_test.java"+"&test_writer="+document.getElementById("teMem").value+"&test_cate="+document.getElementById("teCate").value
						+"&test_maker="+document.getElementById("teTno").value+"&test_title="+document.getElementById("teTitle").value
						+"&test_res_cod="+code  ;
			
			if(window.XMLHttpRequest){
	           xmlhttp=new XMLHttpRequest();
	        }
	        else{
	            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	        }  
	
	        xmlhttp.onreadystatechange=function(){
	            if(xmlhttp.readyState==4 && xmlhttp.status==200){
	            	document.getElementById("output").innerHTML=xmlhttp.responseText;
	            }
	        }
	        xmlhttp.open("POST",url,true);
	        xmlhttp.send();
		}
		console.log("submited !!");
		alert("시험이 종료되었습니다 !");
		window.location.replace("tutorListView.do");
	}
	<!-- /컴파일러 자바스크립트 -->
	</script>	
</div>

</body>
</html>



