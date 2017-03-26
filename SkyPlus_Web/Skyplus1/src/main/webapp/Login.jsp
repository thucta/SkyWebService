<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="UTF-8">
<title>SkyPlus with Love</title>
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
	
 <!-- Include Fontawesome Min Css -->
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">
   <!-- Include Bootstrap Css -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">  
<link rel="stylesheet" href="assets/css/login.css">
<link rel="stylesheet" href="assets/css/bootstrap-social.css">
</head>
<body>
<div class="form">
		<ul class="tab-group">
			<li class="tab "><a href="#signup">Sign Up</a></li>
			<li class="tab active"><a href="#login">Log In</a></li>
		</ul>
		<div class="tab-content">
		<div id="login">
				<h1>Welcome to SkyPlus!</h1>
				<form action="/" method="post">
					<div class="field-wrap">
						<label> Email Address<span class="req">*</span>
						</label> <input type="email" required autocomplete="off" />
					</div>
					<div class="field-wrap">
						<label> Password<span class="req">*</span>
						</label> <input type="password" required autocomplete="off" />
					</div>
					<p class="forgot">
						<a href="#">Forgot Password?</a>
					</p>
					<hr>
					<a class="btn btn-social-icon btn-twitter"> <span class="fa fa-twitter"></span></a>
					<a class="btn btn-social-icon btn-facebook"> <span class="fa fa-facebook"></span></a>
					<a class="btn btn-social-icon btn-google"> <span class="fa fa-google"></span></a>
					<a class="btn btn-social-icon btn-yahoo"> <span class="fa fa-yahoo"></span></a>
					<a class="btn btn-social-icon btn-tumblr"> <span class="fa fa-tumblr"></span></a>
					<a class="btn btn-social-icon btn-github"> <span class="fa fa-github"></span></a>
					<a class="btn btn-social-icon btn-flickr"> <span class="fa fa-flickr"></span></a>
					<a class="btn btn-social-icon btn-instagram"> <span class="fa fa-instagram"></span></a>
					<a class="btn btn-social-icon btn-linkedin"> <span class="fa fa-linkedin"></span></a>
					<a class="btn btn-social-icon btn-dropbox"> <span class="fa fa-dropbox"></span></a>
					<a class="btn btn-social-icon btn-openid"> <span class="fa fa-openid"></span></a>
					<a class="btn btn-social-icon btn-adn"> <span class="fa fa-adn"></span></a>
					<a class="btn btn-social-icon btn-reddit"> <span class="fa fa-reddit"></span></a>
					<a class="btn btn-social-icon btn-vk"> <span class="fa fa-vk"></span></a>
					<hr>
					<button class="button button-block" />
					Log In
					</button>
				</form>
			</div>
			<div id="signup">
				<h1>Welcome to SkyPlus!</h1>
				<form action="/" method="post">
					<div class="top-row">
						<div class="field-wrap">
							<label> First Name<span class="req">*</span>
							</label> <input type="text" required autocomplete="off" />
						</div>
						<div class="field-wrap">
							<label> Last Name<span class="req">*</span>
							</label> <input type="text" required autocomplete="off" />
						</div>
					</div>
					<div class="field-wrap">
						<label> Email Address<span class="req">*</span>
						</label> <input type="email" required autocomplete="off" />
					</div>
					<div class="field-wrap">
						<label> Set A Password<span class="req">*</span>
						</label> <input type="password" required autocomplete="off" />
					</div>
					<button type="submit" class="button button-block" />
					Get Started
					</button>
				</form>
			</div>			
		</div>
		<!-- tab-content -->
	</div>
	<!-- /form -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="assets/js/login.js"></script>
</body>
</html>