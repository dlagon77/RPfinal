<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>RP's Home</title>
</head>
<body>
<c:import url="header.jsp" />
<h1>
잘들 나오시는감?
<br>재석이 화이팅!^.~
<br>재석이 별루!^.~승우짱
<br>재석가모니
<br>시현문시현문시현시현^,~
<br>준우임돠~
<br>지혱
</h1>
<a href="assInsertForm.do">for assignment click here</a><br>
<a href="assList.do">for assignment LIST click here</a><br>
<a href="taskList.do">for taskList click here</a><br>
<a href="taskDetail.do">for taskDetail click here</a><br>
<a href="tutorHome.do">for tutorHome click here</a><br>
<a href="testDetailView.do">for testDetailView click here</a><br>
<a href="lecturePlayList.do">for youtubePlayList cilck here</a>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
	<style type="text/css">
	.innerbox{float:left;width:48%;border:1px solid #ccc;padding:10px;max-height:250px;}
	.preview{width:98%;border:1px solid #ccc;min-height:400px;}
	iframe{width:100%;border:.5px solid red;min-height:400px;}
	</style>
  <title>Document</title>
 </head>
 <body>
	<div id="container">
		<div id="box">
			<textarea class="innerbox html" placeholder="Enter HTML Here"></textarea>
			<textarea class="innerbox css" placeholder="Enter Css Here"></textarea>
				<div class="innerbox preview">
					<iframe id="live_update">
						<!doctype html>
						<html lang="en">
						<head><meta charset="utf-8">
						</head>
						<body></body>
						</html>
					</iframe>
				</div><!-- /iframe holder -->
		</div><!-- /box -->
	</div><!-- /container -->

<!--	 <script src="http://code.jQuery.com/jquery-latest.min.js"></script>-->
	 <script src="//ajax.googleapis.com/ajx/libs/jquery/1.10.2/jquery.min.js"></script>
	 <script>
		$(function(){
			function fetchHtml(){
				var html=$(".html").val();
				return html
			}
			function fetchCss(){
				var css=$(".css").val();
				return css
			}
				$(".innerbox").on("keyup",function(){
				
					var target = $("#live_update")[0].contentWindow.document;
					target.open();
					target.close();

					var html=fetchHtml();
					var css=fetchCss();

					$("body",target).append(html); 
					$("head",target).append("<style>"+css+"</style>");

				});
		}); 
	 </script>
 </body>
</html>

</div>
</body>
</html>
