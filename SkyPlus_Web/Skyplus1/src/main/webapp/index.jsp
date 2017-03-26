<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang=""> 
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SkyPlus-With love</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="apple-touch-icon" href="apple-touch-icon.png">
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
  <!-- Include Bootstrap social Css -->
  <link rel="stylesheet" href="assets/css/bootstrap-social.css">
  <!-- Include Modernizer Js -->
  <script src="assets/js/modernizr-2.8.3-respond-1.4.2.min.js"></script>

</head>
<body>

  <header id="masthead" class="masthead navbar navbar-default navbar-fixed-top">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">
          <i class="fa fa-bars"></i>
        </button>
        <a class="navbar-brand" href="./"><img src="images/sky++.PNG" alt="Site Logo"></a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <nav id="main-menu" class="collapse navbar-collapse pull-right">
        <ul class="nav navbar-nav">
          <li class="active"><a href="index.html#main-slider">Home</a></li>
           <li><a href="SearchHotel.html">Hotel</a></li>
           <li><a href="SearchRestaurant.html">Restaurant</a></li>     
          <li><a href="index.html#contact">Contact us</a></li>
          <li><a href="Login.html">Login</a></li>
        </ul>
      </nav><!-- /.navbar-collapse -->
    </div><!-- /.container -->
  </header><!-- /#masthead -->

  <!-- Header Section -->
  <!--Test popup  -->

<div data-role="dialog" id="dialog-ajax" class="padding20"
    data-close-button="true"
    data-href="Login.html"
    data-width="600"></div>
    
    <!-- Test popup -->
    
  <!-- Main Slider -->

  <section id="main-slider" class="main-slider text-center">
    <div class="head-overlay">
      <ul class="bxslider">
        <li>           
          <div class="head-overlay">
            <img src="images/slider/1.jpg"/>          
          </div><!-- /.head-overlay -->
          
          <div class="slider-text">
            <div class="slide-inner">
              <h2 class="slider-title" data-animation="wow animated bounceInDown">Welcome to <span>SkyPlus</span></h2>
              <p class="slide-description">SkyPlus is a website with hotels and restaurants's imforamtion</p>
              <div class="slide-btn-container">
                <a class="btn" href="#main-slider"> More Detail</a>
              </div><!-- /.slide-btn-container -->
            </div><!-- /.slide-inner -->
          </div><!-- /.slider-text -->
         </li>
      <!--   <%//for <service%> -->
     	  <li>
          <div class="head-overlay">
            <img src="images/slider/3.jpg"/>
          </div><!-- /.head-overlay -->
          <div class="slider-text">
            <div class="slide-inner">
              <h2 class="slider-title">Premium <span>WordPress</span> Theme</h2>
              <p class="slide-description">POLMO is a Premium Wordpress html5 Template with clean, modern and unique styles</p>
              <div class="slide-btn-container">
                <a class="btn" href="http://jeweltheme.com/product/polmo/">More Detail</a>
              </div><!-- /.slide-btn-container -->
            </div><!-- /.slide-inner -->
          </div><!-- /.slider-text -->
        </li>        
        
        <!-- <%//end for%>  -->  
      </ul>
    </div>
    <!-- /.head-overlay -->
       
    <!-- Top looking for -->
  

  <!-- Main Slider -->


  <div class="clearfix"></div><!-- /.clearfix -->


<!-- Restaurant Section -->


<!-- Restaurant Section -->
  <!-- Partner Section -->

  <section id="place" class="portfolio text-center">
    <div class="portfolio-bottom">
      <div class="section-padding">
        <div class="section-top wow animated fadeInUp" data-wow-delay=".5s">
          <h2 class="section-title"><span>Wanna</span> Stay and Eat</h2><!-- /.section-title -->
        <!--   <p class="section-description">
          </p>/.section-description -->
        </div><!-- /.section-top -->

        <div class="latest-projects wow animated fadeInUp" data-wow-delay=".5s">
          <div class="itemFilter">
            <a href="#" data-filter="" class="current">All</a>
            <a href="#" data-filter=".cat-1">Hotels</a>
            <a href="#" data-filter=".cat-2">Restaurants</a>
            <a href="#" data-filter=".cat-4">Discounts</a>
          </div> <!-- /.itemFilter -->

          <div id="project-items" class="project-items">
            <div class="item cat-1 cat-4">
              <a href="single-post.html" class="image-popup-vertical-fit">
                <img src="images/project/1.jpg" data-at2x="images/project/1@2x.jpg" alt="Item Image">
              </a>
              <div class="item-details">
                <h3 class="project-title">WordPress App Dev</h3>
                <span class="category">WordPress</span>
              </div><!-- /.item-details -->
            </div><!-- /.item -->

            <div class="item cat-2 cat-3">
              <a href="images/project/2.jpg" class="image-popup-vertical-fit">
                <img src="images/project/2.jpg" data-at2x="images/project/2@2x.jpg" alt="Item Image">
              </a>
              <div class="item-details">
                <h3 class="project-title">Joomla Template Design</h3>
                <span class="category">Joomla</span>
              </div><!-- /.item-details -->
            </div><!-- /.item -->

            <div class="item cat-1 cat-3">
              <a href="images/project/3.jpg" class="image-popup-vertical-fit">
                <img src="images/project/3.jpg" data-at2x="images/project/3@2x.jpg" alt="Item Image">
              </a>
              <div class="item-details">
                <h3 class="project-title">HTML5 Tmplate Design</h3>
                <span class="category">HTML5</span>
              </div><!-- /.item-details -->
            </div><!-- /.item -->

            <div class="item cat-2 cat-4">
              <a href="images/project/4.jpg" class="image-popup-vertical-fit">
                <img src="images/project/4.jpg" data-at2x="images/project/4@2x.jpg" alt="Item Image">
              </a>
              <div class="item-details">
                <h3 class="project-title">CSS3 Animation</h3>
                <span class="category">CSS3</span>
              </div><!-- /.item-details -->
            </div><!-- /.item -->

            <div class="item cat-1 cat-3">
              <a href="images/project/5.jpg" class="image-popup-vertical-fit">
                <img src="images/project/5.jpg" data-at2x="images/project/5@2x.jpg" alt="Item Image">
              </a>
              <div class="item-details">
                <h3 class="project-title">WordPress Theme Dev</h3>
                <span class="category">WordPress</span>
              </div><!-- /.item-details -->
            </div><!-- /.item -->

            <div class="item cat-2 cat-4">
              <a href="images/project/6.jpg" class="image-popup-vertical-fit">
                <img src="images/project/6.jpg" data-at2x="images/project/6@2x.jpg" alt="Item Image">
              </a>
              <div class="item-details">
                <h3 class="project-title">Web Designing</h3>
                <span class="category">Design</span>
              </div><!-- /.item-details -->
            </div><!-- /.item -->

            <div class="item cat-1 cat-2">
              <a href="images/project/7.jpg" class="image-popup-vertical-fit">
                <img src="images/project/7.jpg" data-at2x="images/project/7@2x.jpg" alt="Item Image">
              </a>
              <div class="item-details">
                <h3 class="project-title">App Developing</h3>
                <span class="category">Developing</span>
              </div><!-- /.item-details -->
            </div><!-- /.item -->

            <div class="item cat-3 cat-4">
              <a href="images/project/8.jpg" class="image-popup-vertical-fit">
                <img src="images/project/8.jpg" data-at2x="images/project/8@2x.jpg" alt="Item Image">
              </a>
              <div class="item-details">
                <h3 class="project-title">HTML5 Project</h3>
                <span class="category">HTMl5</span>
              </div><!-- /.item-details -->
            </div><!-- /.item --> 

          </div><!-- /#project-items -->
        </div><!-- /.latest-projects -->
      </div><!-- /.section-padding -->
    </div><!-- /.portfolio-bottom -->
  </section>

  <!-- Partner Section -->
  
  <!-- Contact Section -->

  <section id="contact" class="contact">
    <div class="contact-inner">
      <div id="google-map" class="google-map">
        <div id="googleMaps" class="google-map-container"></div>
      </div><!-- /#google-map -->

      <div class="form-area text-center wow animated fadeInRight" data-wow-delay=".75s">
        <h2 class="section-title"><span>Contact</span> With Us</h2><!-- /.section-title -->
        <form action="email.php" method="post" id="contactform" class="contactform">
          <input id="name" class="form-control" name="name" type="text" placeholder="Name" value="" required>
          <input id="email" class="form-control pull-right" name="email" type="email" placeholder="Email" value="" required>
          <textarea id="message" class="form-control" name="message" placeholder="Your Message" rows="5" required></textarea>
          <button name="submit" class="btn submit-btn" type="submit" id="submit">Send Message</button>
        </form><!-- /#contactform -->
      </div><!-- /.form-area -->
    </div><!-- /.contact-inner -->
  </section>

  <!-- Contact Section -->




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
          &copy; <a href="#" target="_blank">Sky++</a> 2017 - All Reserves. Developed by <a href="#" target="_blank">Sky++</a>. Designed by 5 young guys
        </div>
      </div>
    </div>
  </footer>

  <!-- Footer Section -->



  <div id="scroll-to-top" class="scroll-to-top">
    <span>
      <i class="fa fa-chevron-up"></i>    
    </span>
  </div><!-- /#scroll-to-top -->




  <!-- Include jQuery Js -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- Include jQuery Js -->
  <script>window.jQuery || document.write('<script src="assets/js/jquery-1.11.2.min.js"><\/script>')</script>
  <!-- Include WOW Min Js -->
  <script src="assets/js/wow.min.js"></script>
  <!-- Google Maps Script -->
  <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <!-- Gmap3.js For Static Maps -->
  <script src="assets/js/gmap3.js"></script>
  <!-- Include Waypoint Js -->
  <script src="//cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
  <!-- Include Ajax MailChimp Js -->
  <script src="assets/js/jquery.ajaxchimp.min.js"></script>
    <!-- Include Custom Js </-->
  <script src="assets/js/custom.min.js"></script>


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-63948535-1', 'auto');
  ga('send', 'pageview');

</script>


  <script>

    $(".bxslider").bxSlider({auto:!0,preloadImages:"all",mode:"horizontal",captions:!1,controls:!0,pause:4000,speed:1200,onSliderLoad:function(){$(".bxslider>li .slide-inner").eq(1).addClass("active-slide"),$(".slide-inner.active-slide .slider-title").addClass("wow animated bounceInDown"),$(".slide-inner.active-slide .slide-description").addClass("wow animated bounceInRight"),$(".slide-inner.active-slide .btn").addClass("wow animated zoomInUp")},onSlideAfter:function(e,i,n){console.log(n),$(".active-slide").removeClass("active-slide"),$(".bxslider>li .slide-inner").eq(n+1).addClass("active-slide"),$(".slide-inner.active-slide").addClass("wow animated bounceInRight")},onSlideBefore:function(){$(".slide-inner.active-slide").removeClass("wow animated bounceInRight"),$(".one.slide-inner.active-slide").removeAttr("style")}}),$(document).ready(function(){function e(){return"ontouchstart"in document.documentElement}function i(){if("undefined"!=typeof google){var i={center:[-37.817331,144.955652],zoom:15,mapTypeControl:!0,mapTypeControlOptions:{style:google.maps.MapTypeControlStyle.DROPDOWN_MENU},navigationControl:!0,scrollwheel:!1,streetViewControl:!0};e()&&(i.draggable=!1),$("#googleMaps").gmap3({map:{options:i},marker:{latLng:[23.709921,90.407143],options:{icon:"images/mapicon.png"}}})}}$("#masthead #main-menu").onePageNav(),i()}),$("#contactform").on("submit",function(e){e.preventDefault(),$this=$(this),$.ajax({type:"POST",url:$this.attr("action"),data:$this.serialize(),success:function(){alert("Message Sent Successfully")}})});

  </script>
</body>
</html>
