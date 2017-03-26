
<!DOCTYPE html>

<html>

<head>
<meta charset="utf-8">
<title>Nguyen Tinh</title>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="content-language" content="vi">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.love-wrap {
	width: 80%;
	margin: auto;
}

h1, button {
	text-align: center;
}

.love-content {
	width: 360px;
	margin: auto;
	position: relative;
	margin-top: 50px;
	height: 200px;
}

.love-btn {
	position: absolute;
	margin: auto;
}

.love-btn-one {
	left: 0px;
	top: 80px;
}

.love-btn-two {
	right: 0px;
	top: 80px;
}

.love-btn {
	width: 120px;
	margin: 20px;
	padding: 10px;
}

.love-you-know {
	text-align: center;
	font-size: 20px;
	color: #18a6de;
	font-weight: bold;
}

.love-you-know span {
	color: red;
}

.heart {
	background-color: red;
	display: inline-block;
	height: 30px;
	margin: 0 10px;
	position: relative;
	top: 0;
	transform: rotate(-45deg);
	width: 30px;
}

.heart:before, .heart:after {
	content: "";
	background-color: red;
	border-radius: 50%;
	height: 30px;
	position: absolute;
	width: 30px;
}

.heart:before {
	top: -15px;
	left: 0;
}

.heart:after {
	left: 15px;
	top: 0;
}

.modal-content {
	background: url(heart_of_love_201031.jpg);
	height: 300px;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.modal-header {
	border-bottom: none;
}
</style>
</head>

<body>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-62964752-2', 'auto');
		ga('send', 'pageview');
	</script>
	<!-- Modal -->
	<div class="modal fade" id="myLove" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<p class="love-you-know">
						:) <span></span>
					</p>
				</div>
			</div>

		</div>
	</div>
	<div class="love-wrap">


		<h1>

			TINH CO DEP TRAI KHONG <span class="heart"></span>
		</h1>
		<div class="love-content">
			<button class="love-btn love-btn-one btn btn-default" data-status="1">YES</button>
			<button class="love-btn love-btn-two btn btn-default" data-status="2">NO</button>
		</div>
	</div>




	<script>
		$(document)
				.ready(
						function() {
							function eventBtnLove(el, status, mobi) {
								switch (status) {
								case 1:
									if (mobi)
										setTimeout(function() {
											$("#myLove").modal()
										}, 1000);
									break;
								case 2:
									el.css("top", 0);
									el.attr("data-status", 3);
									break;
								case 3:
									el.css("top", 80);
									el.attr("data-status", 4);
									break;
								case 4:
									el.text("YES");
									el.attr("data-status", 5);
									$("button[data-status=1]").text("NO");
									$("button[data-status=1]").attr(
											"data-status", 6);
									break;
								case 5:
									if (mobi)
										setTimeout(function() {
											$("#myLove").modal()
										}, 1000);
									break;
								case 6:
									el.text("YES");
									el.attr("data-status", 1);
									$("button[data-status=5]").text("NO");
									$("button[data-status=5]").attr(
											"data-status", 2);
									break;

								}

							}
							function detectmob() {
								if (navigator.userAgent.match(/Android/i)
										|| navigator.userAgent.match(/webOS/i)
										|| navigator.userAgent.match(/iPhone/i)
										|| navigator.userAgent.match(/iPad/i)
										|| navigator.userAgent.match(/iPod/i)
										|| navigator.userAgent
												.match(/BlackBerry/i)
										|| navigator.userAgent
												.match(/Windows Phone/i)) {
									return true;
								} else {
									return false;
								}
							}
							$(".love-btn").hover(
									function() {
										eventBtnLove($(this), parseInt($(this)
												.attr("data-status")), false);
									}, function() {

									})
							$(".love-btn")
									.click(
											function() {

												if (!detectmob()) {
													if ($(this).attr(
															"data-status") == 1
															|| $(this)
																	.attr(
																			"data-status") == 5) {
														$("#myLove").modal()
													}
												} else {
													eventBtnLove(
															$(this),
															parseInt($(this)
																	.attr(
																			"data-status")),
															true);
												}

											})
						})
	</script>
</body>
</html>