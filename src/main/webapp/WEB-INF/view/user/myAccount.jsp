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
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/star.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/font-awesome2.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/star.css"
	media="all">

<link href="<%=request.getContextPath()%>/userResources/css/css1.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/css2.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/css3.css"
	rel='stylesheet' type='text/css'>
<link href="<%=request.getContextPath()%>/userResources/css/css4.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/jquery.toast.min.css">
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
								<div class="breadcrumbs">
									<div class="row">

										<!--col-xs-12-->
									</div>
									<!--row-->
								</div>
								<div class="page-title">
									<h2>My Account</h2>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- BEGIN Main Container -->
		<div class="main-container col2-left-layout">
			<div class="main container">
				<div class="row">
					<div class="col-main col-sm-12 main-blog">
						<div id="main" class="blog-wrapper">
							<div id="primary" class="site-content">
								<div id="content" role="main">
									<article id="post-29" class="blog_entry clearfix"></article>
									<div class="comment-content wow bounceInUp animated animated"
										style="visibility: visible;">

										<!--comments-wrapper-->


										<div class="comments-form-wrapper clearfix"
											style="margin-left: -13px; margin-top: -50px; background-color: white;">
											<!-- <h3>My Account</h3> -->
											<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
											<%@taglib prefix="f"
												uri="http://www.springframework.org/tags/form"%>
											<f:form id="UserVO" onsubmit="return validateEditProfile()"
												class="pt-3" action="saveUser" method="post"
												enctype="multipart/form-data" modelAttribute="userVO">

												<div class="form-list">
													<label for="email">Enter Your Name<em
														class="required">*</em></label>
													<div class="input-box">
														<f:input id="fullName" name="fullName" type="text"
															class="input-text required-entry" path="fullName" />
													</div>



													<div class="input-box">
														<label for="contactno">Gender<em class="required">*</em></label><br>
														<f:select name="billing_address_id"
															id="billing-address-select" class="address-select"
															title="" onchange="billing.newAddress(!this.value)"
															path="gender" style="width: -webkit-fill-available;">

															<f:option value="Male">Male</f:option>
															<f:option value="Female">Female</f:option>
														</f:select>
													</div>

													<div class="input-box">
														<label for="email">Email Id<em
															class="required">*</em></label>
														<f:input id="username" readonly="true"
															name="loginvo.username" type="text"
															class="input-text required-entry" path="loginvo.username"
														style="
    background: lightgrey;
    cursor: not-allowed;
" />
													</div>


													<%-- <div class="input-box">
														<label type="password">Enter Your Password<em
															class="required">*</em></label>
														<f:input id="psw1" type="password" class="input-text"
															path="loginvo.password" name="psw1" />
													</div>

													<div class="input-box">
														<label type="password">Enter Your Confirm Password<em
															class="required">*</em></label> <input id="psw2" type="password"
															class="input-text" name="psw2" onkeyup="testPassword()" />
														<span id="passwordMatchingErrDivId"></span>
													</div> --%>

												</div>
												<br>

												<f:hidden path="id" />
												<f:hidden path="loginvo.password" />
												<f:hidden path="loginvo.loginId" />
												<f:hidden path="loginvo.enabled" />
												<f:hidden path="loginvo.role" />

												<!--buttons-set-->

												<br>
												<!-- <button type="submit" title="Edit"
													class="button btn-proceed-checkout">
													<span>Edit</span>
												</button> -->

												<button type="submit" class="button btn-default"
													data-dismiss="modal">Update</button>

											</f:form>

										</div>
									</div>
									<!--comments-form-wrapper clearfix-->



								</div>

							</div>

						</div>

					</div>
					<!--#main wrapper grid_8-->

				</div>
				<!--col-main col-sm-9-->
			</div>
		</div>
		<!--main-container-->

	</div>
	<!--col2-layout-->


	<%-- <jsp:include page="footer.jsp"></jsp:include>
 --%>
	</div>
	<!--page-->
	<!-- Mobile Menu-->



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
		src="<%=request.getContextPath()%>/userResources/js/custom/EditProfile.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/toastDemo.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/toaster.js"></script>

</body>
</html>