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
        <nav class="rd-navbar rd-navbar-modern" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
          data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static"
          data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static"
          data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static"
          data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="56px" data-xl-stick-up-offset="56px"
          data-xxl-stick-up-offset="56px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
          <div class="rd-navbar-inner-outer">
            <div class="rd-navbar-inner">
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-panel">
                <!-- RD Navbar Toggle-->
                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                <!-- RD Navbar Brand-->
                <div class="rd-navbar-brand"><a class="brand" href="mainWeb"><img class="brand-logo-dark"
                      src="resources/images/2.jpg" alt="" width="198" height="66" /></a></div>
              </div>
              <div class="rd-navbar-right rd-navbar-nav-wrap">
                <div class="rd-navbar-aside">
                  <ul class="rd-navbar-contacts-2">
                    <li>
                      <div class="unit unit-spacing-xs">
                        <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                        <div class="unit-body"><a class="phone" href="tel:#">010-0000-0000</a></div>
                      </div>
                    </li>
                    <li>
                      <div class="unit unit-spacing-xs">
                        <div class="unit-left"><span class="icon mdi mdi-map-marker"></span></div>
                        <div class="unit-body"><a class="address" href="#">2021 소프트웨어공학 프로젝트</a>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
                <div class="rd-navbar-main">
                  <!-- RD Navbar Nav-->
                  <ul class="rd-navbar-nav">
                    <li class="rd-nav-item"><a class="rd-nav-link" href="reservation">Reservation</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="reservationCheck">Reservation Check</a>
                    </li>
                    <li class="rd-nav-item active"><a class="rd-nav-link" href="walkIn">Walk In</a> 
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="login">Login</a>
                    </li>    
                    <li class="rd-nav-item"><a class="rd-nav-link" href="signIn">SignIn</a>  
                    </li>
                  </ul>
                </div>
              </div>
          </div>
        </nav>
      </div>
    </header>

    <!-- Tell-->
    <section class="section section-sm section-first bg-default">
      <div class="container">
        <h3 class="heading-3">Walk in your Table</h3>
        <%--************************************************************************************************************* --%>
				<form class="rd-form form-style-1"
					method="post" action="RPopUp_walkIn">
          <div class="row row-20 gutters-20">
            <div class="col-md-6 col-lg-4 oh-desktop">
              <div class="form-wrap wow slideInUp">
                <input class="form-input" id="time" type="time" name="time"
                  data-constraints="@Required">
                <label class="form-label" for="time"></label>
              </div>
            </div>
            <div class="col-lg-4 oh-desktop">
              <div class="form-wrap wow slideInDown">
                <!--Select 2-->
                <select class="form-input" data-minimum-results-for-search="Infinity" data-constraints="@Required">
                  <option value="#">covers</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="4">5</option>
                  <option value="4">6</option>
                  <option value="4">7</option>
                  <option value="4">8</option>
                </select>
              </div>
            </div>
          </div>
          <br><br>
          <fieldset>
            <legend class="heading-3" style="text-align: center; left:20px;">choose table</legend>
            <div style="width: 830px; margin:0 auto;">
              <input type="checkbox" id="check_button1" name="check_button1">
              <label for="check_button1">1</label>
              <input type="checkbox" id="check_button2" name="check_button2" >
              <label for="check_button2">2</label>
              <input type="checkbox" id="check_button3" name="check_button3">
              <label for="check_button3">3</label>
              <input type="checkbox" id="check_button4" name="check_button4">
              <label for="check_button4">4</label>
              <br>
              <input type="checkbox" id="check_button5" name="check_button5">
              <label for="check_button5">5</label>
              <input type="checkbox" id="check_button6" name="check_button6">
              <label for="check_button6">6</label>
              <input type="checkbox" id="check_button7" name="check_button7">
              <label for="check_button7">7</label>
              <input type="checkbox" id="check_button8" name="check_button8">
              <label for="check_button8">8</label>
            </div>
          </fieldset>
            <input class="button button-lg button-primary button-winona wow fadeInRight" type="submit" value="Walk in"/>
        </form>
        <%--************************************************************************************************************* --%>
      </div>
    </section>
        <!-- Page Footer-->
    <footer class="section footer-modern context-dark footer-modern-2">
      <div class="footer-modern-line">
        <div class="container">
          <div class="row row-50">
            <div class="col-md-6 col-lg-4">
              <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">What We
                  Offer</span></h5>
              <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                <li><a href="#">Pizzas</a></li>
                <li><a href="#">Burgers</a></li>
                <li><a href="#">Salads</a></li>
                <li><a href="#">Drinks</a></li>
                <li><a href="#">Seafood</a></li>
                <li><a href="#">Drinks</a></li>
              </ul>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-3">
              <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">Information</span>
              </h5>
              <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                <li><a href="#">About us</a></li>
                <li><a href="#">Latest News</a></li>
                <li><a href="#">Our Menu</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
            <div class="col-lg-4 col-xl-5">
              <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">Newsletter</span>
              </h5>
              <p class="wow fadeInRight">Sign up today for the latest news and updates.</p>
              <!-- RD Mailform-->
              <form class="rd-form rd-mailform rd-form-inline rd-form-inline-sm oh-desktop"
                data-form-output="form-output-global" data-form-type="subscribe" method="post"
                action="bat/rd-mailform.php">
                <div class="form-wrap wow slideInUp">
                  <input class="form-input" id="subscribe-form-2-email" type="email" name="email"
                    data-constraints="@Email @Required" />
                  <label class="form-label" for="subscribe-form-2-email">Enter your E-mail</label>
                </div>
                <div class="form-button form-button-2 wow slideInRight">
                  <button class="button button-sm button-icon-3 button-primary button-winona" type="submit"><span
                      class="d-none d-xl-inline-block">Subscribe</span><span
                      class="icon mdi mdi-telegram d-xl-none"></span></button>
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
                <div class="col-md-7 col-xl-6"><a class="brand" href="mainWeb"><img
                      src="resources/images/2.jpg" alt="" width="198" height="66" /></a></div>
                <div class="col-md-5 col-xl-6">
                  <div class="iso-1"><span><img src="resources/images/like-icon-58x25.png" alt="" width="58"
                        height="25" /></span><span class="iso-1-big">9.4k</span></div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-12 col-lg-8 col-xl-8 oh-desktop">
              <div class="group-xmd group-sm-justify">
                <div class="footer-modern-contacts wow slideInUp">
                  <div class="unit unit-spacing-sm align-items-center">
                    <div class="unit-left"><span class="icon icon-24 mdi mdi-phone"></span></div>
                    <div class="unit-body"><a class="phone" href="tel:#">+1 718-999-3939</a></div>
                  </div>
                </div>
                <div class="footer-modern-contacts wow slideInDown">
                  <div class="unit unit-spacing-sm align-items-center">
                    <div class="unit-left"><span class="icon mdi mdi-email"></span></div>
                    <div class="unit-body"><a class="mail" href="mailto:#">info@demolink.org</a></div>
                  </div>
                </div>
                <div class="wow slideInRight">
                  <ul class="list-inline footer-social-list footer-social-list-2 footer-social-list-3">
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