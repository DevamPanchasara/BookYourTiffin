<!DOCTYPE html>
<html lang="en" class=" js no-touch localstorage">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forgot Password</title>
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
<div id="preloader" style="display: none;"></div>
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
										<img  src="<%=request.getContextPath()%>/userResources/images/loginlogo.png"  alt="logo" style="height: 100px; width: 170px;">
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

					<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
					<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
					<input name="form_key" type="hidden" value="EPYwQxF6xoWcjLUr">
					<fieldset class="col2-set">

						<div class="col-1 new-users">
							<strong>Forgot Password</strong>
							<div class="content">
								
								<form class="pt-3">

									<ul class="form-list">
										<div class="input-box">
											<input type="text" placeholder="Enter Email Id*"
												class="input-text required-entry validate-email"
												name="username" id="username"> 
												<span style="color:red;"
												id="emailAddressError"></span>
										</div>
									</ul>
<br>
									<div class="buttons-set">
											<button type="button" class="button login" title="Login"
												name="send" id="send2" onclick="verify()">
												<span>Submit</span>
											</button>
									</div>
								</form>
								<br> <br> <br> <br> <br> <br> <br>


								



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

<div id="myModal" class="modal fade" role="dialog"
		style="background: #333;">
		<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content">
				
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Verify OTP</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-12 mt-1">
								<div class="input-box name-firstname">
									<div class="input-box1">
									<input type="hidden" name="token" id="token">
									<input type="hidden" name="email" id="email">
										<input type="text" id="otp" name="otp" required="required"
											style="border: 1px solid #d1d1d1; width: 100%;"
											placeholder="Enter OTP" class="input-text">
									</div>
									<span  id="errMsg"></span>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="button" onclick="verifyOTP()">Verify</button>
					</div>
				</div>

		</div>
	</div>


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

	<script>
		function verify() {
			
			var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
			
			
			$('#emailAddressError').html();
			var emailAddress = document.getElementById("username");

			if (emailAddress.value.trim() === '') {

				$('#emailAddressError')
						.html('<span style="color:red;">Please enter email address registerd with us.</span>');

				return false;
			} else if (!emailAddress.value.match(mailformat)) {
				$('#emailAddressError')
				.html('<span style="color:red;">Please enter email address registerd with us.</span>');
				return false;
			} else {
				
				var xhttp = new XMLHttpRequest();
				$('#preloader').css('display','')
				
				xhttp.onreadystatechange = function() {
					  if (this.readyState == 4 && this.status == 200) {
						  $('#preloader').css('display','none')
						  if(xhttp.responseText && xhttp.responseText === 'true'){
							$('#emailAddressError').html('');
							sendOTP(emailAddress.value);
						}else{
							$('#emailAddressError')
							.html('<span style="color:red;"> '+ emailAddress.value  +' is not registerd with us.</span>');
						}
					  }
				};
				
				xhttp.open("GET", "verifyEmail?email="+emailAddress.value, true);
				xhttp.send();
			}
		}
		
		function sendOTP(email){
			var emailAddress = document.getElementById("username");
			var xhttp = new XMLHttpRequest();
			$('#preloader').css('display','')
			xhttp.onreadystatechange = function() {
				  if (this.readyState == 4 && this.status == 200) {
					if(xhttp.responseText){
						$('#preloader').css('display','none')
						var jsn = JSON.parse(xhttp.responseText);
						
						$('#token').val(jsn.token);
						$('#email').val(jsn.email);
						
						$('#myModal').modal('show');
					}
				  }
			};
			
			xhttp.open("GET", "sendOTP?email="+emailAddress.value, true);
			xhttp.send();
		}
		function verifyOTP(){
			
			$('#errMsg').html("");
			var otp = document.getElementById("otp");
			var email = document.getElementById("email");
			var token = document.getElementById("token");
			
			if(otp.value !== ''){
				var xhttp = new XMLHttpRequest();
				$('#preloader').css('display','')
				xhttp.onreadystatechange = function() {
					  if (this.readyState == 4 && this.status == 200) {
						if(xhttp.responseText){
							$('#preloader').css('display','none')
							
							var jsn = JSON.parse(xhttp.responseText);
							console.log(jsn.status);
							console.log(typeof jsn.status);
							console.log( jsn.status === true);
							if(jsn.status === true){
								$('#errMsg').html("");
								
								document.cookie = "username="+email.value;
								
								window.location.href = "/updatePassword"
							}else{
								$('#errMsg').html("OTP not matched");
							}
							
						}
					  }
				};
				
				var query = "?email="+email.value;
				
				query = query + '&otp='+otp.value;
				query = query + '&token='+token.value;
				
				xhttp.open("GET", "verifyOTP"+query, true);
				xhttp.send();
			}else{
				// Show error
				return false;
			}
			
			
		}
		
	</script>

</body>
</html>