<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생-프로필</title>
</head>
<!-- === BEGIN BODY ===  -->
<body>
<!-- === BEGIN HEADER ===  -->
<c:import url="../header.jsp" />
<!-- === END HEADER ===  -->
<c:import url="mpsidemenu.jsp" />
<!-- === BEGIN STU_PROFILE ===  -->
<script>
	$('#stumypage').addClass('list-group-item active');
	$('#stusubsc').addClass('list-group-item');
	$('#stuquestion').addClass('list-group-item');
	$('#stusubmit').addClass('list-group-item');
	$('#stuanalist').addClass('list-group-item');
	$('#stuchangeTu').addClass('list-group-item');
	$('#stuupdate').addClass('list-group-item');
	$('#stumessage').addClass('list-group-item');
	$('#stumyboard').addClass('list-group-item');
</script>		
            <div class="panel panel-default" style="margin-left: 30px;width: 950px;height:  500px;" >
                
                <div class="panel-body">
                    <div class="list-group">
                        <a class="list-group-item" style="display: inline-flex;width: 900px; background-color:#F2F2F2">
                            <div>
<!-- 								<img src="http://cfile24.uf.tistory.com/image/99F54E475A9AFC0928A3E6" width="150px" class="img-circle list-group-item-image"> -->
								<img src="/finalp/resources/img/profileupload/${Member.mem_orfile}" width="150px" class="img-circle list-group-item-image">
							</div>
							<div style="margin-top: 40px;margin-left: 20px;">
                            	<h4 class="list-group-item-heading">${Member.mem_name }</h4>
							</div>
							
							<script>
								function clickBtn(){
									location.href='http://www.naver.com';
								}
							</script>
							<div class="button-btn">
								<button type="button" class="btn" onclick="clickBtn();" style="margin-top: 100px;">프로필 수정하기</button>
							</div>
                        </a>
                    </div>
                </div>
                <div class="panel-body">
                	      <script type="text/javascript" src="https://www.google.com/jsapi"></script>
                	      <script>
                	      google.load('visualization', '1.0', {'packages':['corechart']});

                	      // Set a callback to run when the Google Visualization API is loaded.
                	      google.setOnLoadCallback(drawChart);


                	      function drawChart() {
                	      var t1data = google.visualization.arrayToDataTable([
                	           ['Contact', 'Customer Contact', { role: 'style' }],
                	           ['Email', 486, 'rgb(66, 133, 244)'],   
                	           ['Face 2 Face', 386, 'rgb(219, 68, 55)'],   
                	           ['Live Chat', 67, 'rgb(244, 180, 0)'],
                	        ]);
                	        // Set chart options
                	        var t1options = {'legend.position': 'none'};
                	        // Instantiate and draw our chart, passing in some options.
                	        var t1chart = new google.visualization.PieChart(document.getElementById('town1_chart'));
                	        t1chart.draw(t1data, t1options);
                	        
                	        // Create the Town data table.        
                	        var t2data = google.visualization.arrayToDataTable([
                	           ['Contact', 'Customer Contact', { role: 'style' }],
                	           ['Email', 168, 'rgb(66, 133, 244)'], 
                	           ['Face 2 Face', 101, 'rgb(219, 68, 55)'],    
                	           ['Live Chat', 34, 'rgb(244, 180, 0)'],
                	        ]);
                	        // Set chart options
                	        var t2options = {'legend.position': 'none'};
                	        // Instantiate and draw our chart, passing in some options.
                	        var t2chart = new google.visualization.PieChart(document.getElementById('town2_chart'));
                	        var t3chart = new google.visualization.PieChart(document.getElementById('town3_chart'));
                	        t2chart.draw(t2data, t2options);
                	        t3chart.draw(t2data, t2options);
                	      }
                	      </script>
	                	     <div style="width:900px;display:inline-flex;">
	                	      <div style="width:300px;">
						        <h2>테스트 2015/16</h2>
						        <div id="town1_chart"></div>
						      </div>
						      
	                	      <div style="width:300px;">
						        <h2>접속기록 2015/16</h2>
						        <div id="town2_chart"></div>
						      </div>
						      <div style="width:300px;">
						        <h2>안녕?2015/16</h2>
						        <div id="town3_chart"></div>
						      </div>
					      </div>
                </div>
                
            </div>
        <!-- === END STU_PROFILE ===  -->		
		        <!-- 밑에 div 2개 지우지 말것. mypagemenu.js에서 닫는 용도-->
		</div>
	</div>
	<!-- 밑에 div 1개 지우지 말것. header.jsp 닫는 용도 -->
	</div>
</body>
<!-- === END BODY ===  -->
</html>