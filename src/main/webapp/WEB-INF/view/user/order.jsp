<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Your Tiffin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="robots" content="*">
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
	href="<%=request.getContextPath()%>/userResources/css/font-awesome1.css"
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
	href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,800,400'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i,900"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/custom.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">

<style type="text/css">
.mt-1 {
	margin-top: 1em;
}
</style>

</head>
<body>
<div id="preloader" style="display: none;"></div>
	<div id="page">
		<div class="top-section">
			<div class="container">
				<jsp:include page="header.jsp"></jsp:include>
				<!--container-->

			</div>
		</div>
		<div class="container">
			<div class="inside-header">
				<div class="container">
					<div class="row">
						<div class="col-lg-7">
							<div class="page-heading">
								<div class="page-title">
									<h2>Book Meal with ${vendorName}</h2>

									<span id="vendorName" style="display: none;">${vendorName}</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- BEGIN Main Container col2-right -->
		<section class="main-container col2-right-layout">
			<div class="main container">
				<div class="row">
					<section
						class="col-main col-sm-9 col-xs-12 wow bounceInUp animated animated"
						style="visibility: visible;">

						<!-- ###################################################
							 #################### Meal Type ################### 
							 ##################################################-->

						<div class="my-account pb-0">
							<div class="my-wishlist block">
								<h2 class="block-title">Meal Type</h2>
								<div class="row">
									<div class="col-lg-12">

										<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


										<c:forEach var="i" varStatus="j" items="${meal}">
											<div class="malebox"
												id="bookingbox-${i.mealVO.id}-${i.mealVO.mealType}">
												<div class="maleboximgdiv">
													<c:if test="${j.count eq 1 }">
														<img class="maleboximg"
															src="<%=request.getContextPath()%>/userResources/images/category_1.png"
															alt="Break-fast">
													</c:if>
													<c:if test="${j.count eq 2 }">
														<img class="maleboximg"
															src="<%=request.getContextPath()%>/userResources/images/category_2.png"
															alt="Brunch">
													</c:if>
													<c:if test="${j.count eq 3 }">
														<img class="maleboximg"
															src="<%=request.getContextPath()%>/userResources/images/category_3.png"
															alt="Lunch">
													</c:if>
													<c:if test="${j.count eq 4 }">
														<img class="maleboximg"
															src="<%=request.getContextPath()%>/userResources/images/category_4.png"
															alt="Dinner">
													</c:if>

													<span>${i.mealVO.mealType}</span>

												</div>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>
						</div>

						<!-- ###################################################
							 #################### Duration ##################### 
							 ###################################################-->

						<div class="my-account pb-0 mt--50">
							<div class="my-wishlist block">
								<h2 class="block-title">Duration</h2>

								<div class="row" id="durationDiv"></div>
							</div>
						</div>

						<!-- ###################################################
							 #################### Quantity ################### 
							 ##################################################-->

						<div class="my-account pb-0 mt--50">
							<div class="my-wishlist block">
								<h2 class="block-title">Quantity</h2>
								<%@taglib prefix="f"
									uri="http://java.sun.com/jsp/jstl/functions"%>

								<c:if test="${f:length(meal) gt 0}">
									<div class="row">
										<div class="col-lg-12">
											<div class="durationbox quantity durationboxselect"
												id="quantity1" onclick="selectQuantity(1)">
												<div class="durationboximgdiv">
													<h1>1</h1>
													<span>Person</span>
												</div>
											</div>

											<div class="durationbox quantity" id="quantity2"
												onclick="selectQuantity(2)">
												<div class="durationboximgdiv">
													<h1>2</h1>
													<span>Persons</span>
												</div>
											</div>

											<div class="durationbox quantity" id="quantity3"
												onclick="selectQuantity(3)">
												<div class="durationboximgdiv">
													<h1>3</h1>
													<span>Persons</span>
												</div>
											</div>

											<div class="durationbox quantity" id="quantity4"
												onclick="selectQuantity(4)">
												<div class="durationboximgdiv">
													<h1>4</h1>
													<span>Persons</span>
												</div>
											</div>
										</div>

									</div>
								</c:if>
							</div>
						</div>

					</section>
					<!--col-main col-sm-9 wow bounceInUp animated-->
					<aside
						class="col-right sidebar col-sm-3 col-xs-12 wow bounceInUp animated animated"
						style="visibility: visible;">
						<div class="block block-account">
							<div class="block-title">Booking Details</div>
							<div class="block-content" id="bookingDetails"></div>
							<!--block-content-->
						</div>
						<!--block block-account-->

						<div class="cart-collaterals container"
							style="height: 165px; margin-left: auto; margin-top: 25px; width: 100%; position: initial;">
							<!-- BEGIN COL2 SEL COL 1 -->
							<div class="row">

								<!-- BEGIN TOTALS COL 2 -->


								<!--col-sm-4-->

								<c:if test="${f:length(meal) gt 0}">

									<div class="col-sm-4" style="width: 100%">
										<div class="totals">
											<table id="shopping-cart-totals-table"
												class="table shopping-cart-table-total">
												<tfoot>
													<tr>
														<td style="" class="a-left" colspan="1"><strong>Grand
																Total</strong></td>
														<td style="" class="a-right"><strong><span
																class="price" id="totalPrice"></span></strong></td>
													</tr>
												</tfoot>

											</table>
											<ul class="checkout">
												<li>
													<button type="button" title="Proceed to Checkout"
														class="button btn-proceed-checkout"
														onClick="proceedToCheckOut()">
														<span>Proceed to Checkout</span>
													</button>
												</li>
											</ul>
											<!--inner-->
										</div>
										<!--totals-->
									</div>
									<!--col-sm-4-->
								</c:if>
							</div>
							<!--cart-collaterals-->

						</div>


					</aside>
					<!--col-right sidebar col-sm-3 wow bounceInUp animated-->
				</div>
				<!--row-->
			</div>
			<!--main container-->
		</section>
		<!--main-container col2-left-layout-->

		<jsp:include page="footer.jsp"></jsp:include>

	</div>
	<!--page-->

	<!--  ORDER MODAL START -->
	<div id="myModal" class="modal fade" role="dialog"
		style="background: #333;">
		<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Order with ${vendorName}</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-6 mt-1">
								<div class="input-box name-firstname">
									<div class="input-box1">
										<input type="text" id="firstname"
											style="border: 1px solid #d1d1d1; width: 100%;"
											placeholder="Enter First Name" class="input-text">
									</div>
								</div>
							</div>

							<div class="col-lg-6 mt-1">
								<div class="input-box name-firstname">
									<div class="input-box1">
										<input type="text" id="lastname"
											style="border: 1px solid #d1d1d1; width: 100%;"
											placeholder="Enter Last Name" class="input-text">
									</div>
								</div>
							</div>

							<div class="col-lg-6 mt-1">
								<div class="input-box name-firstname">
									<div class="input-box1">
										<input type="text" id="contactno"
											style="border: 1px solid #d1d1d1; width: 100%;" maxlength="10"
											placeholder="Enter Your Phone Number" class="input-text">
									</div>
								</div>
								<span style="color: red;" id="contactNumberErrDivId"></span>
							</div>
							
				

							<div class="col-lg-6 mt-1">
								<div class="input-box name-firstname">
									<div class="input-box1">
										<input type="text" id="email"
											style="border: 1px solid #d1d1d1; width: 100%;"
											placeholder="Enter Your Email" class="input-text">
									</div>
								</div>
								<span style="color: red;" id="userErrDivId"></span>
							</div>

							<div class="col-lg-6 mt-1">
								<div class="input-box">
									<input type="text" readonly="readonly" id="cityId"
											style="border: 1px solid #d1d1d1; width: 100%;"
											value="${city.cityName}" class="input-text">
								</div>
							</div>

							<div class="col-lg-6 mt-1">
								<div class="input-box">
									<select class="validate-select required-entry"
										id="areaId" style="border: 1px solid #d1d1d1; width: 100%;">
										<option value="">Select Area</option>
										<c:forEach items="${areaList}" var="i">
											<option value="${i.id}">${i.areaName}</option>
										</c:forEach>
									</select>
								</div>
							</div>
					
			
			
			

							<div class="col-lg-12 mt-1">
								<div class="input-box name-firstname">
									<div class="input-box1">
										<textarea  id="address" name="address"
											style="border: 1px solid #d1d1d1; width: 100%;"
											placeholder="Enter Your Address" class="input-text"></textarea>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="button btn-default"
							data-dismiss="modal">Close</button>
						<button type="submit" class="button" onclick="validateOrderDetais()">Confim</button>
					</div>
				</div>

		</div>
	</div>
	<!-- ORDER MODAL END -->

	<!-- JavaScript -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery-3.4.1.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/common.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery.bxslider.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery.mobile-menu.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/toastDemo.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/toaster.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/custombooking.js"></script>
</body>
</html>