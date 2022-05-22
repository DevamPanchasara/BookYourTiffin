<!DOCTYPE html>
<html lang="en" class=" js no-touch localstorage">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
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
								<a href="/login" title="index">
									<div>
										<img src="userResources/images/latestlogo.png" alt="logo"
											style="height: 130px; width: 150px;">
									</div>
								</a>
							</div>
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
							<strong>Login</strong>
							<div class="content">
								
								<form action="j_spring_security_check" id="login-form"
									method="post" onsubmit="return validateLogin()">

									<ul class="form-list">
										<div class="input-box">
											<input type="text" placeholder="Enter Email Id*"
												class="input-text required-entry validate-email"
												name="username" id="username"> <span style="color:red;"
												id="userErrDivId"></span>
										</div>
										</br>
										<div class="input-box">
											<input type="password" placeholder="Enter Password*"
												class="input-text" name="password" id="password"> <span style="color:red;"
												id="passwordErrDivId"></span>
										</div>
										</br>
										<a href="#" class="forgot-word"
											style="float: right; color: #2a5b6c;">Forgot Your
											Password?</a>
									</ul>

									<div class="buttons-set">
										<a href="menu">
											<button type="submit" class="button login" title="Login"
												name="send" id="send2">
												<span>Login</span>
											</button>
										</a>

									</div>
								</form>
								<br> <br> <br> <br> <br> <br> <br>


								<div class="row">
									<div class="col-md-6 grid-margin">
										<a href="/vendorRegister">
											<button type="submit" title="Create an Account"
												class="button create-account">

												<span><span>Register as a vendor</span></span>
											</button>
										</a>
									</div>


									<div class="col-md-6 grid-margin">
										<a href="/userRegister">
											<button type="button" title="Create an Account"
												class="button create-account" onClick="">
												<span><span>Register as a User</span></span>
											</button>
										</a>
									</div>




								</div>



								<!--buttons-set-->
							</div>
							<!--content-->
						</div>
						
							<div class="col-2 registered-users">

								<img src="userResources/images/loginimage.jpg" alt="Not Found" />

							</div>
				</div>
				<!--buttons-set-->
			</div>
			<!--content-->
		</div>


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
	<script type="text/javascript" src="userResources/js/custom/login.js"></script>


</body>
</html>