<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Your Tiffin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="robots" content="*">
<link rel="icon" href="#" type="image/x-icon">
<link rel="shortcut icon" href="#" type="image/x-icon">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/font-awesome.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/revslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/owl.theme.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/style.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/responsive.css"
	media="all">
<link
	href="<%=request.getContextPath()%>/userResources/css/css1.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/userResources/css/css2.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/userResources/css/css3.css"
	rel='stylesheet' type='text/css'>
<link
	href="<%=request.getContextPath()%>/userResources/css/css4.css"
	rel="stylesheet">
</head>
<body class="home-page">
	<div id="preloader"></div>
	<div id="page">
		<div class="top-section">
			<div class="container">



				<jsp:include page="header.jsp"></jsp:include>



				<!--container-->
				<div class="container">
					<div class="col-lg-6 padd-right-0">
						<div class="rslides_container">
							<ul class="rslides centered-btns centered-btns1" id="slider1"
								style="max-width: 800px;">
								<li id="centered-btns1_s0"><img
									src="<%=request.getContextPath()%>/userResources/images/slide-img3.png"
									alt="">
									<div class="caption">Cranberry Recipes</div></li>
								<li id="centered-btns1_s1"><img
									src="<%=request.getContextPath()%>/userResources/images/slide-img2.png"
									alt="">
									<div class="caption">Roasted Potatoes</div></li>
								<li id="centered-btns1_s2"><img
									src="<%=request.getContextPath()%>/userResources/images/slide-img1.png"
									alt="">
									<div class="caption">Vegetarian Pasta</div></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="tagline">
							<h1>
								Book Your Tiffin<br> Simply Delicious.
							</h1>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			

		</div>



<%-- 
		<jsp:include page="footer.jsp"></jsp:include>
 --%>





	</div>
	<!--page-->


	<!-- JavaScript -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery-3.4.1.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/common.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.bxslider.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.mobile-menu.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/responsiveslides.min.js"></script>
	<script>
		jQuery(function() {
			// Slideshow 1
			jQuery(".rslides").responsiveSlides({
				auto : false,
				pager : true,
				nav : true,
				speed : 500,
				maxwidth : 800,
				namespace : "centered-btns"
			});

		});
	</script>

	<script>
		jQuery(document).ready(function() {
			// site preloader -- also uncomment the div in the header and the css style for #preloader
			jQuery('#preloader').fadeOut('slow', function() {
				$(this).remove();
			});
		});
	</script>
</body>
</html>
