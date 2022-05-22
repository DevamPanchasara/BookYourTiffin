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
	href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/bootstrap-datepicker.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.png" />
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
					<div class="row">
						<div class="col-lg-12 grid-margin d-flex flex-column">
							<div class="row">
								<div class="col-md-3 grid-margin stretch-card">
									<div class="card">
										<div class="card-body text-center">
											<div class="text-primary mb-4">
												<i class="mdi mdi-food mdi-36px"></i>
												<p class="font-weight-medium mt-2">Total Vendor</p>
											</div>
											<h1 class="font-weight-light">${totalVendor}</h1>
										</div>
									</div>
								</div>
								<div class="col-md-3 grid-margin stretch-card">
									<div class="card">
										<div class="card-body text-center">
											<div class="text-danger mb-4">
												<i class="mdi mdi-chart-pie mdi-36px"></i>
												<p class="font-weight-medium mt-2">Total Customer</p>
											</div>
											<h1 class="font-weight-light">${totalCustomer}</h1>
										</div>
									</div>
								</div>
								<div class="col-md-3 grid-margin stretch-card">
									<div class="card">
										<div class="card-body text-center">
											<div class="text-info mb-4">
												<i class="mdi mdi-star mdi-36px"></i>
												<p class="font-weight-medium mt-2">Total Complain</p>
											</div>
											<h1 class="font-weight-light">${totalComplain}</h1>
										</div>
									</div>
								</div>
								<div class="col-md-3 grid-margin stretch-card">
									<div class="card">
										<div class="card-body text-center">
											<div class="text-success mb-4">
												<i class="mdi mdi-star mdi-36px"></i>
												<p class="font-weight-medium mt-2">Total Feedback</p>
											</div>
											<h1 class="font-weight-light">${totalFeedback}</h1>
										</div>
									</div>
								</div>
							</div>
							<div class="row flex-grow-1">
								<div class="col-lg-12 grid-margin grid-margin-lg-0 stretch-card">
									<div class="card">
										<div class="card-body">

											<div id="container"
												style="min-width: 310px; height: 400px; margin: 0 auto"></div>

											<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

											<c:forEach items="${graphData}" var="i">
												<c:forEach items="${i}" var="j" varStatus="k">
													<c:if test="${k.count eq 1 }">
													    <input type="hidden" name="yvalue" value="${j}" />
													</c:if>
													<c:if test="${k.count eq 2 }">
														<input type="hidden" name="xvalue" value="${j}" />
													</c:if>


												</c:forEach>
											</c:forEach>
										</div>
									</div>
								</div>

							</div>
						</div>

					</div>


				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->

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
		src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/Chart.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap-datepicker.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/off-canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/hoverable-collapse.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/template.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/settings.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dashboard.js"></script>


	<script
		src="<%=request.getContextPath()%>/vendorResources/js/highcharts.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/exporting.js"></script>

	<script>
		var xvalue = document.getElementsByName("xvalue");
		var xdata = [];
		var yvalue = document.getElementsByName("yvalue");
		var ydata = [];
		for (var i = 0; i < xvalue.length; i++) {
			xdata.push(xvalue[i].value);
			ydata.push(parseFloat(yvalue[i].value));
		}
		Highcharts.chart({
			chart : {
				renderTo : "container",
				type : 'column'
			},
			title : {
				text : 'Orders of Current Month'
			},
			xAxis : {
				categories : xdata,
				crosshair : true
			},
			yAxis : {
				min : 0,
				title : {
					text : 'Orders'
				}
			},
			plotOptions : {
				column : {
					pointPadding : 0.2,
					borderWidth : 0
				}
			},
			series : [ {
				name : 'Vendors',
				data : ydata,
				color : '#5e2572'

			} ]
		});
	</script>
	<!-- End custom js for this page-->
</body>

</html>

