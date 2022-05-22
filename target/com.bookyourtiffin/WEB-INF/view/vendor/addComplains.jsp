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
									<h4 class="m-0">Post Complaint</h4>
								</div>
								<div class="card-body">

									<%@taglib prefix="f"
										uri="http://www.springframework.org/tags/form"%>
									<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


									<f:form class="cmxform" id="signupForm" method="post" onsubmit="return validateTableDetais()"
										action="saveComplains" modelAttribute="complainVO" enctype="multipart/form-data">
										<fieldset>
											<div class="form-group">
												<f:input path="complainSubject" id="complainSubject"
													placeholder="Enter Complain Subject" class="form-control"
													name="firstname" type="text" />
											</div>

											<div class="form-group">
												<f:textarea id="complainDescription" class="form-control"
													placeholder="Enter About Your Complain " name="comment"
													path="complainDescription" />
											</div>

											<div class="form-group">
												<input type="file" name="file" class="file-upload-default" id="file">
												<div class="input-group col-xs-12">
													<input type="text" class="form-control file-upload-info"
														disabled="" placeholder="Upload Complain Document">
													<span class="input-group-append">
														<button class="file-upload-browse btn btn-primary"
															type="button">Upload</button>
													</span>
												</div>
											</div>

											<input class="btn btn-primary" type="submit" value="Submit">
										</fieldset>
									</f:form>
								</div>
							</div>
						</div>
					</div>

					<div class="row mt-5">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="m-0">Your Complaints</h4>
								</div>
								<div class="card-body">

									<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
									<c:forEach items="${complainList}" var="p" varStatus="j">
										<div class="d-flex align-items-start">
											<img
												src="<%=request.getContextPath()%>/vendorResources/image/avatar.png"
												alt="profile" class="img-sm rounded-circle">
											<div class="ml-4" style="width: 100%">
												<h6>
													${p.loginVO.username}

													<c:if test="${p.complainStatus eq 'Resolved'}">
														<div class="badge badge-success float-right">${p.complainStatus}</div>
													</c:if>
													<c:if test="${p.complainStatus eq 'Pending'}">
														<div class="badge badge-warning float-right">${p.complainStatus}</div>
													</c:if>

												</h6>

												<p>Subject : ${p.complainSubject}</p>

												<small style="margin-top: 5px;" class="text-muted">Description
													: ${p.complainDescription} </small>
													<a href="<%=request.getContextPath()%>/documents/vendorComplain/${p.fileName}" target="_blank"><i class="mdi mdi-file"></i></a><br> <small
													class="text-muted" style="margin-top: 5px;">Date :
													${p.complainDateTime} </small>
											</div>
										</div>


										<div class="d-flex align-items-start profile-feed-item"
											style="margin-left: 205px;">
											<img
												src="<%=request.getContextPath()%>/vendorResources/image/avatar.png"
												alt="profile" class="img-sm rounded-circle">
											<div class="ml-4">
												<h6>
													Admin <small class="mr-4 text-muted float-right"></small>
												</h6>

												<small style="margin-top: 5px;" class="text-muted">Reply
													: ${p.complainReplay}</small><br> <small style="margin-top: 5px;"
													class="text-muted">Reply : ${p.replayDateTime}</small>
											</div>
										</div>

									</c:forEach>

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
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/bt-maxLength.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/file-upload.js"></script>
	<!-- End custom js for this page-->
	
	<script 
		src="<%=request.getContextPath()%>/vendorResources/js/custom/complain.js"></script>
	
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/toastDemo.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/custom/toaster.js"></script>
</body>

</html>
