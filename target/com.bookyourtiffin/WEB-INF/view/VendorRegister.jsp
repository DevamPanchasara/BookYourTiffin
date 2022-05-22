<!DOCTYPE html>
<html lang="en" class=" js no-touch localstorage">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vendor Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="robots" content="*">
<meta name="viewport" content="initial-scale=1.0, width=device-width">
<link rel="icon" href="#" type="image/x-icon">
<link rel="shortcut icon" href="#" type="image/x-icon">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css"
	href="userResources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="userResources/css/font-awesome.css" media="all">
<link rel="stylesheet" type="text/css"
	href="userResources/css/revslider.css">
<link rel="stylesheet" type="text/css"
	href="userResources/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="userResources/css/owl.theme.css">
<link rel="stylesheet" type="text/css"
	href="userResources/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css"
	href="userResources/css/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css"
	href="userResources/css/style.css" media="all">
<link rel="stylesheet" type="text/css"
	href="userResources/css/responsive.css" media="all">

<link
	href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,800,400'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i,900"
	rel="stylesheet">


</head>
<body class="  customer-account-login rtl" style="">
	<div id="page">
		<div class="top-section">
			<!-- <div class="container"> -->
			<header>
				<div id="header">
					<div class="container">
						<div class="header-container row">
							<div class="logo">
								<a href="/vendorRegister" title="index">
									<div>
										<img src="userResources/images/latestlogo.png" alt="logo"
											style="height: 130px; width: 150px;">
									</div>
								</a>
							</div>
							<a href="/login"><button type="submit" class="button login"
									style="float: right;" name="send" id="send2">
									<span style="color: #fff;">Login</span>
								</button></a>
						</div>
					</div>
				</div>
			</header>
			<!-- </div> -->
		</div>

		<!-- BEGIN Main Container -->

		<div
			class="main-container col1-layout wow bounceInUp animated animated"
			style="visibility: visible; margin-top: 110px">

			<div class="main container">

				<div class="account-login row">
					<!--page-title-->
					<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
					<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
					<input name="form_key" type="hidden" value="EPYwQxF6xoWcjLUr">
					<fieldset class="col2-set">

						<div class="col-1 new-users">
							<strong>Vendor Register</strong>
							<div class="content">

								<f:form class="pt-3" action="saveVendor" method="post"
									onsubmit="return ValidateVendor()" modelAttribute="VendorVO"
									enctype="multipart/form-data">

									<div class="form-list">
										<label for="email">Enter Your Name<em class="required">*</em></label>
										<div class="input-box">
											<f:input type="text" class="input-text required-entry"
												name="username" path="fullName" id="fullName" />
											<span style="color: red;" id="fullNameErrDivId"></span>
										</div>


										<div class="input-box">
											<label for="email">Enter Email Id<em class="required">*</em></label>
											<f:input type="text" class="input-text required-entry"
												id="username" name="username" path="loginvo.username" />
											<span style="color: red;" id="userErrDivId"></span>
										</div>

										<div class="input-box">
											<label for="contactno">Enter Contact Number<em
												class="required">*</em></label>
											<f:input type="text" id="contactno"
												class="input-text required-entry" name="username"
												path="contactno" />
											<span style="color: red;" id="contactNumberErrDivId"></span>
										</div>

										<div class="input-box">
											<label for="contactno">City<em class="required">*</em></label>
											<f:select id="cityId" class="input-text required-entry"
												name="cityVO.id" path="cityVO.id">
												<option value="">Select City</option>
												<c:forEach items="${cityList}" var="i">
													<option value="${i.id}">${i.cityName}</option>
												</c:forEach>
											</f:select>
											<span style="color: red;" id="cityIdDivId"></span>
										</div>


										<div class="input-box">
											<label for="email">Enter Your Address<em
												class="required">*</em></label>
											<f:input type="tel" class="input-text" id="address"
												path="address" />
											<span style="color: red;" id="addressErrDivId"></span>
										</div>

										<div class="input-box">
											<label for="email">Upload Your Id<em class="required">*</em></label>
											<input type="file" class="input-text" name="file" id="file" />
											<span style="color: red;" id="fileErrDivId"></span>
										</div>

									</div>

									<div class="buttons-set" style="margin-top: 10px">
										<button type="submit" class="button create-account"
											title="Login" name="send" id="send2">
											<span>Register</span>
										</button>
									</div>


									<!--buttons-set-->
								</f:form>
							</div>
							<!--content-->
						</div>

						<f:form action="j_spring_security_check" id="login-form"
							method="post">
							<div class="col-2 registered-users">

								<img src="userResources/images/regimage.jpeg" alt="Not Found" />

							</div>
						</f:form>
						<!--col-2 registered-users-->
					</fieldset>
					<!--col2-set-->


				</div>
				<!--account-login-->

			</div>
			<!--main-container-->

		</div>
		<!--col1-layout-->
	</div>
	<!--page-->

	<!-- JavaScript -->
	<script type="text/javascript" src="userResources/js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="userResources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="userResources/js/common.js"></script>
	<script type="text/javascript"
		src="userResources/js/jquery.bxslider.min.js"></script>
	<script type="text/javascript"
		src="userResources/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="userResources/js/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="userResources/js/jquery.mobile-menu.min.js"></script>
	<script type="text/javascript"
		src="userResources/js/custom/vendorRegistration.js"></script>


</body>
</html>