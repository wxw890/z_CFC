<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ include file="../inc/header1.jsp" %>
<title>마일리지 &gt; 마일리지 SHOP</title>
<%@ include file="../inc/header2.jsp" %>
<!-- 슬라이드 -->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<body>
<%@ include file="../inc/gnb.jsp"%>

	<div class="container w_fix min">
		<div class="row">
			<!-- 좌측메뉴 -->
			<%@ include file="../inc/snb4_1.jsp"%>
			<!-- //좌측메뉴 -->

			<div class="col-xs-9">

			<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
				
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
			
				<div class="carousel-inner">
				
					<div class="item active"> 
						<img src="http://www.blueb.co.kr/SRC2/_image/w01.jpg" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Slide 1</h1>
								<p>텍스트 1</p>
							</div>
						</div>
					</div>
					<!--//item-->
			
					<div class="item"> 
						<img src="http://www.blueb.co.kr/SRC2/_image/w02.jpg" data-src="" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Slide 2</h1>
								<p>텍스트 2</p>
							</div>
						</div>
					</div>
					<!--//item-->
					
					<div class="item"> 
						<img src="http://www.blueb.co.kr/SRC2/_image/w03.jpg" data-src="" alt="Third slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Slide 3</h1>
								<p>텍스트 3</p>
							</div>
						</div>
					</div>
					<!--//item-->
					
				</div>
				<!-- //carousel-inner -->
				
				<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
				<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
			</div>
			<!-- //slide -->
	

			<div class="show-grid">
				<div class="mile_shop">
					<ul>		
						<li>
							<a href="shop_view.jsp">
							<img src="/CFC_mile/img/mileage/img_01.jpg" alt="상품1" />
							<p>MERCURY 캐리어[그레이]<br /><span>M 75,000</span></p>
							</a>
						</li>
					
						<li>
							<a href="#">
							<img src="/CFC_mile/img/mileage/img_02.jpg" alt="상품1" />
							<p>MERCURY 캐리어[그레이]<br /><span>M 75,000</span></p>
							</a>
						</li>
					
						<li>
							<a href="#">
							<img src="/CFC_mile/img/mileage/img_03.jpg" alt="상품1" />
							<p>MERCURY 캐리어[그레이]<br /><span>M 75,000</span></p>
							</a>
						</li>
					
						<li>
							<a href="#">
							<img src="/CFC_mile/img/mileage/img_04.jpg" alt="상품1" />
							<p>MERCURY 캐리어[그레이]<br /><span>M 75,000</span></p>
							</a>
						</li>
					
						<li>
							<a href="#">
							<img src="/CFC_mile/img/mileage/img_05.jpg" alt="상품1" />
							<p>MERCURY 캐리어[그레이]<br /><span>M 75,000</span></p>
							</a>
						</li>
					
						<li>
							<a href="#">
							<img src="/CFC_mile/img/mileage/img_06.jpg" alt="상품1" />
							<p>MERCURY 캐리어[그레이]<br /><span>M 75,000</span></p>
							</a>
						</li>
					
						<li>
							<a href="#">
							<img src="/CFC_mile/img/mileage/img_01.jpg" alt="상품1" />
							<p>MERCURY 캐리어[그레이]<br /><span>M 75,000</span></p>
							</a>
						</li>
					
						<li>
							<a href="#">
							<img src="/CFC_mile/img/mileage/img_02.jpg" alt="상품1" />
							<p>MERCURY 캐리어[그레이]<br /><span>M 75,000</span></p>
							</a>
						</li>
					</ul>
				</div>
				<!-- //mile_shop -->
				</div>
				
			</div>	
			<!-- //col-xs-9 -->
		</div>
		<!-- //row -->

	</div>
	<!-- //container -->

<%@ include file="../inc/footer.jsp"%>