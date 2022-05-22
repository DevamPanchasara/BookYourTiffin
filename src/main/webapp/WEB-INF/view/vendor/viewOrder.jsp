<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Book Your Tiffin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/vendorResources/image/favicon.png" />
</head>

<body class="sidebar-light">
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->


		<jsp:include page="header.jsp"></jsp:include>



		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="card">
						<div class="card-header">
							<h4 class="mb-0 mt-2 col-3">View Order</h4>
						</div>


						<div class="card-body">
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">

										<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>No.</th>
													<th>Order Id</th>
													<th>Email</th>
													<th>Name</th>
													<th>Contact no</th>
													<th>Order Date</th>
													<th>Details</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${orderList}" var="p" varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td>${p.orderid}</td>
														<td>${p.email}</td>
														<td>${p.firstName}${p.lastName}</td>
														<td>${p.contactno}</td>
														<td>${p.orderDate}</td>
														<td><a onclick="viewOrderDetails(${p.id})"><i
																class="mdi mdi-eye" style="cursor: pointer;"
																title="view order"></i></a></td>
														<td><c:if test="${p.orderStatus eq 'ORDERED' }">
																<div class="badge badge-info">ORDERED</div>
															</c:if> <c:if test="${p.orderStatus eq 'ACCEPTED' }">
																<div class="badge badge-success">ACCEPTED</div>
															</c:if> <c:if test="${p.orderStatus eq 'REJECTED' }">
																<div class="badge badge-warning">REJECTED</div>
															</c:if></td>
														<td><c:if test="${p.orderStatus eq 'ORDERED' }">
																<a href="acceptOrder?id=${p.id}"><button
																		class="badge badge-success badge-pill">Accept</button></a>
																<a href="rejectOrder?id=${p.id}"><button
																		class="badge badge-danger badge-pill">Reject</button></a>
															</c:if></td>

													</tr>
												</c:forEach>

											</tbody>
										</table>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->

				<jsp:include page="footer.jsp"></jsp:include>

				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="ModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="padding-left: 15px; width: max-content; padding-right: 15px;">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel1">Menu</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>No.</th>
								<th>Meal Type</th>
								<th>Days</th>
								<th>Person</th>
								<th>Price</th>
							</tr>
						</thead>
						<tbody id="dishTableMenu">

						</tbody>
					</table>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>




	<!-- plugins:js -->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/jquery.dataTables.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/off-canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/hoverable-collapse.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/template.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/settings.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/data-table.js"></script>

	<script
		src="<%=request.getContextPath()%>/vendorResources/js/custom/viewOrderDetails.js"></script>
	<!-- End custom js for this page-->
</body>

</html>