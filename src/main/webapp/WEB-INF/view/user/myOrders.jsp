<%@page import="com.project.utils.Basemethods"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	href="<%=request.getContextPath()%>/userResources/css/font-awesome.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/font-awesome2.css"
	media="all">	
	
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


</head>

<body>
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
									<h2>My Orders</h2>

								</div>

							</div>
						</div>
						<div class="col-lg-5"></div>
					</div>
				</div>
			</div>
		</div>

		<!-- BEGIN Main Container col2-right -->
		<section class="main-container col2-right-layout">
			<div class="main container">
				<div class="row">
					<section
						class="col-main col-sm-12 col-xs-12 wow bounceInUp animated animated"
						style="visibility: visible;">
						<div class="my-account">

							<!--page-title-->
							<!-- BEGIN DASHBOARD-->
							<div class="dashboard">
								<div class="welcome-msg">
									<p class="hello">
										<strong>Hello, <b><%=Basemethods.getUser()%></b></strong>
									</p>
								</div>
								<div class="recent-orders">
									<div class="title-buttons">
										<strong>Recent Orders</strong>
									</div>
									<div class="table-responsive">
										<table class="data-table table-striped" id="my-orders-table">

											<thead>
												<tr class="first last">
													<th>No.</th>
													<th>Order Id</th>
													<th>Vendor Name</th>
													<th>Order Date</th>
													<th>Price</th>
													<th>Status</th>
													<th>Cancel Order</th>
													<th>View Details</th>
												</tr>
											</thead>
											<tbody>
												<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
												<c:forEach items="${orderList}" var="p" varStatus="j">
													<tr class="first odd">
														<td>${j.count}</td>
														<td>${p.orderid}</td>
														<td>${p.vendorvo.fullName}</td>
														<td><span class="nobr">${p.orderDate}</span></td>
														<td><span class="price">${p.totalPrice} Rs</span></td>
														
														<td><c:if test="${p.orderStatus eq 'ORDERED' }">
																<div class="badge badge-info" style="background: orange">ORDERED</div>
															</c:if> <c:if test="${p.orderStatus eq 'ACCEPTED' }">
																<div class="badge badge-success"
																	style="background: green">ACCEPTED</div>
															</c:if> <c:if test="${p.orderStatus eq 'REJECTED' }">
																<div class="badge badge-warning"
																	style="background: red">REJECTED</div>
															</c:if>
														</td>
														<td>
															<c:if test="${p.orderStatus eq 'ORDERED' }">
																<a href="rejectOrder?id=${p.id}"><i class="fas fa-times fa-2x"  style="float: none;color: #f41b4d;margin-left: 45px;"></i></a> 
																<%-- <a href="rejectOrder?id=${p.id}"><div class="badge badge-info" style="background: RED;margin-left: 40px;">YES</div></a> --%>
															</c:if> 
															<c:if test="${p.orderStatus eq 'ACCEPTED' }">
																<div style="float: none;margin-left: 45px;">------</div>
															</c:if> 
															<c:if test="${p.orderStatus eq 'REJECTED' }">
																<div style="float: none;margin-left: 45px;">------</div>
															</c:if>
														</td>
														<td class="a-center last"><span class="nobr">
																<u><a id="id" onClick="proceedToViewOrderDetials(${p.id})"
																href="#">View Order</a></span></u>
														</td>
													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
									<!--table-responsive-->
								</div>
								<!--recent-orders-->

							</div>
						</div>
					</section>
					<!--col-main col-sm-9 wow bounceInUp animated-->

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



	<!--   Model start -->

	<div id="myModal" class="modal fade" role="dialog"
		style="background: #333;">
		<div class="modal-dialog modal-lg">

			<!-- Modal content-->
			<div class="modal-content" id="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" id="orderDetailsId">Order Details </h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="table-responsive">
							<table id="shopping-cart-table"
								class="data-table cart-table table-striped">

								<thead>
									<tr class="first last">
										<th>No.</th>
										<th>Meal Type</th>
										<th>Days</th>
										<th>Person</th>
										<th>Price</th>
									</tr>
								</thead>
								<tbody id="orderDetails">

								</tbody>
							</table>
						</div>
						

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="button btn-default"
						data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<!--model-end  -->
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
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/custombooking.js"></script>

</body>
</html>