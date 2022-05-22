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
							<div class="card-header">
									<h4 class="mb-0 mt-2 col-3">Complain Reply</h4>
								</div>
								<div class="card-body">
									<%@taglib prefix="f"
										uri="http://www.springframework.org/tags/form"%>
										<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

									<f:form class="cmxform" id="signupForm" method="post"
										action="saveComplainsReplay" modelAttribute="complainVO">
										<fieldset>
											<div class="form-group">
												<label for="complainSubject">Complain Subject</label>
												<f:input id="complainSubject" class="form-control"
													name="complainSubject" path="complainSubject"
													readonly="true"/>
											</div>
											<div class="form-group">
												<label for="complainDescription">Complain Description</label>
												<f:input id="complainDescription" class="form-control" name="complainDescription"
													path="complainDescription" readonly="true"/>
											</div>

											<div class="form-group">
												<label for="ccomment">Complain Reply</label>
												<f:textarea id="ccomment" class="form-control"
													name="comment" path="complainReplay" />
											</div>
											<f:hidden path="id"/>
											
											<f:hidden path="loginVO.loginId"/>
											<f:hidden path="complainDateTime"/>
											<f:hidden path="complainStatus"/>
											<f:hidden path="status"/>
											<f:hidden path="fileName"/>
											<f:hidden path="filePath"/>
											
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
		src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bt-maxLength.js"></script>
	<!-- End custom js for this page-->
</body>

</html>

