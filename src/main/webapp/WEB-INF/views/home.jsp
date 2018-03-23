<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Real Programmer</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="/finalp/resources/css/assets/main.css" />
	
	<style type="text/css">
		#banner h1{
		    font-size: 4em;
			margin-bottom: .25em;
			color: #ffffff;
			font-weight: 700;
		    line-height: 1.5;
		}
		
	</style>
</head>
<body>
<c:import url="header.jsp" />

		<!-- Banner -->
			<section id="banner" data-video="/finalp/resources/img/images/banner">
				<div class="inner">
					<header>
						<h1>Real Programmer</h1>
						<p>내 손안에 세상을 담고 세상을 만들어가는 코더<br />
						새로운 시대로의 발걸음 당신부터 시작입니다</p>
					</header>
				</div>
	
			</section>

		<!-- Main -->
			<div id="main">

			<!-- 강의별 인기 랭킹 -->
				<section class="wrapper style2">
					<div class="inner">
						<header>
							<h2 class="starTutorTitle"><i class="xi-mouse xi-x"></i>&nbsp; [Most Clicked] 가장 인기 있는 강의</h2>
							<hr>
							
						</header>
						<!-- Tabbed Video Section -->
							<div class="flex flex-tabs">
								<ul class="tab-list">
									<li><a href="#" data-tab="tab-1" class="active">JAVA</a></li>
									<li><a href="#" data-tab="tab-2">ORACLE</a></li>
									<li><a href="#" data-tab="tab-3">HTML/CSS</a></li>
								</ul>
								<div class="tabs">

									<!-- Tab 1 -->
										<div class="tab tab-1 flex flex-3 active">
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic01.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic02.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic03.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic04.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic05.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic06.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
										</div>

									<!-- Tab 2 -->
										<div class="tab tab-2 flex flex-3">
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic06.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic05.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic04.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic03.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic02.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic01.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
										</div>

									<!-- Tab 3 -->
										<div class="tab tab-3 flex flex-3">
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic03.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic02.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic01.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic06.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic05.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
											<!-- Video Thumbnail -->
												<div class="video col">
													<div class="image fit">
														<img src="/finalp/resources/img/images/pic04.jpg" alt="" />
														<div class="arrow">
															<div class="icon fa-play"></div>
														</div>
													</div>
													<a href="#" class="link"><span>Click Me</span></a>
												</div>
										</div>

								</div>
							</div>
					</div>
				</section>

			<!-- 강사랭킹 -->
				<section class="wrapper ">
				
					<div class="inner">
						<header class="align-center">
							<h2 style="color: #9ba2a8"><i class="xi-star xi-x"></i>강사 랭킹 탑3</h2>
							<hr>
						</header>

						<!-- 3 Column Video Section -->
							<div class="flex flex-3">
								<div class="video col">
									<div class="image fit">
										<img src="/finalp/resources/img/images/pic09.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<p class="caption">
										Cras eget lacus sed mauris scelerisque tincidunt
									</p>
									<a href="#" class="link"><span>Click Me</span></a>
								</div>
								<div class="video col">
									<div class="image fit">
										<img src="/finalp/resources/img/images/pic10.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<p class="caption">
										Vivamus vulputate lacus non massa auctor lobortis
									</p>
									<a href="#" class="link"><span>Click Me</span></a>
								</div>
								<div class="video col">
									<div class="image fit">
										<img src="/finalp/resources/img/images/pic11.jpg" alt="" />
										<div class="arrow">
											<div class="icon fa-play"></div>
										</div>
									</div>
									<p class="caption">
										Nam eu nisi non ante sodales interdum a vitae neque
									</p>
									<a href="#" class="link"><span>Click Me</span></a>
								</div>
							</div>
					</div>
				</section>

			</div>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex flex-3">
						<div class="col">
							<h3>Team</h3>
							<ul class="alt">
								<li><a href="#">Kim Yong seung</a></li>
								<li><a href="#">Lim Ji Hye</a></li>
								<li><a href="#">Yoon Joon Woo</a></li>
								<li><a href="#">Shout Out! Leap</a></li>
							</ul>
						</div>
						<div class="col">
							<h3>Final Project</h3>
							<ul class="alt">
								<li><a href="#">Leap</a></li>
								<li><a href="#">RealProgrammer</a></li>
								<li><a href="#">S-Class</a></li>
								<li><a href="#">Yoon Cha Ju Tutor</a></li>
							</ul>
						</div>
						<div class="col">
							<h3>Team</h3>
							<ul class="alt">
								<li><a href="#">Lim Seung Woo</a></li>
								<li><a href="#">Kim Jea Seok</a></li>
								<li><a href="#">Choi ung Seok</a></li>
								<li><a href="#">Moon Si Hyeon</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="copyright">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-snapchat"><span class="label">Snapchat</span></a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="/finalp/resources/js/assets/jquery.min.js"></script>
			<script src="/finalp/resources/js/assets/jquery.scrolly.min.js"></script>
			<script src="/finalp/resources/js/assets/skel.min.js"></script>
			<script src="/finalp/resources/js/assets/util.js"></script>
			<script src="/finalp/resources/js/assets/main.js"></script>

	</body>
</html>

</div>
</body>
</html>