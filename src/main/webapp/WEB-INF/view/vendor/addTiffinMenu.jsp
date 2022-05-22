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
	href="<%=request.getContextPath()%>/vendorResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/vendor.bundle.base.css">
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/vendorResources/css/jquery.toast.min.css">
<!-- endinject -->
<!-- Plugin css for this page -->
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
		<!-- partial:../../partials/_navbar.html -->
		<!-- partial -->
		<!--<div class="container-fluid page-body-wrapper">  -->
		<!-- partial:partials/_navbar.html -->

		<jsp:include page="header.jsp"></jsp:include>

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row grid-margin">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="mb-0 mt-2 col-3">Add Tiffin Menu</h4>
								</div>
								<div class="card-body">

									<%@taglib prefix="f"
										uri="http://www.springframework.org/tags/form"%>
									<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

									<f:form class="cmxform" id="commentForm" method="post"
										action="saveTiffinMenu" modelAttribute="tiffinMenuVO"
										enctype="multipart/form-data" onsubmit="return validateTiffinMenu()">
										<fieldset>
											<div class="form-group">


												<f:select path="mealVO.id" class="form-control"
													id="tiffinType">
													<option selected="selected" value="null">Select
														TIffin Type</option>
													<c:forEach items="${MealList}" var="p">
														<f:option value="${p.id }">${p.mealType }</f:option>
													</c:forEach>
												</f:select>

											</div>

											<div class="row">
												<div class="form-group col-6">
													<label for="range-from">Time From</label>
													<f:input id="timefrom" class="form-control"
														name="range-from" path="timefrom" type="time" />
												</div>

												<div class="form-group col-6">
													<label for="range-to">Time To</label>
													<f:input id="timeto" class="form-control" name="range-to"
														path="timeto" type="time" />
												</div>
											</div>

											<div class="row">
												<div class="form-group  col-md-12">
													<label for="mealname">Day</label>
													<f:select path="day" class="form-control"
														id="selectDay">
														<option value="null">Select Day</option>
														<option>Sunday</option>
														<option>Monday</option>
														<option>Tuesday</option>
														<option>Wednesday</option>
														<option>Thursday</option>
														<option>Friday</option>
														<option>Saturday</option>
													</f:select>
												</div>

											</div>

											<div class="row">
												<div class="form-group col-11">
													<label for="cemail">Dish</label><input id="dish"
														class="form-control" type="text">
												</div>

												<div class="form-group col-1 mt-4">
													<button data-repeater-create="" type="button"
														onclick="fn()"
														class="btn btn-info btn-sm icon-btn ml-2 mb-2">
														<i class="mdi mdi-plus"></i>
													</button>
												</div>

											</div>

											<div class="table-responsive" id="tbdiv"
												style="display: none">
												<table class="table" id="tb1">
													<thead>
														<tr>
															<th>No.</th>
															<th>Name of Dish</th>
															<th>Upload Dish Image</th>
															<th>Action</th>
														</tr>
													</thead>
												</table>
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
		src="<%=request.getContextPath()%>/vendorResources/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/jquery.validate.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/bootstrap-maxlength.min.js"></script>
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

	<script
		src="<%=request.getContextPath()%>/vendorResources/js/custom.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/bt-maxLength.js"></script>
	<!-- <script src="<%=request.getContextPath()%>/vendorResources/js/file-uo.js"></script> -->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/file-upload.js"></script>
	<!-- End custom js for this page-->
	
		<script 
		src="<%=request.getContextPath()%>/vendorResources/js/custom/addTiffinMenu.js"></script>
	
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/toastDemo.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/custom/toaster.js"></script>
	
</body>

</html>
