<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="/finalp/resources/js/j_main__script.js"></script>
<script type="text/javascript" src="/finalp/resources/js/jquery-3.3.1.min.js"></script>
<style>
 	.java{
		display:inline-block;
		border:1px solid black;
	} 
	.question{
		overflow:auto;
		height:505px;
		width:480px;
		border:1px solid black;
	}
	.answer{
		overflow:auto;
		height:250px;
		width:480px;
		border:1px solid black;
	}
</style>
<title>시험 풀기</title>
</head>
<body style="line-height: 1.0 !important;" onload="realtimeClock()">
<%-- <c:import url="../header.jsp" /> --%>
<div class="ass_wrapper" align="center">
<button id="test2">시험시작</button>

	<div class="java" style="flaot:left;display:inline-block;border:1px solid black">
			<br>
		<h1> JAVA QUESTION</h1>
		<h3>배열기초문제1</h3>
		<br>
		<div id="d1" class="question" style="overflow:auto;"></div>
		<br><br>
		<div id="d2" class="answer"></div>
	</div>
	<div class="java" style="flaot:left;display:inline-block;border:1px solid black">
		<h1> JAVA COMPILER</h1>
		Enter Your Tutor_NO : <input type="text" id="tutorno" onblur="checkTest()">
		Enter Class Name : <input type="text" id="class" onblur="checkTest()"> <br><br>
		<button onclick="compileTest()">COMPILE</button>
		<button onclick="runTest()">RUN</button>
		<button onclick="empty()">CLEAR</button>
		<br>
		<br>

		<textarea rows="32" cols="65" id="maincode" name="maincode" style="overflow:auto;"></textarea> <br><br><br>
		<textarea rows="16" cols="65" id="output" name="output" style="overflow:auto;"></textarea> <br><br><br>
		<button id="subutton" onclick="subass1()">제출하기</button>
	</div>
</div>
<!-- 현재시간 -->
<!-- <form name="rtcForm">
<input type="text" name="rtcInput" size="20" readonly="readonly" />
</form> -->
<!-- 현재시간 END -->

<!-- 제한시간 -->
	제한시간 : <B><span id="timeLeft"></span></B> 초<br>
<!-- 제한시간 END -->
<!-- <script type="text/javascript">

$(function(){
 	$("#subutton").on("click",function(){

  $.ajax({
			url:"test2.do",

			data:{submit : "sub", ass_orfile : ($("#class").val()+".java"), ass_writer : 3, ass_cate : "배열"},

	          type : "post",
	          success : function(result){
	              if(result == "ok"){
	                  alert("Success");
	               }else{
	                  alert("Fail");
	               }	         
	          },
	          error : function(request,status, errorData){
	             alert("error code : " + request.status + "\n"
	                   + "message : " + request.responseText + "\n"
	                   + "error : " + errorData);
	          }
		}); 
	});  

});
</script>	 -->

<!-- 현재시간 -->
<!-- <script type="text/javascript">

function realtimeClock() {
  document.rtcForm.rtcInput.value = getTimeStamp();
  setTimeout("realtimeClock()", 1000);
}


function getTimeStamp() { // 24시간제
  var d = new Date();

  var s =
    leadingZeros(d.getFullYear(), 4) + '-' +
    leadingZeros(d.getMonth() + 1, 2) + '-' +
    leadingZeros(d.getDate(), 2) + ' ' +

    leadingZeros(d.getHours(), 2) + ':' +
    leadingZeros(d.getMinutes(), 2) + ':' +
    leadingZeros(d.getSeconds(), 2);

  return s;
}


function leadingZeros(n, digits) {
  var zero = '';
  n = n.toString();

  if (n.length < digits) {
    for (i = 0; i < digits - n.length; i++)
      zero += '0';
  }
  return zero + n;
}

</script> -->
<!-- 현재시간END -->
<!-- 제한시간 -->
<script>
var init1 = 15;
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
</body>
</html>.