<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>
	<!-- Bootstrap core CSS -->
		 <link href="/finalp/resources/vendor/bootstrap/css/admin-bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/finalp/resources/css/admin-simple-sidebar.css" rel="stylesheet">
	

	 
	
 </head>
 <body>
 <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="home.do">
                        LEAP
                    </a>
                </li>
                <li>
                    <a href="mlist.do">회원 관리</a>
                </li>
                <li>
                    <a href="tlist.do">강사 관리</a>
                </li>
                <li>
                    <a href="blist.do">게시물 관리</a>
                </li>
                <li>
                    <a href="klist.do">금지어 관리</a>
                </li>
                <li>
                    <a href="clist.do">문의 관리</a>
                </li>
                <li>
                    <a href="kblist.do">금지어 포함 게시물</a>
                </li>
                <li>
                	<a href="chart.do">통계</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

		

        <!-- Page Content -->
        <div id="page-content-wrapper" >
            <div class="container-fluid" >
			<a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">관리자 메뉴</a>
				<div class="row">

					<h1 style="margin-top:40px;">통계확인</h1>
				</div>

				<div class="row">
										
					<!--  background color -->
					<div class="col-lg-12" style="background: #efeded";">
		
							 <!--Div that will hold the pie chart-->
					<div id="curve_chart" style="padding:10px;width: 900px; height: 500px"></div>
					<div id="chart_div" style="margin-top:30px;"></div>
					   </div>
					   <!-- background-color end -->
					</div>
					
				</div>
			   
			   
			   
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

   <!-- Bootstrap core JavaScript -->
    <script src="/finalp/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/finalp/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

	
    <script type="text/javascript">
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});
     
      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);
      google.charts.setOnLoadCallback(drawChart1);
      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
			
    	  var sc = ${stlist[0].studentcount};
    	  var tc = ${stlist[0].tutorcount};
    	  
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['강사', tc],
          ['수강생', sc]
        ]);

        // Set chart options
        var options = {'title':'회원 비율',
                       'width':500,
                       'height':400,
					   };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
      
      function drawChart1() {
    	/*   for(var i=0; i< ${datalist.size()};i++){
    		  var fromDate+i = new Date(${datelist[0].v_date});
              var date+i = new Date(fromDate).toDateString("yyyy-MM-dd");
              alert(date+i);
    	  } */
    	  
    	  
    	  
          var data = google.visualization.arrayToDataTable([
            ['string', '방문자수'],
            ['${datelist[0].v_date}',  ${datelist[0].v_count}],
            ['${datelist[1].v_date}',  ${datelist[1].v_count}],
            ['${datelist[2].v_date}',  ${datelist[2].v_count}],
            ['${datelist[3].v_date}',  ${datelist[3].v_count}],
            ['${datelist[4].v_date}',  ${datelist[4].v_count}],
            ['${datelist[5].v_date}',  ${datelist[5].v_count}],
            ['${datelist[6].v_date}',  ${datelist[6].v_count}]
          ]);

          var options = {'width':1000,
                  'height':500,
        		  
            title: '최근 7일간 방문자수',
            curveType: 'function',
            legend: { position: 'bottom' }
          };

          var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

          chart.draw(data, options);
        }
    </script>
</body>

</html>
