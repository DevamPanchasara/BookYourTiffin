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



				
			</div>
		</div>
		<div class="content">
			

			<!--Category slider Start-->
			<div class="top-cate">
				<h2>Quick Searches by day</h2>
				<div class="featured-pro container">
					<div class="row">
						<div class="slider-items-products">
							<div id="top-categories"
								class="product-flexslider hidden-buttons">
								<div class="slider-items slider-width-col4 products-grid"
									style="margin-left: 16%;">

									<!-- SUNDAY -->
									<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

									<div class="item" onclick="searchTiffinMenu()">
										<a
											href="viewDaysMenu?id=${meal.id}&vendorid=${vendor.id}&day=sunday"><div
												class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_1.png">
												<div class="pro-info">Sunday</div>
											</div></a>
									</div>

									<div class="item" onclick="searchTiffinMenu()">
										<a
											href="viewDaysMenu?id=${meal.id}&vendorid=${vendor.id}&day=monday"><div
												class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_2.png">
												<div class="pro-info">Monday</div>
											</div></a>
									</div>

									<div class="item" onclick="searchTiffinMenu()">
										<a
											href="viewDaysMenu?id=${meal.id}&vendorid=${vendor.id}&day=tuesday"><div
												class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_3.png">
												<div class="pro-info">Tuesday</div>
											</div></a>
									</div>


									<div class="item" onclick="searchTiffinMenu()">
										<a
											href="viewDaysMenu?id=${meal.id}&vendorid=${vendor.id}&day=wednesday"><div
												class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_4.png">
												<div class="pro-info">Wednesday</div>
											</div></a>
									</div>

									<div class="item" onclick="searchTiffinMenu()">
										<a
											href="viewDaysMenu?id=${meal.id}&vendorid=${vendor.id}&day=thursday"><div
												class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_5.png">
												<div class="pro-info">Thursday</div>
											</div></a>
									</div>

									<div class="item" onclick="searchTiffinMenu()">
										<a
											href="viewDaysMenu?id=${meal.id}&vendorid=${vendor.id}&day=friday"><div
												class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_6.png">
												<div class="pro-info">Friday</div>
											</div></a>
									</div>

									<div class="item" onclick="searchTiffinMenu()">
										<a
											href="viewDaysMenu?id=${meal.id}&vendorid=${vendor.id}&day=saturday"><div
												class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_7.png">
												<div class="pro-info">Saturday</div>
											</div></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<!-- best Pro Slider -->
		<section class="best-pro">
			<div class="slider-items-products container">
				<div class="new_title">
					 <a href="viewVendorDetails?id=${vendor.id}"><h2>${vendor.fullName}€Ž : <%String day =  request.getParameter("day") != null ? request.getParameter("day") : "sunday" ;out.print(day);%>-${meal.mealType}</h2></a> :  
				</div>
				<div id="best-rest" class="product-flexslider hidden-buttons">
					<div class="slider-items slider-width-col4 products-grid">


						<c:forEach items="${dishList }" var="i">

							<div class="item">
								<div class="item-inner">
									<div class="item-img" style="padding: 13px;">
										<div class="item-img-info">
											<a href="#"
												title="${i.dishName }" class="product-image"><img
												src="<%=request.getContextPath()%>/documents/dishDetails/${i.dishfileName }"
												alt="sample dish"></a>

										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-content">
												<div class="dishes">
													<span> ${i.dishName } </span>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

						</c:forEach>



						<!-- End Item -->
					</div>
				</div>
			</div>
		</section>

		<!-- Home Lastest Blog Block -->
		<div class="latest-blog">
			<div class="container"></div>
			<!--container-->
		</div>

		<!-- Logo Brand Block -->

	</div>

	<!-- For version 1,2,3,4,6 -->




	<jsp:include page="footer.jsp"></jsp:include>






	</div>
	<!--page-->
	<!-- Mobile Menu-->
	

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
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/tiffin.js"></script>
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
