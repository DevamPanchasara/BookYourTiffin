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
	href="<%=request.getContextPath()%>/vendorResources/css/owl.carousel.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/owl.theme.default.min.css" />
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/vendorResources/images/favicon.png" />
</head>

<body class="sidebar-light">
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->

		<jsp:include page="header.jsp"></jsp:include>

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_sidebar.html -->

			<jsp:include page="menu.jsp"></jsp:include>

			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<center>
										<h4 class="mb-0 mt-2 col-3">View Package</h4>
									</center>
								</div>
								<div class="card-body">
									<div class="container text-center">
										<!-- <h4 >Select Package</h4> -->
										<h6>
											Choose a plan that suits you the best if you are not fully
											satisfied we offer 30 days <br>money back guarantee no
											questions asked
										</h6>
										<br>
										<div class="row pricing-table">
											<br>

											<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
											<c:forEach items="${packageList}" var="p" varStatus="j">

												<div class="col-md-4 grid-margin stretch-card pricing-card">
													<div class="card border-primary border pricing-card-body">
														<div class="text-center pricing-card-head">
															<h3>${p.packageName}</h3>
															<p class="text-justify"
																style="margin-top: 10px;">${p.packageDescription}</p>
														</div>
														<ul class="list-unstyled plan-features"
															style="margin-top: 10px;">
															<li><b>Range</b> :
																${p.packageRangeFrom}-${p.packageRangeTo}</li>
															<li><b>Share</b> : ${p.percentage} %</li>
															<li><b>Tenure</b> :${p.packageDuration}</li>
														</ul>
													<!-- 	<div class="wrapper">
															<a href="#" class="btn btn-outline-primary btn-block">Activate</a>
														</div> -->
													</div>
												</div>

											</c:forEach>

										</div>
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
	<!-- plugins:js -->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
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
	<!-- End custom js for this page-->
</body>

</html>
