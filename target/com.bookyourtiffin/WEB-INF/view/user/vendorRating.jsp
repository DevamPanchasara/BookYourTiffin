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

<body>
	<div id="page">
		<div class="top-section">
			<div class="container">


				<jsp:include page="header.jsp"></jsp:include>
				<!--container-->

			</div>
		</div><%@taglib prefix="f"  uri="http://www.springframework.org/tags/form"%>
				<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

											<c:forEach items="${vendorList}" var="v" varStatus="j">
		
		<div class="container">
			<div class="inside-header">
				<div class="container">
					<div class="row">
						<div class="col-lg-7">
						
							<div class="page-heading">
						
								<div class="page-title">
									<h2>Rate : ${v.fullName}</h2>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
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

										<div class="comments-form-wrapper clearfix">
											<h3>Post Rating</h3>

											<%@taglib prefix="f"
												uri="http://www.springframework.org/tags/form"%>
											<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

											<c:forEach items="${vendorList}" var="v" varStatus="j">

												<f:form class="comment-form" method="post" id="postComment"
													action="saveVendorRating?vendorid=${v.id}" modelAttribute="vendorRatingVO">

													<div class="field">

														<fieldset class="rating" style="margin-bottom: 3rem">
															<input type="radio" id="star5" name="rating" value="5" /><label
																class="full" for="star5" title="Awesome - 5 stars"></label>
															<input type="radio" id="star4" name="rating" value="4" /><label
																class="full" for="star4" title="Pretty good - 4 stars"></label>
															<input type="radio" id="star3" name="rating" value="3" /><label
																class="full" for="star3" title="Meh - 3 stars"></label>
															<input type="radio" id="star2" name="rating" value="2" /><label
																class="full" for="star2" title="Kinda bad - 2 stars"></label>
															<input type="radio" id="star1" name="rating" value="1" /><label
																class="full" for="star1" title="Sucks big time - 1 star"></label>
														</fieldset>


														<div class="field aw-blog-comment-area">
															<f:textarea rows="5" cols="50" class="input-text"
																title="feedbackSubject" id="feedbackSubject"
																name="comment"
																placeholder="Enter About Your Feedback..."
																path="ratingSubject" />
														</div>


														<div style="width: 96%" class="button-set">
															<button type="submit" class="bnt-comment">
																<span><span>Post</span></span>
															</button>
														</div>
													</div>
												</f:form>

											</c:forEach>
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


		<jsp:include page="footer.jsp"></jsp:include>

	</div>
	<!--page-->


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

</body>
</html>