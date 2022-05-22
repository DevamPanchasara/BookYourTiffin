\
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

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/jquery.toast.min.css">


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
								<a href="/userRegister" title="index">
									<div>
										<img src="userResources/images/latestlogo.png" alt="logo"
											style="height: 130px; width: 150px;">
									</div>
								</a>
							</div>
							<a href="/login"><button type="submit" class="button login"
									style="float: right; color: white;" name="send" id="send2">
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



					<input name="form_key" type="hidden" value="EPYwQxF6xoWcjLUr">
					<fieldset class="col2-set">

						<div class="col-1 new-users">
							<strong>User Registration</strong>
							<div class="content">

								<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
								<%@taglib prefix="f"
									uri="http://www.springframework.org/tags/form"%>
								<f:form id="UserVO" onsubmit="return matchPassword()"
									class="pt-3" action="saveUser" method="post"
									enctype="multipart/form-data" modelAttribute="userVO">

									<div class="form-list">
										<label for="email">Enter Your Name<em class="required">*</em></label>
										<div class="input-box">
											<f:input id="fullName" name="fullName" type="text"
												class="input-text required-entry" path="fullName" />
										</div>

										<%-- <div class="input-box">
											<label for="contactno">Gender<em class="required">*</em></label>
											<f:input id="gender" name="contactno" type="text"
												class="input-text required-entry" path="gender" />
										</div> --%>

										<div class="input-box">
											<label for="contactno">Gender<em class="required">*</em></label><br>
											<f:select name="billing_address_id"
												id="billing-address-select" class="address-select" title=""
												onchange="billing.newAddress(!this.value)" path="gender"
												style="width: -webkit-fill-available;">
												<option value="Male" selected="selected">Male</option>
												<option value="Female">Female</option>
											</f:select>
										</div>


										<div class="input-box">
											<label for="email">Enter Email Id<em class="required">*</em></label>
											<f:input id="username" name="loginvo.username" type="text"
												class="input-text required-entry" path="loginvo.username" />
										</div>


										<div class="input-box">
											<label type="password">Enter Your Password<em
												class="required">*</em></label>
											<f:input id="psw1" type="password" class="input-text"
												path="loginvo.password" name="psw1" />
										</div>

										<div class="input-box">
											<label type="password">Enter Your Confirm Password<em
												class="required">*</em></label> <input id="psw2" type="password"
												class="input-text" name="psw2" onkeyup="testPassword()" /> <span
												id="passwordMatchingErrDivId"></span>
										</div>

									</div>

									<div class="buttons-set" style="margin-top: 10px">
										<button type="submit" class="button create-account"
											title="Register" name="send" id="send2">
											<span>Register</span>
										</button>
									</div>
									<!--buttons-set-->
									<div></div>
								</f:form>
							</div>
							<!--content-->
						</div>

						<form id="login-form" action="j_spring_security_check"
							method="post">
							<div class="col-2 registered-users">

								<img src="userResources/images/regimage.jpeg" alt="Not Found" />

							</div>
							<div></div>
						</form>
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
		src="userResources/js/validationpassword.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/toastDemo.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/toaster.js"></script>


</body>
</html>