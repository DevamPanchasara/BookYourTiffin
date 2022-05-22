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
	href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.png" />

<!-- endinject -->


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/vendorResources/css/star.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/vendorResources/css/fort-awesome.css">


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
							<h4 class="m-0">Vendor Rating</h4>
						</div>
						<div class="card-body">

							<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
							<c:forEach items="${vendorRatingList}" var="p" varStatus="j">

								<div class="d-flex align-items-start profile-feed-item">

									<img
										src="<%=request.getContextPath()%>/vendorResources/image/avatar.png"
										alt="profile" class="img-sm rounded-circle">
									<div class="ml-4" style="width: 100%">
										
											
											<div style="float: right ;color: #FFD700" >
												<c:forEach var="s" begin="1" end="${p.vendorRating}">
															<i class="mdi mdi-star"></i>
														</c:forEach>
											</div>
											<h6 class="m-0">${p.loginVO.username}</h6>
									
										Subject : ${p.ratingSubject}<br>
									</div>
								</div>

							</c:forEach>
						</div>
					</div>

					<%-- <div class="card">
						<div class="card-body">
							<h4 class="card-title">View Feedback</h4>
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>NO</th>
													<th>User Name</th>
													<th>Feedback Description</th>
													<th>Rating</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
												<c:forEach items="${vendorRatingList}" var="p" varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td><div style="cursor: pointer;" class="badge badge-outline-primary badge-pill" title="user">${p.loginVO.username}</div></td>	
														<td>${p.ratingSubject}</td>
														<td><fieldset class="rating">
														<c:forEach var="s" begin="1" end="${p.vendorRating}">
															<i class="mdi mdi-star"></i>
														</c:forEach>
														</fieldset>
														
														</td>
														<td><a href="deleteFeedback?id=${p.id}"><i
																class="mdi mdi-delete"
																style="font-size: 20px; color: #ee4747; margin-left: 15px;"></i></a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div> --%>
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
	<!-- Plugin js for this page-->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page-->
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
		src="<%=request.getContextPath()%>/adminResources/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>

</html>