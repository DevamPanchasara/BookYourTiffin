<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>BookYourTiffin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.png" />
</head>

<body class="sidebar-light">

	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<!-- partial -->
		<!-- <div class="container-fluid page-body-wrapper"> -->
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
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Add Package</h4>

									<%@taglib prefix="f"
										uri="http://www.springframework.org/tags/form"%>
										<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

									<f:form class="cmxform" onsubmit="return validatePackageDetais()" id="signupForm" method="get"
										action="SavePackage" modelAttribute="packageVO">
										<fieldset>
											<f:hidden path="id" />
											<div class="form-group">
												<label for="firstname">Package Name</label>
												<f:input id="packageName" class="form-control"
													name="firstname" path="packageName" type="text" />
											</div>

											<div class="form-group">
												<label for="lastname">Package Description</label>
												<f:input id="packageDescription" class="form-control" name="lastname"
													path="packageDescription" type="text" />
											</div>

											<div class="row">
												<div class="form-group col-6">
													<label for="range-from">Range From</label>
													<f:input id="packageRangeFrom" class="form-control"
														name="range-from" path="packageRangeFrom" type="text" />
												</div>

												<div class="form-group col-6">
													<label for="range-to">Range To</label>
													<f:input id="packageRangeTo" class="form-control" name="range-to"
														path="packageRangeTo" type="text" />
												</div>
											</div>

											<div class="row">
												<div class="form-group col-6">
													<label for="percentage">Percentage</label>
													<f:input id="percentage" class="form-control"
														name="percentage" path="percentage" type="text" />
												</div>
												 
												<div class="form-group col-6">
													<label for="tenure">Duration</label>
													<f:input id="packageDuration" class="form-control" name="tenure"
														path="packageDuration" type="text" />
												</div>
											</div>

											<input class="btn btn-primary" type="submit" value="Submit">
										</fieldset>
									</f:form>
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
		src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.validate.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap-maxlength.min.js"></script>
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
		src="<%=request.getContextPath()%>/adminResources/js/bt-maxLength.js"></script>
		
		<script src="<%=request.getContextPath()%>/adminResources/js/bt-maxLength.js"></script>
	
	 <script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/toastDemo.js"></script>
	

	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/package.js"></script> 
	<!-- End custom js for this page-->
	
	
</body>

</html>
