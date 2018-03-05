<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Real Programmer</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

   <!-- Css -->
    <link href="resources/css/bootstrap.css" rel="stylesheet">
	<link href="resources/css/style.css" rel="stylesheet">



	<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="resources/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/set1.css" />



	<!--button css-->
	<link rel="stylesheet" type="text/css" href="resources/css/buttons.css" />

	<style>
		body{
			background-color:hsla(0, 0%, 93.3%, .4);
		}
		.sidenav {
			height: 100%;
			width: 0;
			position: fixed;
			z-index: 1;
			top: 0;
			left: 0;
			background:hsla(0, 0%, 93.3%, .8);
			overflow-x: hidden;
			padding-top: 60px;
		}

		.sidenav a {
			padding: 8px 8px 8px 32px;
			text-decoration: none;
			font-size: 1.4rem;
			display: block;
		}

		.sidenav a:hover {
			/*color: #f1f1f1;*/
			background-color:#ccc;

		}

		.sidenav .closebtn {
			position: absolute;
			top: 0;
			right: 25px;
			font-size: 36px;
			margin-left: 50px;
		}

		#main {
			transition: margin-left .5s;
			padding: 16px;
		}

		@media screen and (max-height: 450px) {
		  .sidenav {padding-top: 15px;}
		  .sidenav a {font-size: 18px;}
		}
		.sidenav .column {
			border-bottom:1px solid #d3d3d3;
			padding: 12px 0;
		}
	</style>

</head>
<body>

<div id="mySidenav" class="sidenav" style="margin-top: 60px;">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="column">
	  <a href="index2.html">홈</a>
	  <a href="#">인기</a>
	  <a href="#">강사</a>
	  <a href="#">test</a>
  </div>

  <div class="column">
	
		<span style="color:#9b9b9b;display: block;
    padding: 8px 24px;
    font-size: 1.4rem;
    font-weight: 500;
    letter-spacing: .007px;">aeoufseu</span>

		
		<a href="index2.html">About</a>
	  <a href="#">Services</a>
	  <a href="#">Clients</a>
	  <a href="#">Contact</a>
  
</div>
</div>

<div id="main">

	<nav class="navbar navbar-default navbar-fixed-top" style="margin-bottom:0px;height: 60px;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.12);">
		<div class="container-fluid" style="padding-right: 30px;padding-left: 30px;height:60px">
			<div class="navbar-header" style="margin-top: 5px;display:flex;width:50%">
				<div class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">	
					<span class="bar1"></span>
					<span class="bar2"></span>
					<span class="bar3"></span>
			    </div>
				 <a class="navbar-brand top" style="margin-right:20px" onclick="openNav()">
					<img src="/finalp/resources/img/menu.png" alt="" style="margin-top: -2px;">
				</a>
				<a class="navbar-brand top" href="#">
					<img src="/finalp/resources/img/logo2.png" alt="" style="margin-top: -10px;">
				</a>

				<form style="margin-left:50px;margin-top:7px;display:flex">
				  <input type="text" placeholder="강좌를 검색해보세요" style="height: 35px;width:350px;
    padding: 0 15px;
    border: 1px solid #37474f;
    background: transparent;">
				 <!-- <input type="submit" value="go!" style="height: 35px;width:70px;
    color: #fff;
    font-weight: 700;
    text-transform: uppercase;
    border: none;
    border-radius: 0;
    background-color: #37474f;"> -->
				
				<button type="submit" class="button button--ujarak button--border-thin button--text-thick" style="height: 35px;margin:0">SEARCH</button>
				</form>
			</div>

			

			<div class="collapse navbar-collapse" id="main-menu">
			   <ul class="nav navbar-nav navbar-right">

				<li>
			   <button style="background: none;border: none;outline: none;display: flex;">
				<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
					<img height="45" width="45" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
				</div>
				
					
			   </button>
			   </li>
				<li><a href="#about">About</a></li>
				<li><a href="#portfolio">Logout</a></li>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
  



   

	
	
	
	<!-- About -->
	<section class="about" id="about">
		<div class="container about">
			<div class="row">
				<div class="col-md-6 big-letter">
					<p>
						Donec quis leo leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
						Cras scelerisque rhoncus nulla sit amet bibendum. Quisque maximus vel nibh non tincidunt. Mauris felis felis, porta 
						vitae sem sed, auctor consequat diam. Sed eu magna ultricies, convallis elit vel, lacinia ante. 
					</p>
					<br>
					<p>
						Vestibulum tempor velit nibh, nec finibus lectus ultrices sodales. Aliquam pellentesque nisl et maximus egestas. Vivamus accumsan, sem ut viverra
						ullamcorper, neque ligula laoreet justo, non semper nunc mauris mattis lorem. Maecenas finibus non ipsum ullamcorper vehicula.
					</p>
				</div>
				<div class="col-md-6">
					<p>
						Aliquam pellentesque nisl et maximus egestas. Vivamus accumsan, sem ut viverra ullamcorper, neque ligula laoreet justo, 
						non semper nunc mauris mattis lorem. Quisque maximus vel nibh non tincidunt. Mauris felis felis, porta 
						vitae sem sed, auctor consequat diam. Sed eu magna ultricies, convallis elit vel, lacinia ante. Vestibulum tempor velit 
						nibh, nec finibus lectus ultrices sodales
					</p>
					<br>
					<img class="pull-right" src="/finalp/resources/img/signature.jpg" alt="signature">
				</div>
			</div>
		</div>
	</section>
	

	<div class="container">
	
	<h2>Sarah</h2>
	<div class="grid">
		<figure class="effect-sarah">
			<img src="/finalp/resources/img/13.jpg" alt="img13"/>
			<figcaption>
				<h2 style="color:white">Free <span style="color:white">Sarah</span></h2>
				<p>Sarah likes to watch clouds. She's quite depressed.</p>
				<a href="#">View more</a>
			</figcaption>			
		</figure>
		<figure class="effect-sarah">
			<img src="/finalp/resources/img/20.jpg" alt="img20"/>
			<figcaption>
				<h2 style="color:white">Free <span style="color:white">Sarah</span></h2>
				<p>Sarah likes to watch clouds. She's quite depressed.</p>
				<a href="#">View more</a>
			</figcaption>			
		</figure>
	</div>

	</div>



	 <!-- Intro -->
	<section class="intro" style="background:hsla(0, 0%, 93.3%, .8);margin-top: 60px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<p>Leap Team 화이팅!! Cristiano Ronaldo dos Santos Aveiro Lionel Messi Andres Iniesta David Villa	 </p>
				</div>
			</div>
		</div>
	</section>


	
	<!-- footer -->
	<footer>
		<div class="container">
			<p class="text-center">© 2016 - Designed by <a href="http://www.nicolatolin.com">Nicola Tolin</a></p>
		</div>
	</footer>
	
	<a href="#page-top" class="cd-top">Top</a>



	<script>
		// For Demo purposes only (show hover effect on mobile devices)
		[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
			el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
		} );
	</script>

  	<script src="/finalp/resources/js/jquery.js"></script>
    <script src="/finalp/resources/js/bootstrap.min.js"></script>
	<script src="/finalp/resources/js/modernizr.js"></script>
	<script src="/finalp/resources/js/script.js"></script>
	
	

<script>

function openNav() {
    document.getElementById("mySidenav").style.width = "240px";
    document.getElementById("main").style.marginLeft = "240px";
    
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";

}


</script>
</body>
</html>