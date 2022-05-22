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
									src="<%=request.getContextPath()%>/userResources/images/slide-img1.png"
									alt="">
									<div class="caption">Cranberry Recipes</div></li>
								<li id="centered-btns1_s1"><img
									src="<%=request.getContextPath()%>/userResources/images/slide-img2.png"
									alt="">
									<div class="caption">Roasted Potatoes</div></li>
								<li id="centered-btns1_s2"><img
									src="<%=request.getContextPath()%>/userResources/images/slide-img3.png"
									alt="">
									<div class="caption">Vegetarian Pasta</div></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="tagline">
							<h1>
								Healthy Food.<br> Simply Delicious.
							</h1>
							<p>Vestibulum ante ipsum primis in faucibus orci luctus et
								ultrices posuere cubilia Curae. Aenean eleifend laoreet congue.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="order-form">
				<div class="container">
					<div class="row">
						<h2>Find the best restaurants, cafes, and bars in London</h2>
						<div class="field-holder">
							<i class="icon-search"></i> <input type="text"
								name="search_title" value="" class="restaurant-input"
								placeholder="Resturant name">
						</div>
						<div class="field-holder">
							<i class="fas fa-map-marker-alt"></i> <input type="text"
								class="location-input" name="search_title" value=""
								placeholder="Location">
						</div>
						<div class="field-holder search-blck">
							<input type="submit" value="Search">
						</div>
					</div>
				</div>
			</div>

			<!--Category slider Start-->
			<div class="top-cate">
				<h2>Quick Searches</h2>
				<p>Discover top restaurants by type of meal</p>
				<div class="featured-pro container">
					<div class="row">
						<div class="slider-items-products">
							<div id="top-categories"
								class="product-flexslider hidden-buttons">
								<div class="slider-items slider-width-col4 products-grid">
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_1.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Delivery</div>
											</div>
										</a>
									</div>
									<!-- Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_2.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Drinks</div>
											</div>
										</a>
									</div>
									<!-- End Item -->
									<!-- Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_3.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Breakfast</div>
											</div>
										</a>
									</div>
									<!-- End Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_4.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Lunch</div>
											</div>
										</a>
									</div>
									<!-- Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_5.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Dinner</div>
											</div>
										</a>
									</div>
									<!-- End Item -->
									<!-- Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_6.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Nightlife</div>
											</div>
										</a>
									</div>
									<!-- End Item -->
									<!-- Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_7.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Cafes‎</div>
											</div>
										</a>
									</div>
									<!-- End Item -->
									<!-- Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_8.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Desserts</div>
											</div>
										</a>
									</div>
									<!-- End Item -->
									<!-- Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_3.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Juices</div>
											</div>
										</a>
									</div>
									<!-- End Item -->
									<div class="item">
										<a href="#">
											<div class="pro-img">
												<img
													src="<%=request.getContextPath()%>/userResources/images/category_4.png"
													alt="Crispy Chicken Kabab ">
												<div class="pro-info">Bakery</div>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Category silder End-->

			<!-- best Pro Slider -->
			<section class="best-pro">
				<div class="slider-items-products container">
					<div class="new_title">
						<h2>Best Seller</h2>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
							sed diam nonummy habitant morbi.</p>
					</div>
					<div id="best-seller" class="product-flexslider hidden-buttons">
						<div class="slider-items slider-width-col4 products-grid">
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="Crispy Chicken Kabab "
												class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/p15.jpg"
												alt="sample dish"></a>
											<div class="new-label new-top-left">Hot</div>
											<div class="sale-label sale-top-left">-15%</div>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#" title="Crispy Chicken Kabab">Crispy
													Chicken Kabab</a>
											</div>
											<div class="item-content">
												<div class="item-price">
													<div class="price-box">
														<span class="regular-price"><span class="price">$125.00</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>

							<!-- Item -->
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="Crispy Chicken Kabab "
												class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/p13.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#" title="Crispy Chicken Kabab">Crispy
													Chicken Kabab</a>
											</div>
											<div class="item-content">
												<div class="item-price">
													<div class="price-box">
														<span class="regular-price"><span class="price">$125.00</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="Crispy Chicken Kabab "
												class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/p7.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#" title="Crispy Chicken Kabab">Crispy
													Chicken Kabab</a>
											</div>
											<div class="item-content">
												<div class="item-price">
													<div class="price-box">
														<span class="regular-price"><span class="price">$125.00</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>
							<!-- End Item -->

							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="Crispy Chicken Kabab "
												class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/p14.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#" title="Crispy Chicken Kabab">Crispy
													Chicken Kabab</a>
											</div>
											<div class="item-content">
												<div class="item-price">
													<div class="price-box">
														<span class="regular-price"><span class="price">$125.00</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>

							<!-- Item -->
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="Crispy Chicken Kabab "
												class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/p5.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#" title="Crispy Chicken Kabab">Crispy
													Chicken Kabab</a>
											</div>
											<div class="item-content">
												<div class="item-price">
													<div class="price-box">
														<span class="regular-price"><span class="price">$125.00</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="Crispy Chicken Kabab "
												class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/p6.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#" title="Crispy Chicken Kabab">Crispy
													Chicken Kabab</a>
											</div>
											<div class="item-content">
												<div class="item-price">
													<div class="price-box">
														<span class="regular-price"><span class="price">$125.00</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>
							<!-- End Item -->
						</div>
					</div>
				</div>
			</section>
			<div class="mid-section">
				<div class="container">
					<div class="row">
						<h3>Fresh Restaurants foods delivery made easy</h3>
						<h2>How to order?</h2>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="block1">
								<i class="fas fa-map-marked-alt"></i> <strong>Choose
									your <br> location
								</strong>
							</div>
							<div class="block1">
								<i class="fas fa-store"></i> <strong>Choose your
									restaurant</strong>
							</div>
							<div class="block1">
								<i class="fas fa-hamburger"></i> <strong>Choose your <br>
									foods
								</strong>
							</div>
							<div class="block1">
								<i class="fas fa-biking"></i> <strong>Pick up or <br>
									Delivery
								</strong>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- best Pro Slider -->
			<section class="best-pro">
				<div class="slider-items-products container">
					<div class="new_title">
						<h2>Top Restaurants‎</h2>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
							sed diam nonummy habitant morbi.</p>
					</div>
					<div id="best-rest" class="product-flexslider hidden-buttons">
						<div class="slider-items slider-width-col4 products-grid">
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#"
												title="Sabores European Bistro " class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/rest1.jpg"
												alt="sample dish"></a>
											<div class="new-label new-top-left">Hot</div>
											<div class="sale-label sale-top-left">-15%</div>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#"
													title="Sabores European Bistro">Sabores European Bistro</a>
											</div>
											<div class="item-content">
												<div class="dishes">
													<span><a href="#">burgers</a>, <a href="#">american</a>,
														<a href="#">sandwiches</a>, <a href="#">breakfast</a>, <a
														href="#">pizza</a></span>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>

							<!-- Item -->
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#"
												title="Sabores European Bistro " class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/rest2.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#"
													title="Sabores European Bistro">Sabores European Bistro</a>
											</div>
											<div class="item-content">
												<div class="dishes">
													<span><a href="#">burgers</a>, <a href="#">american</a>,
														<a href="#">sandwiches</a>, <a href="#">breakfast</a>, <a
														href="#">pizza</a></span>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#"
												title="Sabores European Bistro " class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/rest3.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#"
													title="Sabores European Bistro">Sabores European Bistro</a>
											</div>
											<div class="item-content">
												<div class="dishes">
													<span><a href="#">burgers</a>, <a href="#">american</a>,
														<a href="#">sandwiches</a>, <a href="#">breakfast</a>, <a
														href="#">pizza</a></span>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>
							<!-- End Item -->

							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#"
												title="Sabores European Bistro " class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/rest4.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#"
													title="Sabores European Bistro">Sabores European Bistro</a>
											</div>
											<div class="item-content">
												<div class="dishes">
													<span><a href="#">burgers</a>, <a href="#">american</a>,
														<a href="#">sandwiches</a>, <a href="#">breakfast</a>, <a
														href="#">pizza</a></span>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>

							<!-- Item -->
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="Sabores European Bistro"
												class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/rest5.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#"
													title="Sabores European Bistro">Sabores European Bistro</a>
											</div>
											<div class="item-content">
												<div class="dishes">
													<span><a href="#">burgers</a>, <a href="#">american</a>,
														<a href="#">sandwiches</a>, <a href="#">breakfast</a>, <a
														href="#">pizza</a></span>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="Sabores European Bistro"
												class="product-image"><img
												src="<%=request.getContextPath()%>/userResources/images/rest6.jpg"
												alt="sample dish"></a>
										</div>
										<div class="add_cart">
											<button class="button btn-cart" type="button">
												<span>Order Now</span>
											</button>
										</div>
										<div class="wishlist-block">
											<i class="fas fa-heart"></i>
											<div class="rating">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 80%"></div>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a> <span class="separator">|</span>
														<a href="#">Add Review</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title">
												<a href="#"
													title="Sabores European Bistro">Sabores European Bistro</a>
											</div>
											<div class="item-content">
												<div class="dishes">
													<span><a href="#">burgers</a>, <a href="#">american</a>,
														<a href="#">sandwiches</a>, <a href="#">breakfast</a>, <a
														href="#">pizza</a></span>
												</div>
											</div>
										</div>
									</div>
									<div class="restuarent">
										<i class="fas fa-map-marker-alt"></i> 789 Main rd, Anytown, CA
										12345 USA
									</div>
								</div>
							</div>
							<!-- End Item -->
						</div>
					</div>
				</div>
			</section>
			<div class="hot-section">
				<div class="testimonials-section slider-items-products">
					<div id="testimonials" class="offer-slider parallax parallax-2">
						<div class="slider-items slider-width-col6">
							<div class="item">
								<div class="avatar">
									<img
										src="<%=request.getContextPath()%>/userResources/images/member1.png"
										alt="Image">
								</div>
								<div class="testimonials">Perfect Themes and the best of
									all that you have many options to choose! Very fast responding!
									I highly recommend this theme and these people!</div>
								<div class="clients_author">
									Smith John <span>Happy Customer</span>
								</div>
							</div>
							<div class="item">
								<div class="avatar">
									<img
										src="<%=request.getContextPath()%>/userResources/images/member2.png"
										alt="Image">
								</div>
								<div class="testimonials">Code, template and others are
									very good. The support has served me immediately and solved my
									problems when I need help. Are to be congratulated.</div>
								<div class="clients_author">
									Karla Anderson <span>Happy Customer</span>
								</div>
							</div>
							<div class="item">
								<div class="avatar">
									<img
										src="<%=request.getContextPath()%>/userResources/images/member3.png"
										alt="Image">
								</div>
								<div class="testimonials">Our support and response has
									been amazing, helping me with several issues I came across and
									got them solved almost the same day. A pleasure to work with
									them!</div>
								<div class="clients_author">
									Stephen Smith <span>Happy Customer</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Home Lastest Blog Block -->
			<div class="latest-blog">
				<div class="container">
					<div class="new_title">
						<h2>Latest News</h2>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
							sed diam nonummy habitant morbi.</p>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-4 col-xs-12 col-sm-4 blog-post">
							<div class="blog_inner">
								<div class="blog-img">
									<a href="#"> <img
										src="<%=request.getContextPath()%>/userResources/images/blog-img1.jpg"
										alt="blog image">
									</a>
									<div class="mask">
										<a class="info" href="#">Read More</a>
									</div>
								</div>
								<!--blog-img-->
								<div class="blog-info">
									<h3>
										<a href="#">Powerful and flexible premium
											Ecommerce themes</a>
									</h3>
								</div>
							</div>
							<!--blog_inner-->
						</div>
						<div class="col-lg-4 col-md-4 col-xs-12 col-sm-4 blog-post">
							<div class="blog_inner">
								<div class="blog-img">
									<a href="#"> <img
										src="<%=request.getContextPath()%>/userResources/images/blog-img2.jpg"
										alt="blog image">
									</a>
									<div class="mask">
										<a class="info" href="#">Read More</a>
									</div>
								</div>
								<!--blog-img-->
								<div class="blog-info">
									<h3>
										<a href="#">Awesome template with lot's of
											features on the board!</a>
									</h3>
								</div>
							</div>
							<!--blog_inner-->
						</div>

						<!--col-lg-4 col-md-4 col-xs-12 col-sm-4-->
						<div class="col-lg-4 col-md-4 col-xs-12 col-sm-4 blog-post">
							<div class="blog_inner">
								<div class="blog-img">
									<a href="#"> <img
										src="<%=request.getContextPath()%>/userResources/images/blog-img3.jpg"
										alt="blog image">
									</a>
									<div class="mask">
										<a class="info" href="#">Read More</a>
									</div>
								</div>
								<!--blog-img-->
								<div class="blog-info">
									<h3>
										<a href="#">Awesome template with lot's of
											features on the board!</a>
									</h3>
								</div>
							</div>
							<!--blog_inner-->
						</div>
					</div>
				</div>
				<!--container-->
			</div>

			<!-- Logo Brand Block -->

		</div>

		<!-- For version 1,2,3,4,6 -->




		<jsp:include page="footer.jsp"></jsp:include>






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
