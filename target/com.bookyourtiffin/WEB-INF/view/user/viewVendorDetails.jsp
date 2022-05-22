<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Vendor Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="author" content="*">
<meta name="viewport" content="initial-scale=1.0, width=device-width">
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
<link href="<%=request.getContextPath()%>/userResources/css/css1.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/css2.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/css3.css"
	rel='stylesheet' type='text/css'>
<link href="<%=request.getContextPath()%>/userResources/css/css4.css"
	rel="stylesheet">
</head>
<body>
	<div id="page">
		<div class="top-section">
			<div class="container">
				<jsp:include page="header.jsp"></jsp:include>
				<!--container-->

			</div>
		</div>

		<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
		<c:forEach items="${vendorDetails}" var="p" varStatus="j">

			<div class="container">
				<div class="inside-header">
					<div class="container">
						<div class="row">
							<div class="col-lg-7">
								<div class="page-heading">
									<div class="breadcrumbs">
										<div class="row">

											<!--col-xs-12-->
										</div>
										<!--row-->
									</div>
									<div class="page-title">
										<a href="user/viewVendor"><h2>${p.fullName }</h2></a>
									</div>

								</div>

								<div class="my-order" style="float: left;">
									<a href="order?id=${p.loginvo.loginId }"><i class="fas fa-biking"></i>Book Now</a>
								</div>

							</div>
							<div class="col-lg-5">
								<%@taglib prefix="f"
									uri="http://java.sun.com/jsp/jstl/functions"%>

								<div class="category-description std">

									<div class="ratings">
										<div class="rating-box">
											<div style="width:${vendorAvgRatingList}%" class="rating"></div>
										</div>
										<p class="rating-links">
											<a href="#"> <c:set value="${vendorRatingList}" var="z"></c:set>

												${f:length(z)} Review
											</a> <span class="separator">|</span> <a
												href="vendorRating?id=${p.id }">Add Your Review</a>
										</p>
									</div>

									<div class="slider-items-products">
										<div id="category-desc-slider"
											class="product-flexslider hidden-buttons">
											<div
												class="slider-items slider-width-col1 owl-carousel owl-theme">

												<!-- Item -->
												<div class="item">
													<a href="#"><img alt=""
														style="border: 1px solid #66cc33"
														src="<%=request.getContextPath()%>/userResources/images/chef.jpg"></a>
												</div>
												<!-- End Item -->

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- BEGIN Main Container -->
			<div class="main-container col1-layout wow bounceInUp animated">
				<div class="main container">
					<div class="col-main row">
						<!-- Endif Next Previous Product -->
						<div class="product-view wow bounceInUp animated" itemscope=""
							itemtype="http://schema.org/Product" itemid="#product_base">
							<div id="messages_product_view"></div>
							<!--product-next-prev-->

							<!--product-essential-->
							<div class="product-collateral">
								<ul id="product-detail-tab" class="nav nav-tabs product-tabs">

									<li class="active"><a href="#product_tabs_description"
										data-toggle="tab">Description</a></li>

									<li><a href="#product_tabs_tags" data-toggle="tab">Menu</a></li>

									<!-- <li><a href="#product_tabs_tags" data-toggle="tab">Book
										Table</a></li>  -->

									<li><a href="#reviews_tabs" data-toggle="tab">Ratings</a></li>

									<!-- <li><a href="#menu" data-toggle="tab">Menu</a></li> -->

									<!-- <li><a href="#product_tabs_custom1" data-toggle="tab">Custom
								
										Tab1</a></li> -->
								</ul>

								<div id="productTabContent" class="tab-content">
									<div class="tab-pane fade in active"
										id="product_tabs_description">
										<div class="std">
											<div>
												<h3>Name</h3>
												<h4>${p.fullName }</h4>
											</div>

											<div>
												<h3>Phone number</h3>
												<h4>${p.contactno }</h4>
											</div>

											<div>
												<h3>Mail ID</h3>
												<h4>${p.loginvo.username }</h4>
											</div>


											<div>
												<h3>Opening hours</h3>
												<h4>8am – 11pm</h4>
											</div>


											<div>
												<h3>Address</h3>
												<h4>${p.address }</h4>
											</div>

										</div>
									</div>




									<div class="tab-pane fade" id="product_tabs_tags">
										<div class="book-tbl">

											<div class="top-cate" style="margin-top: -85px;">
												<h2>Quick Searches</h2>
												<p>Discover top restaurants by type of meal</p>
												<div class="featured-pro container">
													<div class="row">
														<!-- style="margin-left: 35%; margin-top: -51px;" -->
														<div class="slider-items-products">
															<div id="top-categories"
																class="product-flexslider hidden-buttons">
																<div
																	class="slider-items slider-width-col4 products-grid"
																	style="margin-left: 30%;">

																	<%@ taglib uri="http://java.sun.com/jstl/core_rt"
																		prefix="c"%>
																	<c:forEach items="${vendorDetails}" var="p"
																		varStatus="j">
																		<c:forEach items="${meal}" var="i" varStatus="j">

																			<!-- Item -->
																			<div class="item">
																				<a href="#"> <a
																					href="viewDaysMenu?id=${i.mealVO.id}&vendorid=${p.id}"><div
																							class="pro-img">

																							<c:if test="${j.count eq 1}">
																								<img
																									src="<%=request.getContextPath()%>/userResources/images/category_1.png"
																									alt="Crispy Chicken Kabab ">
																							</c:if>
																							<c:if test="${j.count eq 2}">
																								<img
																									src="<%=request.getContextPath()%>/userResources/images/category_2.png"
																									alt="Crispy Chicken Kabab ">
																							</c:if>
																							<c:if test="${j.count eq 3}">
																								<img
																									src="<%=request.getContextPath()%>/userResources/images/category_3.png"
																									alt="Crispy Chicken Kabab ">
																							</c:if>
																							<c:if test="${j.count eq 4}">
																								<img
																									src="<%=request.getContextPath()%>/userResources/images/category_4.png"
																									alt="Crispy Chicken Kabab ">
																							</c:if>



																							<div class="pro-info">${i.mealVO.mealType}</div>
																						</div></a>
																				</a>
																			</div>

																		</c:forEach>
																	</c:forEach>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>

									<div class="tab-pane fade in" id="reviews_tabs">
										<div class="woocommerce-Reviews">
											<div>
												<!-- <h2 class="woocommerce-Reviews-title">
													<span>Rating</span>
												</h2> -->
												<ol class="commentlist">

													<c:forEach items="${vendorRatingList}" var="r"
														varStatus="j">

														<li class="comment">
															<div>
																<img alt=""
																	src="<%=request.getContextPath()%>/userResources/images/avatar.png"
																	class="avatar avatar-60 photo">

																<div class="comment-text">

																	<c:forEach var="s" begin="1" end="${r.vendorRating}">
																		<i class="fa fa-star"
																			style="float: right; color: #90c741"></i>
																	</c:forEach>

																	<p class="meta">
																		<strong>${r.loginVO.username}</strong>
																		<!-- <span>–</span> April 19,2019 -->
																	</p>
																	<div class="description">

																		<p>${r.ratingSubject }</p>
																	</div>
																</div>
															</div>
														</li>


													</c:forEach>
													<!-- #comment-## -->
												</ol>
											</div>
											<div>
												<div>

													<!-- #respond -->
												</div>
											</div>
											<div class="clear"></div>
										</div>
									</div>

									<div class="tab-pane fade" id="product_tabs_custom">
										<div class="product-tabs-content-inner clearfix">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Sed tempor, lorem et placerat vestibulum, metus nisi
												posuere nisl, in accumsan elit odio quis mi.</p>
											<p>Cras neque metus, consequat et blandit et, luctus a
												nunc. Etiam gravida vehicula tellus, in imperdiet ligula
												euismod eget. Pellentesque habitant morbi tristique senectus
												et netus et malesuada fames ac turpis egestas. Nam erat mi,
												rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis
												convallis, arcu nec aliquam consequat, purus felis vehicula
												felis, a dapibus enim lorem nec augue.</p>
										</div>
									</div>
									<div class="tab-pane fade" id="product_tabs_custom1">
										<div class="product-tabs-content-inner clearfix">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Sed tempor, lorem et placerat vestibulum, metus nisi
												posuere nisl, in accumsan elit odio quis mi. Cras neque
												metus, consequat et blandit et, luctus a nunc. Etiam gravida
												vehicula tellus, in imperdiet ligula euismod eget.
												Pellentesque habitant morbi tristique senectus et netus et
												malesuada fames ac turpis egestas. Nam erat mi, rutrum at
												sollicitudin rhoncus, ultricies posuere erat. Duis
												convallis, arcu nec aliquam consequat, purus felis vehicula
												felis, a dapibus enim lorem nec augue.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</c:forEach>
		<!-- menu Slider -->
		<!--product-collateral-->

		<!--product-view-->
	</div>


	<!--main-container-->
	<!--col1-layout-->

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
		src="<%=request.getContextPath()%>/userResources/js/jquery.flexslider.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.mobile-menu.min.js"></script>
</body>
</html>