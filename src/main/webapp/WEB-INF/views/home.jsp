<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
   <title>RP's Home~</title> 
</head>
<body>
<c:import url="header.jsp" />
<h1> 화면 준비중입니다.. </h1>
<a href="assInsertForm.do">for assignment click here</a><br>
<a href="assList.do">for assignment LIST click here</a><br>
<a href="testInsertForm.do">for test click here</a><br>
<a href="testList.do">for test LIST click here</a><br><br>
<a href="testDetailView.do">for testDetailView click here</a><br>

<a href="classManage.do">for classManagement cilck here</a><br>
<a href="blist.do">관리자 페이지</a><br>
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
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="top:40px; left:50px;">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        
      <div class="modal-body">
          <body class="bg-dark">
  <div class="container" style="margin-top: 60px;">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">로그인</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">아이디입력</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="아이디입력">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">비밀번호입력</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="비밀번호입력">
          </div>
          <div class="form-group">
            <div class="form-check">
              <!--label class="form-check-label">
                <input class="form-check-input" type="checkbox">비밀번호 기억하기 </label-->
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="index.jsp">로그인</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="/semi/views/login/enrolll.html">회원가입하기</a>
          <a class="d-block small" href="/semi/views/login/findpwd.html">ID/PW찾기</a>
        </div>
      </div>
    </div>
  </div>
       
          
        </div>
        
      <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

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

<!--    <script src="http://code.jQuery.com/jquery-latest.min.js"></script>-->
<!-- 밑에 jquery는 없는 경로라서 주석 -->
<!--     <script src="//ajax.googleapis.com/ajx/libs/jquery/1.10.2/jquery.min.js"></script> -->
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