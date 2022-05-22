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

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/jquery.toast.min.css">

<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/vendorResources/image/favicon.png" />



<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/vendorResources/css/star.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/vendorResources/css/fort-awesome.css">
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
						<div class="col-lg-12".>
							<div class="card">
								<div class="card-header">
									<h4 class="mb-0 mt-2 col-3">Post Feedback</h4>
								</div>
								<div class="card-body">

									<%@taglib prefix="f"
										uri="http://www.springframework.org/tags/form"%>
									<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


									<f:form class="cmxform" id="signupForm" method="post"
										action="saveFeedback" modelAttribute="feedbackVO"
										onsubmit="return validatefeedbackDetais()">
										<fieldset class="rating" >

											<input type="radio" id="star5" name="rating" value="5" /> <label
												class="full" for="star5" title="Awesome - 5 stars"></label>

											<input type="radio" id="star4" name="rating" value="4" /> <label
												class="full" for="star4" title="Pretty good - 4 stars"></label>

											<input type="radio" id="star3" name="rating" value="3" /> <label
												class="full" for="star3" title="Meh - 3 stars"></label> <input
												type="radio" id="star2" name="rating" value="2" /> <label
												class="full" for="star2" title="Kinda bad - 2 stars"></label>

											<input type="radio" id="star1" name="rating" value="1" /> <label
												class="full" for="star1" title="Sucks big time - 1 star"></label>

										</fieldset>
										<div class="form-group" id="feedbackSubject">
											<br> <br> <label for="subject">Feedback
												Subject</label>
											<f:textarea path="feedbackSubject" id="feedbackSubject"
												class="form-control" name="feedbackSubject"></f:textarea>
										</div>
										<input class="btn btn-primary" type="submit" value="Submit">
									</f:form>
								</div>
							</div>
						</div>
					</div>

					<div class="row mt-5">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="m-0">Vendor Feedback</h4>
								</div>
								<div class="card-body">

									<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
									<c:forEach items="${feedbackList}" var="p" varStatus="j">
										<div class="d-flex align-items-start profile-feed-item">

											<img
												src="<%=request.getContextPath()%>/vendorResources/image/avatar.png"
												alt="profile" class="img-sm rounded-circle">
											<div class="ml-4" style="width: 100%">
												<div style="float: right; color: #FFD700">
													<c:forEach var="s" begin="1" end="${p.feedbackRating}">
														<i class="mdi mdi-star"></i>
													</c:forEach>
												</div>

												<h6>${p.loginVO.username}</h6>

												Subject : ${p.feedbackSubject}<br>
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
	<!-- End custom js for this page-->

	<script
		src="<%=request.getContextPath()%>/vendorResources/js/custom/feedback.js"></script>

	<script
		src="<%=request.getContextPath()%>/vendorResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/toastDemo.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResources/js/custom/toaster.js"></script>
</body>

</html>
