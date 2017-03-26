<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
   
    <link rel='shortcut icon' type='image/x-icon' href='../favicon.ico' />
<title>SkyPlus-With love</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Include Bootstrap Css -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!-- Include Bootstrap Min Css -->
<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">
<!-- Include Animate Min Css -->
<link rel="stylesheet" href="assets/css/animate.min.css">
<!-- Include Fontawesome Min Css -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<!-- Include Magnific PopUp Css -->
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!-- bxSlider CSS file -->
<link href="assets/css/jquery.bxslider.css" rel="stylesheet" />
<!-- Include Style Css -->
<link rel="stylesheet" href="assets/css/style.css">
<!-- Include Responsive Css -->
<link rel="stylesheet" href="assets/css/responsive.min.css">
<!-- Include Login Css -->
<!-- <link rel="stylesheet" href="assets/css/login.css"> -->
<!-- Include Bootstrap social Css -->
<link rel="stylesheet" href="assets/css/bootstrap-social.css">
<!-- Include Modernizer Js -->
<script src="assets/js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
   
    <link href="assets/css/metro.css" rel="stylesheet">
    <link href="assets/css/metro-icons.css" rel="stylesheet">
    <link href="assets/css/metro-responsive.css" rel="stylesheet">

    <script src="assets/js/jquery-2.1.3.min.js"></script>
    <script src="assets/js/jquery.dataTables.min.js"></script>

    <script src="assets/js/metro.js"></script>

    <style>
        html, body {
            height: 100%;
            width: 100%
        }
        .page-content {
            padding-top: 3.125rem;
            min-height: 100%;
            height: 100%;
        }
        .table .input-control.checkbox {
            line-height: 1;
            min-height: 0;
            height: auto;
        }

        @media screen and (max-width: 800px){
            #cell-sidebar {
                flex-basis: 52px;
            }
            #cell-content {
                flex-basis: calc(100% - 52px);
            }
        }
    </style>
</head>
<body>

  <header id="masthead" class="masthead navbar navbar-default navbar-fixed-top">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">
          <i class="fa fa-bars"></i>
        </button>
        <a class="navbar-brand" href="./"><img src="images/sky++.png" alt="Site Logo"></a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <nav id="main-menu" class="collapse navbar-collapse pull-right">
        <ul class="nav navbar-nav">
          <li class="active"><a href="index.html#main-slider">Home</a></li>
           <li><a href="Hotel.html">Hotel</a></li>
           <li><a href="Restaurant.html">Restaurant</a></li>         
          <li><a href="index.html#contact">Contact us</a></li>
          <li><a href="Profileuser.html">User</a></li>
        </ul>
      </nav><!-- /.navbar-collapse -->
    </div><!-- /.container -->
  </header><!-- /#masthead -->
<!-- Page Head -->

	<section id="page-head" class="page-head text-center"
		data-stellar-background-ratio="0.1" data-stellar-vertical-offset="0">
		<div class="head-overlay">
			<div class="section-padding">
				<div class="container">
					<div class="head-overlay">
					</div>
					<!-- /.head-overlay -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /.section-padding -->
		</div>
		<!-- /.head-overlay -->
	</section>
	<!-- /#page-head -->




	<section id="main-content" class="main-content">

    <div class="page-content container row">
        <div class="flex-grid no-responsive-future" style="height: 100%;">
            <div class="row" style="height: 100%">
                
                <div class="cell auto-size padding20 bg-white" id="cell-content">
                    <h1 class="text-light">History of Booking</h1>
                    <hr class="thin bg-grayLighter">
                    <table class="dataTable border bordered" data-auto-width="false">
                        <thead>
                        <tr>
                        	<td class="sortable-column">NO</td>
                            <td class="sortable-column">Hotel's name</td>
                            <td class="sortable-column">Address</td>
                            <td class="sortable-column" style="width: 20px">Status</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                        	<td>1</td>
                            <td><a href="SingleHotel.html">Hotel number 1</a></td>
                            <td>dia chi</td>
                            <td class="align-center"></td>
                        </tr>
                        <tr> 
                           <tr>
                           <td>2</td>
                            <td><a href="SingleHotel.html">Hotel number 2</a></td>
                            <td>dia chi</td>
                            <td class="align-center"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
	</section>
	<!-- /#main-content -->
    

	<!-- Footer Section -->

	<footer id="colophon" class="footer site-footer" role="contentinfo">
		<div class="footer-bottom">
			<div class="container">
				<div class="footer-menu pull-left">
					<div class="widget widget_menu">
						<nav class="widget-menu">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#">Sky4++</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="copy-right pull-right">
					&copy; <a href="#" target="_blank">Sky++</a> 2017 - All Reserves.
					Developed by <a href="#" target="_blank">Sky++</a>. Designed by 5
					young guys
				</div>
			</div>
		</div>
	</footer>

	<!-- Footer Section -->



	<div id="scroll-to-top" class="scroll-to-top">
		<span> <i class="fa fa-chevron-up"></i>
		</span>
	</div>
	<!-- /#scroll-to-top -->
    
</body>
</html>