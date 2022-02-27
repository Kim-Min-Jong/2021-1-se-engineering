<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="ko">

<head>
<title>Home</title>
<meta name="format-detection" content="telephone=no">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<link rel="icon" href="resources/images/favicon.ico" type="image/x-icon">
<!-- Stylesheets-->
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,600,700,900%7CRaleway:500">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/fonts.css">
<link rel="stylesheet" href="resources/css/style.css">
<!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
</head>

<body>
	<%
	String id = (String) session.getAttribute("id");
	String mode = (String) session.getAttribute("mode");
	
	%>
	<div class="preloader">
		<div class="wrapper-triangle">
			<div class="pen">
				<div class="line-triangle">
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
				</div>
				<div class="line-triangle">
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
				</div>
				<div class="line-triangle">
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
					<div class="triangle"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="page">
		<!-- Page Header-->
		<header class="section page-header">
			<!-- RD Navbar-->
			<div class="rd-navbar-wrap">
				<nav class="rd-navbar rd-navbar-modern"
					data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
					data-md-layout="rd-navbar-fixed"
					data-md-device-layout="rd-navbar-fixed"
					data-lg-layout="rd-navbar-static"
					data-lg-device-layout="rd-navbar-fixed"
					data-xl-layout="rd-navbar-static"
					data-xl-device-layout="rd-navbar-static"
					data-xxl-layout="rd-navbar-static"
					data-xxl-device-layout="rd-navbar-static"
					data-lg-stick-up-offset="56px" data-xl-stick-up-offset="56px"
					data-xxl-stick-up-offset="56px" data-lg-stick-up="true"
					data-xl-stick-up="true" data-xxl-stick-up="true">
					<div class="rd-navbar-inner-outer">
						<div class="rd-navbar-inner">
							<!-- RD Navbar Panel-->
							<div class="rd-navbar-panel">
								<!-- RD Navbar Toggle-->
								<button class="rd-navbar-toggle"
									data-rd-navbar-toggle=".rd-navbar-nav-wrap">
									<span></span>
								</button>
								<!-- RD Navbar Brand-->
								<div class="rd-navbar-brand">
									<a class="brand" href="mainWeb-logined"><img
										class="brand-logo-dark" src="resources/images/2.jpg" alt=""
										width="198" height="66" /></a>
								</div>
							</div>
							<div class="rd-navbar-right rd-navbar-nav-wrap">
								<div class="rd-navbar-aside">
									<ul class="rd-navbar-contacts-2">
										<li>
											<div class="unit unit-spacing-xs">
												<div class="unit-body"><%=id %>님 환영합니다! &nbsp; 접속권한:<%=mode %></div>
											</div>
										</li>
										<li>
											<div class="unit unit-spacing-xs">
												<div class="unit-left">
													<span class="icon mdi mdi-phone"></span>
												</div>
												<div class="unit-body">
													<a class="phone" href="tel:#">010-0000-0000</a>
												</div>
											</div>
										</li>
										<li>
											<div class="unit unit-spacing-xs">
												<div class="unit-left">
													<span class="icon mdi mdi-map-marker"></span>
												</div>
												<div class="unit-body">
													<a class="address" href="#">2021 소프트웨어공학 프로젝트</a>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="rd-navbar-main">
									<!-- RD Navbar Nav-->
									<ul class="rd-navbar-nav">
										<li class="rd-nav-item"><a class="rd-nav-link"
											href="reservation_loggedin">Reservation</a></li>
										<li class="rd-nav-item"><a class="rd-nav-link"
											href="reservationCheck_loggedin">Reservation Check</a></li>
										<li class="rd-nav-item"><a class="rd-nav-link"
											href="walkIn_loggedin">Walk In</a></li>
										<li class="rd-nav-item"><span class="rd-nav-link"
											href="#"></span></li>
										<li class="rd-nav-item"><a class="rd-nav-link"
											href="logout">Log Out</a></li>
									</ul>
								</div>
							</div>
						</div>
				</nav>
			</div>
		</header>

		<section
			class="section swiper-container swiper-slider swiper-slider-2 swiper-slider-3"
			data-loop="true" data-autoplay="5000" data-simulate-touch="false"
			data-slide-effect="fade">
			<div class="swiper-wrapper text-sm-left">
				<div class="swiper-slide context-dark"
					data-slide-bg="resources/images/restaurant.jpg">
					<div class="swiper-slide-caption section-md">
						<div class="container">
							<div class="row">
								<div
									class="col-sm-9 col-md-8 col-lg-7 col-xl-7 offset-lg-1 offset-xxl-0">
									<h1 class="oh swiper-title">
										<span class="d-inline-block" data-caption-animate="slideInUp"
											data-caption-delay="0">Perfect restaurants</span>
									</h1>
									<p class="big swiper-text" data-caption-animate="fadeInLeft"
										data-caption-delay="300">Experience the taste of a perfect
										restaurants!, one of the best restaurants!</p>
									<a
										class="button button-lg button-primary button-winona button-shadow-2"
										href="#" data-caption-animate="fadeInUp"
										data-caption-delay="300">View our menu</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide context-dark"
					data-slide-bg="resources/images/gredient.jpg">
					<div class="swiper-slide-caption section-md">
						<div class="container">
							<div class="row">
								<div class="col-sm-8 col-lg-7 offset-lg-1 offset-xxl-0">
									<h1 class="oh swiper-title">
										<span class="d-inline-block"
											data-caption-animate="slideInDown" data-caption-delay="0">Quality
											ingredients</span>
									</h1>
									<p class="big swiper-text" data-caption-animate="fadeInRight"
										data-caption-delay="300">We use only the best ingredients
										to make one-of-a-kind menus for our customers.</p>
									<div class="button-wrap oh">
										<a
											class="button button-lg button-primary button-winona button-shadow-2"
											href="#" data-caption-animate="slideInUp"
											data-caption-delay="0">View our menu</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Swiper Pagination-->
			<div class="swiper-pagination" data-bullet-custom="true"></div>
			<!-- Swiper Navigation-->
			<div class="swiper-button-prev">
				<div class="preview">
					<div class="preview__img"></div>
				</div>
				<div class="swiper-button-arrow"></div>
			</div>
			<div class="swiper-button-next">
				<div class="swiper-button-arrow"></div>
				<div class="preview">
					<div class="preview__img"></div>
				</div>
			</div>
		</section>
		<!-- What We Offer-->
		<section class="section section-md bg-default">
			<div class="container">
				<h3 class="oh-desktop">
					<span class="d-inline-block wow slideInDown">Our Menu</span>
				</h3>
				<div class="row row-md row-30">
					<div class="col-sm-6 col-lg-4">
						<div class="oh-desktop">
							<!-- Services Terri-->
							<article class="services-terri wow slideInUp">
								<div class="services-terri-figure">
									<img src="resources/images/salad.jpg" alt="" width="370"
										height="278" />
								</div>
								<div class="services-terri-caption">
									<span class="services-terri-icon linearicons-leaf"></span>
									<h5 class="services-terri-title">
										<a href="#">Salads</a>
									</h5>
								</div>
							</article>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4">
						<div class="oh-desktop">
							<!-- Services Terri-->
							<article class="services-terri wow slideInDown">
								<div class="services-terri-figure">
									<img src="resources/images/pizza.jpg" alt="" width="370"
										height="278" />
								</div>
								<div class="services-terri-caption">
									<span class="services-terri-icon linearicons-pizza"></span>
									<h5 class="services-terri-title">
										<a href="#">Pizzas</a>
									</h5>
								</div>
							</article>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4">
						<div class="oh-desktop">
							<!-- Services Terri-->
							<article class="services-terri wow slideInUp">
								<div class="services-terri-figure">
									<img src="resources/images/burger.jpg" alt="" width="370"
										height="278" />
								</div>
								<div class="services-terri-caption">
									<span class="services-terri-icon linearicons-hamburger"></span>
									<h5 class="services-terri-title">
										<a href="#">Burgers</a>
									</h5>
								</div>
							</article>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4">
						<div class="oh-desktop">
							<!-- Services Terri-->
							<article class="services-terri wow slideInDown">
								<div class="services-terri-figure">
									<img src="resources/images/dessert.jpg" alt="" width="370"
										height="278" />
								</div>
								<div class="services-terri-caption">
									<span class="services-terri-icon linearicons-ice-cream"></span>
									<h5 class="services-terri-title">
										<a href="#">Desserts</a>
									</h5>
								</div>
							</article>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4">
						<div class="oh-desktop">
							<!-- Services Terri-->
							<article class="services-terri wow slideInUp">
								<div class="services-terri-figure">
									<img src="resources/images/drink.jpg" alt="" width="370"
										height="278" />
								</div>
								<div class="services-terri-caption">
									<span class="services-terri-icon linearicons-coffee-cup"></span>
									<h5 class="services-terri-title">
										<a href="#">Drinks</a>
									</h5>
								</div>
							</article>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4">
						<div class="oh-desktop">
							<!-- Services Terri-->
							<article class="services-terri wow slideInDown">
								<div class="services-terri-figure">
									<img src="resources/images/seafood.jpg" alt="" width="370"
										height="278" />
								</div>
								<div class="services-terri-caption">
									<span class="services-terri-icon linearicons-steak"></span>
									<h5 class="services-terri-title">
										<a href="#">Seafood</a>
									</h5>
								</div>
							</article>
						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="section section-xl bg-default">
			<div class="container">
				<h3 class="wow fadeInLeft">What People Say</h3>
			</div>
			<div class="container container-style-1">
				<div class="owl-carousel owl-style-12" data-items="1"
					data-sm-items="2" data-lg-items="3" data-margin="30"
					data-xl-margin="45" data-autoplay="true" data-nav="true"
					data-center="true" data-smart-speed="400">
					<!-- Quote Tara-->
					<article class="quote-tara">
						<div class="quote-tara-caption">
							<div class="quote-tara-text">
								<p class="q">This restaurant is the longest lasting place in
									the city and is well run and staffed. Prices are great and
									allow me to keep coming back.</p>
							</div>
							<div class="quote-tara-figure">
								<img src="resources/images/user-6-115x115.jpg" alt=""
									width="115" height="115" />
							</div>
						</div>
						<h6 class="quote-tara-author">Ki moon</h6>
						<div class="quote-tara-status">Customer</div>
					</article>
					<!-- Quote Tara-->
					<article class="quote-tara">
						<div class="quote-tara-caption">
							<div class="quote-tara-text">
								<p class="q">I am a real food addict, and even when I’m home
									I prefer your food to all others. They taste awesome and are
									very affordable.</p>
							</div>
							<div class="quote-tara-figure">
								<img src="resources/images/user-8-115x115.jpg" alt=""
									width="115" height="115" />
							</div>
						</div>
						<h6 class="quote-tara-author">ki lyeom</h6>
						<div class="quote-tara-status">Customer</div>
					</article>
					<!-- Quote Tara-->
					<article class="quote-tara">
						<div class="quote-tara-caption">
							<div class="quote-tara-text">
								<p class="q">This restaurant has amazing pizza. Not only do
									you get served with a great attitude, you also get delicious
									foods at a great price!</p>
							</div>
							<div class="quote-tara-figure">
								<img src="resources/images/user-7-115x115.jpg" alt=""
									width="115" height="115" />
							</div>
						</div>
						<h6 class="quote-tara-author">Ju Won</h6>
						<div class="quote-tara-status">Customer</div>
					</article>
					<!-- Quote Tara-->
					<article class="quote-tara">
						<div class="quote-tara-caption">
							<div class="quote-tara-text">
								<p class="q">This restaurant has great foods. Not only do
									you get served with a great attitude and delivered delicious
									foods, you get a great price.</p>
							</div>
							<div class="quote-tara-figure">
								<img src="resources/images/user-9-115x115.jpg" alt=""
									width="115" height="115" />
							</div>
						</div>
						<h6 class="quote-tara-author">do yeon</h6>
						<div class="quote-tara-status">Customer</div>
					</article>
				</div>
			</div>
		</section>
		<!-- Page Footer-->
		<footer class="section footer-modern context-dark footer-modern-2">
			<div class="footer-modern-line">
				<div class="container">
					<div class="row row-50">
						<div class="col-md-6 col-lg-4">
							<h5 class="footer-modern-title oh-desktop">
								<span class="d-inline-block wow slideInLeft">What We
									Offer</span>
							</h5>
							<ul
								class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
								<li><a href="#">menu1</a></li>
								<li><a href="#">menu2</a></li>
								<li><a href="#">menu3</a></li>
								<li><a href="#">menu4</a></li>
								<li><a href="#">menu5</a></li>
								<li><a href="#">menu6</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-4 col-xl-3">
							<h5 class="footer-modern-title oh-desktop">
								<span class="d-inline-block wow slideInLeft">Information</span>
							</h5>
							<ul
								class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
								<li><a href="#">About us</a></li>
								<li><a href="#">Latest News</a></li>
								<li><a href="#">Our Menu</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Shop</a></li>
								<li><a href=#">Contact Us</a></li>
							</ul>
						</div>
						<div class="col-lg-4 col-xl-5">
							<h5 class="footer-modern-title oh-desktop">
								<span class="d-inline-block wow slideInLeft">Newsletter</span>
							</h5>
							<p class="wow fadeInRight">Sign up today for the latest news
								and updates.</p>
							<!-- RD Mailform-->
							<form
								class="rd-form rd-mailform rd-form-inline rd-form-inline-sm oh-desktop"
								data-form-output="form-output-global" data-form-type="subscribe"
								method="post" action="bat/rd-mailform.php">
								<div class="form-wrap wow slideInUp">
									<input class="form-input" id="subscribe-form-2-email"
										type="email" name="email" data-constraints="@Email @Required" />
									<label class="form-label" for="subscribe-form-2-email">Enter
										your E-mail</label>
								</div>
								<div class="form-button form-button-2 wow slideInRight">
									<button
										class="button button-sm button-icon-3 button-primary button-winona"
										type="submit">
										<span class="d-none d-xl-inline-block">Subscribe</span><span
											class="icon mdi mdi-telegram d-xl-none"></span>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-modern-line-2">
				<div class="container">
					<div class="row row-30 align-items-center">
						<div class="col-sm-6 col-md-7 col-lg-4 col-xl-4">
							<div class="row row-30 align-items-center text-lg-center">
								<div class="col-md-7 col-xl-6">
									<a class="brand" href="mainWeb"><img
										src="resources/images/2.jpg" alt="" width="198" height="66" /></a>
								</div>
								<div class="col-md-5 col-xl-6">
									<div class="iso-1">
										<span><img src="resources/images/like-icon-58x25.png"
											alt="" width="58" height="25" /></span><span class="iso-1-big">9.4k</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-12 col-lg-8 col-xl-8 oh-desktop">
							<div class="group-xmd group-sm-justify">
								<div class="footer-modern-contacts wow slideInUp">
									<div class="unit unit-spacing-sm align-items-center">
										<div class="unit-left">
											<span class="icon icon-24 mdi mdi-phone"></span>
										</div>
										<div class="unit-body">
											<a class="phone" href="tel:#">010-0000-0000</a>
										</div>
									</div>
								</div>
								<div class="footer-modern-contacts wow slideInDown">
									<div class="unit unit-spacing-sm align-items-center">
										<div class="unit-left">
											<span class="icon mdi mdi-email"></span>
										</div>
										<div class="unit-body">
											<a class="mail" href="mailto:#">@kyonngi.ac.kr</a>
										</div>
									</div>
								</div>
								<div class="wow slideInRight">
									<ul
										class="list-inline footer-social-list footer-social-list-2 footer-social-list-3">
										<li><a class="icon mdi mdi-facebook" href="#"></a></li>
										<li><a class="icon mdi mdi-twitter" href="#"></a></li>
										<li><a class="icon mdi mdi-instagram" href="#"></a></li>
										<li><a class="icon mdi mdi-google-plus" href="#"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<!-- Global Mailform Output-->
	<div class="snackbars" id="form-output-global"></div>
	<!-- Javascript-->
	<script src="resources/js/core.min.js"></script>
	<script src="resources/js/script.js"></script>
	<!-- coded by Himic-->
</body>

</html>