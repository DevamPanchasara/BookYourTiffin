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
	href="<%=request.getContextPath()%>/userResources/css/css1.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/userResources/css/css2.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/userResources/css/css3.css"
	rel='stylesheet' type='text/css'>
<link
	href="<%=request.getContextPath()%>/userResources/css/css4.css"
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
									<h2>Complain</h2>
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

										<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
										<%@taglib prefix="f"
											uri="http://www.springframework.org/tags/form"%>

										<div class="comments-form-wrapper clearfix">
											<h3>Post Complain</h3>
											<f:form class="comment-form" onsubmit="return validateComplainDetais()" method="post" id="postComment"
												action="saveComplain" modelAttribute="complainVO"
												enctype="multipart/form-data">
												<div class="field">


													<div class="field aw-blog-comment-area">
														<f:input type="text" name="topic" id="complainSubject"
															class="input-text required-entry" title="Email Address"
															placeholder="Enter Your Complain Subject..."
															path="complainSubject" />
													</div>

													<div class="field aw-blog-comment-area" style="margin-bottom: 20px">
														<input type="file" name="file" id="file"
															class="input-text" title="file"
															placeholder="Enter Your Complain Subject..."
															style="width: -webkit-fill-available; margin-top: 10px;"></input>
													</div>

													<div class="field aw-blog-comment-area">
														<f:textarea rows="5" cols="50" class="input-text"
															title="Comment" id="complainDescription" name="comment"
															placeholder="Enter About Your Complain..."
															path="complainDescription"></f:textarea>
													</div>

													<div style="width: 96%" class="button-set">
														<input type="hidden" value="1" name="blog_id">
														<button type="submit" class="bnt-comment">
															<span><span>Post</span></span>
														</button>
													</div>
												</div>
											</f:form>
										</div>
										<!--comments-form-wrapper clearfix-->

										<div class="comments-wrapper">
											<h3>Your Complains</h3>
											<c:forEach items="${complainList}" var="p" varStatus="j">

												<ol class="commentlist">
													<li class="comment">
														<div>
															<img alt=""
																src="<%=request.getContextPath()%>/userResources/images/avatar.png"
																class="avatar avatar-60 photo">
															<div class="comment-text">

																<h6 style="float: right;">
																	<c:if test="${p.complainStatus eq 'Resolved'}">
																		<div class="badge badge-success float-right" style="Background-color: green">${p.complainStatus}</div>
																	</c:if>
																	<c:if test="${p.complainStatus eq 'Pending'}">
																		<div class="badge badge-warning float-right" style="Background-color: orange" >${p.complainStatus}</div>
																	</c:if>
																</h6>
																<p class="meta">
																	<strong>${p.loginVO.username }</strong> <a
																		href="<%=request.getContextPath()%>/documents/userComplain/${p.fileName}"
																		target="_blank"><i class="fas fa-file"></i></a>
																</p>
																<div class="description">

																	<p>Subject : ${p.complainSubject }</p>
																	<small style="margin-top: 5px;" class="text-muted">Description
																		: ${p.complainDescription} </small> <a
																		href="<%=request.getContextPath()%>/documents/vendorComplain/${p.fileName}"
																		target="_blank"><i class="mdi mdi-file"></i></a><br>
																	<small class="text-muted" style="margin-top: 5px;">Date
																		: ${p.complainDateTime} </small>

																</div>
															</div>
														</div>
													</li>
													<!-- #comment-## -->
													<li class="comment" style="margin-left: 250px;">
														<div>
															<img alt=""
																src="<%=request.getContextPath()%>/userResources/images/avatar.png"
																class="avatar avatar-60 photo">
															<div class="comment-text">

																<p class="meta">
																	<strong>Admin</strong>



																</p>
																<time>Date : ${p.replayDateTime}</time>
																<div class="description">
																	<p>Reply : ${p.complainReplay }</p>
																</div>
															</div>
														</div>
													</li>
													<!-- #comment-## -->
												</ol>
											</c:forEach>
											<!--commentlist-->
										</div>

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
		
		<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/toastDemo.js"></script>
	 
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/complain.js"></script> 

</body>
</html>