
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping Cart Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="robots" content="*">
<meta name="viewport" content="initial-scale=1.0, width=device-width">
<link rel="icon" href="#" type="image/x-icon">
<link rel="shortcut icon" href="#" type="image/x-icon">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/font-awesome.css"
	media="all">
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
		</div>
		<div class="container">
			<div class="inside-header">
				<div class="container">
					<div class="row">
						<div class="col-lg-7">
							<div class="page-heading">

								<div class="page-title">
									<h2>Shopping Cart</h2>
								</div>
							</div>
						</div>
						<div class="col-lg-5"></div>
					</div>
				</div>
			</div>
		</div>

		<!-- BEGIN Main Container -->

		<div class="main-container col1-layout wow bounceInUp animated">
			<div class="main">
				<div class="cart wow bounceInUp animated">
					  <div class="table-responsive shopping-cart-tbl  container">
          <form action="" method="post">
            <input name="form_key" type="hidden" value="EPYwQxF6xoWcjLUr">
            <fieldset>
              <table id="shopping-cart-table" class="data-table cart-table table-striped">
                <colgroup>
                <col width="1">
                <col>
                <col width="1">
                <col width="1">
                <col width="1">
                <col width="1">
                <col width="1">
                </colgroup>
                <thead>
                  <tr class="first last">
                    <th rowspan="1">&nbsp;</th>
                    <th rowspan="1"><span class="nobr">Product Name</span></th>
                    <th rowspan="1"></th>
                    <th class="a-center" colspan="1"><span class="nobr">Unit Price</span></th>
                    <th rowspan="1" class="a-center">Qty</th>
                    <th class="a-center" colspan="1">Subtotal</th>
                    <th rowspan="1" class="a-center">&nbsp;</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr class="first last">
                    <td colspan="50" class="a-right last"><button type="button" title="Continue Shopping" class="button btn-continue" onClick=""><span><span>Continue Shopping</span></span></button>
                      <button type="submit" name="update_cart_action" value="update_qty" title="Update Cart" class="button btn-update"><span><span>Update Cart</span></span></button>
                      <button type="submit" name="update_cart_action" value="empty_cart" title="Clear Cart" class="button btn-empty" id="empty_cart_button"><span><span>Clear Cart</span></span></button></td>
                  </tr>
                </tfoot>
                <tbody>
                  <tr class="first last odd">
                    <td class="image hidden-table"><a href="product-detail.html" title="Women&#39;s Georgette Animal Print" class="product-image"><img src="<%=request.getContextPath()%>/userResources/images/p8.jpg" width="75" alt="Women&#39;s Georgette Animal Print"></a></td>
                    <td><h2 class="product-name"> <a href="product-detail.html">Crispy Chicken Kabab</a> </h2></td>
                    <td class="a-center hidden-table"><a href="#" class="edit-bnt" title="Edit item parameters"></a></td>
                    <td class="a-right hidden-table"><span class="cart-price"> <span class="price">$129.00</span> </span></td>
                    <td class="a-center movewishlist"><input name="cart[26340][qty]" value="1" size="4" title="Qty" class="input-text qty" maxlength="12"></td>
                    <td class="a-right movewishlist"><span class="cart-price"> <span class="price">$129.00</span> </span></td>
                    <td class="a-center last"><a href="#" title="Remove item" class="button remove-item"><span><span>Remove item</span></span></a></td>
                  </tr>
                  <tr class="odd">
                    <td class="image hidden-table"><a href="product-detail.html" title="Women&#39;s Georgette Animal Print" class="product-image"><img src="<%=request.getContextPath()%>/userResources/images/p3.jpg" width="75" alt="Women&#39;s Georgette Animal Print"></a></td>
                    <td><h2 class="product-name"> <a href="product-detail.html">Crispy Chicken Kabab</a> </h2></td>
                    <td class="a-center hidden-table"><a href="#" class="edit-bnt" title="Edit item parameters"></a></td>
                    <td class="a-right hidden-table"><span class="cart-price"> <span class="price">$129.00</span> </span></td>
                    <td class="a-center movewishlist"><input name="cart[26340][qty]" value="1" size="4" title="Qty" class="input-text qty" maxlength="12"></td>
                    <td class="a-right movewishlist"><span class="cart-price"> <span class="price">$129.00</span> </span></td>
                    <td class="a-center last"><a href="#" title="Remove item" class="button remove-item"><span><span>Remove item</span></span></a></td>
                  </tr>
                  <tr class="odd">
                    <td class="image hidden-table"><a href="product-detail.html" title="Women&#39;s Georgette Animal Print" class="product-image"><img src="<%=request.getContextPath()%>/userResources/images/p1.jpg" width="75" alt="Women&#39;s Georgette Animal Print"></a></td>
                    <td><h2 class="product-name"> <a href="product-detail.html">Crispy Chicken Kabab</a> </h2></td>
                    <td class="a-center hidden-table"><a href="#" class="edit-bnt" title="Edit item parameters"></a></td>
                    <td class="a-right hidden-table"><span class="cart-price"> <span class="price">$129.00</span> </span></td>
                    <td class="a-center movewishlist"><input name="cart[26340][qty]" value="1" size="4" title="Qty" class="input-text qty" maxlength="12"></td>
                    <td class="a-right movewishlist"><span class="cart-price"> <span class="price">$129.00</span> </span></td>
                    <td class="a-center last"><a href="#" title="Remove item" class="button remove-item"><span><span>Remove item</span></span></a></td>
                  </tr>
                  <tr class="last">
                    <td class="image hidden-table"><a href="product-detail.html" title="Women&#39;s Georgette Animal Print" class="product-image"><img src="<%=request.getContextPath()%>/userResources/images/p9.jpg" width="75" alt="Women&#39;s Georgette Animal Print"></a></td>
                    <td><h2 class="product-name"> <a href="product-detail.html">Crispy Chicken Kabab</a> </h2></td>
                    <td class="a-center hidden-table"><a href="#" class="edit-bnt" title="Edit item parameters"></a></td>
                    <td class="a-right hidden-table"><span class="cart-price"> <span class="price">$129.00</span> </span></td>
                    <td class="a-center movewishlist"><input name="cart[26340][qty]" value="1" size="4" title="Qty" class="input-text qty" maxlength="12"></td>
                    <td class="a-right movewishlist"><span class="cart-price"> <span class="price">$129.00</span> </span></td>
                    <td class="a-center last"><a href="#" title="Remove item" class="button remove-item"><span><span>Remove item</span></span></a></td>
                  </tr>
                </tbody>
              </table>
            </fieldset>
          </form>
        </div> 

					<!-- BEGIN CART COLLATERALS -->

					<div class="cart-collaterals container">
						<!-- BEGIN COL2 SEL COL 1 -->
						<div class="row">

							<!-- BEGIN TOTALS COL 2 -->
							<div class="col-sm-4">
								<div class="shipping">
									<h3>Estimate Shipping and Tax</h3>
									<div class="shipping-form">
										<form action="" method="post" id="shipping-zip-form">
											<p>Enter your destination to get a shipping estimate.</p>
											<ul class="form-list">
												<li><label for="country" class="required"><em>*</em>Country</label>
													<div class="input-box">
														<select name="country_id" id="country"
															class="validate-select" title="Country">
															<option value=""></option>

															<option value="ZM">Zambia</option>
															<option value="ZW">Zimbabwe</option>
														</select>
													</div></li>
												<li><label for="region_id">State/Province</label>
													<div class="input-box">
														<select id="region_id" name="region_id"
															title="State/Province" defaultvalue=""
															class="required-entry validate-select">
															<option value="">Please select region, state or
																province</option>
															<option value="1" title="Alabama">Alabama</option>
															<option value="2" title="Alaska">Alaska</option>
															<option value="3" title="American Samoa">American
																Samoa</option>
															<option value="4" title="Arizona">Arizona</option>
															<option value="5" title="Arkansas">Arkansas</option>
															<option value="6" title="Armed Forces Africa">Armed
																Forces Africa</option>
															<option value="7" title="Armed Forces Americas">Armed
																Forces Americas</option>
															<option value="8" title="Armed Forces Canada">Armed
																Forces Canada</option>
															<option value="9" title="Armed Forces Europe">Armed
																Forces Europe</option>
															<option value="10" title="Armed Forces Middle East">Armed
																Forces Middle East</option>
															<option value="11" title="Armed Forces Pacific">Armed
																Forces Pacific</option>
															<option value="12" title="California">California</option>
															<option value="13" title="Colorado">Colorado</option>
															<option value="14" title="Connecticut">Connecticut</option>
															<option value="15" title="Delaware">Delaware</option>
															<option value="16" title="District of Columbia">District
																of Columbia</option>
															<option value="17" title="Federated States Of Micronesia">Federated
																States Of Micronesia</option>
															<option value="18" title="Florida">Florida</option>
															<option value="19" title="Georgia">Georgia</option>
															<option value="20" title="Guam">Guam</option>
															<option value="21" title="Hawaii">Hawaii</option>
															<option value="22" title="Idaho">Idaho</option>
															<option value="23" title="Illinois">Illinois</option>
															<option value="24" title="Indiana">Indiana</option>
															<option value="25" title="Iowa">Iowa</option>
															<option value="26" title="Kansas">Kansas</option>
															<option value="27" title="Kentucky">Kentucky</option>
															<option value="28" title="Louisiana">Louisiana</option>
															<option value="29" title="Maine">Maine</option>
															<option value="30" title="Marshall Islands">Marshall
																Islands</option>
															<option value="31" title="Maryland">Maryland</option>
															<option value="32" title="Massachusetts">Massachusetts</option>
															<option value="33" title="Michigan">Michigan</option>
															<option value="34" title="Minnesota">Minnesota</option>
															<option value="35" title="Mississippi">Mississippi</option>
															<option value="36" title="Missouri">Missouri</option>
															<option value="37" title="Montana">Montana</option>
															<option value="38" title="Nebraska">Nebraska</option>
															<option value="39" title="Nevada">Nevada</option>
															<option value="40" title="New Hampshire">New
																Hampshire</option>
															<option value="41" title="New Jersey">New Jersey</option>
															<option value="42" title="New Mexico">New Mexico</option>
															<option value="43" title="New York">New York</option>
															<option value="44" title="North Carolina">North
																Carolina</option>
															<option value="45" title="North Dakota">North
																Dakota</option>
															<option value="46" title="Northern Mariana Islands">Northern
																Mariana Islands</option>
															<option value="47" title="Ohio">Ohio</option>
															<option value="48" title="Oklahoma">Oklahoma</option>
															<option value="49" title="Oregon">Oregon</option>
															<option value="50" title="Palau">Palau</option>
															<option value="51" title="Pennsylvania">Pennsylvania</option>
															<option value="52" title="Puerto Rico">Puerto
																Rico</option>
															<option value="53" title="Rhode Island">Rhode
																Island</option>
															<option value="54" title="South Carolina">South
																Carolina</option>
															<option value="55" title="South Dakota">South
																Dakota</option>
															<option value="56" title="Tennessee">Tennessee</option>
															<option value="57" title="Texas">Texas</option>
															<option value="58" title="Utah">Utah</option>
															<option value="59" title="Vermont">Vermont</option>
															<option value="60" title="Virgin Islands">Virgin
																Islands</option>
															<option value="61" title="Virginia">Virginia</option>
															<option value="62" title="Washington">Washington</option>
															<option value="63" title="West Virginia">West
																Virginia</option>
															<option value="64" title="Wisconsin">Wisconsin</option>
															<option value="65" title="Wyoming">Wyoming</option>
														</select> <input type="text" id="region" name="region" value=""
															title="State/Province" class="input-text required-entry"
															style="display: none;">
													</div></li>
												<li><label for="postcode">Zip/Postal Code</label>
													<div class="input-box">
														<input class="input-text validate-postcode" type="text"
															id="postcode" name="estimate_postcode" value="">
													</div></li>
											</ul>
											<div class="buttons-set11">
												<button type="button" title="Get a Quote"
													onClick="coShippingMethodForm.submit()"
													class="button get-quote">
													<span>Get a Quote</span>
												</button>
											</div>
											<!--buttons-set11-->
										</form>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="discount">
									<h3>Discount Codes</h3>
									<form id="discount-coupon-form" action="" method="post">
										<label for="coupon_code">Enter your coupon code if you
											have one.</label> <input type="hidden" name="remove"
											id="remove-coupone" value="0"> <input
											class="input-text fullwidth" type="text" id="coupon_code"
											name="coupon_code" value="">
										<button type="button" title="Apply Coupon"
											class="button coupon " onClick="discountForm.submit(false)"
											value="Apply Coupon">
											<span>Apply Coupon</span>
										</button>
									</form>
								</div>
								<!--discount-->
							</div>
							<!--col-sm-4-->

							<div class="col-sm-4">
								<div class="totals">
									<h3>Shopping Cart Total</h3>
									<div class="inner">
										<table id="shopping-cart-totals-table"
											class="table shopping-cart-table-total">
											<colgroup>
												<col>
												<col width="1">
											</colgroup>
											<tfoot>
												<tr>
													<td style="" class="a-left" colspan="1"><strong>Grand
															Total</strong></td>
													<td style="" class="a-right"><strong><span
															class="price">$129.00</span></strong></td>
												</tr>
											</tfoot>
											<tbody>
												<tr>
													<td style="" class="a-left" colspan="1">Subtotal</td>
													<td style="" class="a-right"><span class="price">$129.00</span></td>
												</tr>
											</tbody>
										</table>
										<ul class="checkout">
											<li>
												<button type="button" title="Proceed to Checkout"
													class="button btn-proceed-checkout" onClick="">
													<span>Proceed to Checkout</span>
												</button>
											</li>
											<br>
											<li><a href="multiple-addresses.html"
												title="Checkout with Multiple Addresses">Checkout with
													Multiple Addresses</a></li>
											<br>
										</ul>
									</div>
									<!--inner-->
								</div>
								<!--totals-->
							</div>
							<!--col-sm-4-->

						</div>
						<!--cart-collaterals-->

					</div>
				</div>
				<!--cart-->

			</div>
			<!--main-container-->

		</div>
		<!--col1-layout-->


		<jsp:include page="footer.jsp"></jsp:include>


	</div>
	<!--page-->
	<!-- Mobile Menu-->
	<div id="mobile-menu">
		<ul>
			<li>
				<div class="mm-search">
					<form id="search1" name="search">
						<div class="input-group">
							<input type="text" class="form-control simple"
								placeholder="Search ..." name="srch-term" id="srch-term">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</li>
			<li>
				<div class="home">
					<a href="#">Home</a>
				</div>
			</li>
			<li><a href="#">Pages</a>
				<ul>
					<li><a href="grid.html">Food Grid Page</a></li>
					<li><a href="list.html">Restaurants Grid Page</a></li>
					<li><a href="product-detail.html">Restaurant Detail</a></li>
					<li><a href="shopping-cart.html">Cart Page</a></li>
					<li><a href="checkout.html">Checkout</a></li>
					<li><a href="wishlist.html">Wishlist</a></li>
					<li><a href="dashboard.html">Dashboard</a></li>
					<li><a href="about-us.html">About us</a></li>
					<li><a href="blog.html">Blog</a>
						<ul>
							<li><a href="blog-detail.html">Blog Detail</a></li>
						</ul></li>
					<li><a href="contact-us.html">Contact us</a></li>
					<li><a href="404error.html">404 Error Page</a></li>
				</ul></li>
			<li><a href="grid.html">Restaurants‎‎</a>
				<ul>
					<li><a href="grid.html">Newly Opened‎</a>
						<ul>
							<li><a href="grid.html">Plaza Singapura</a></li>
							<li><a href="grid.html">Clementi</a></li>
							<li><a href="grid.html">Bugis Junction</a></li>
							<li><a href="grid.html">Jurong Point</a></li>
						</ul></li>
					<li><a href="grid.html">Upcoming Events‎</a>
						<ul>
							<li><a href="grid.html">Woodlands</a></li>
							<li><a href="grid.html">Yishun</a></li>
							<li><a href="grid.html">Bukit Panjang</a></li>
							<li><a href="grid.html">Tampines</a></li>
						</ul></li>
					<li><a href="grid.html">Chinese</a>
						<ul>
							<li><a href="grid.html">Sengkang</a></li>
							<li><a href="grid.html">Bedok</a></li>
							<li><a href="grid.html">Paya Lebar</a></li>
							<li><a href="grid.html">Hougang</a></li>
						</ul></li>
					<li><a href="grid.html">Bars & Pubs</a>
						<ul>
							<li><a href="grid.html">Ang Mo Kio</a></li>
							<li><a href="grid.html">Pasir Ris East</a></li>
							<li><a href="grid.html">Serangoon</a></li>
							<li><a href="grid.html">Oro Rocket</a></li>
						</ul></li>
					<li><a href="grid.html">Rooftop</a>
						<ul>
							<li><a href="grid.html">Butterhead</a></li>
							<li><a href="grid.html">Red Coral</a></li>
							<li><a href="grid.html">Rolla Rosa Lettuce</a></li>
							<li><a href="grid.html">Summercrisp</a></li>
						</ul></li>
					<li><a href="grid.html">Seafood</a>
						<ul>
							<li><a href="grid.html">Green Goddess</a></li>
							<li><a href="grid.html">Grilled Broccoli</a></li>
							<li><a href="grid.html">Panzanella</a></li>
							<li><a href="grid.html">Green Tomato</a></li>
						</ul></li>
				</ul></li>
			<li><a href="grid.html">Foods‎</a>
				<ul>
					<li><a href="grid.html">Seafood</a>
						<ul>
							<li><a href="grid.html">Tomatoes</a></li>
							<li><a href="grid.html">Cucumbers</a></li>
							<li><a href="grid.html">Peppers & Capsicums</a></li>
							<li><a href="grid.html">Avocados</a></li>
						</ul></li>
					<li><a href="grid.html">Fastfood</a>
						<ul>
							<li><a href="grid.html">Hellmann's</a></li>
							<li><a href="grid.html">Giuseppe Giusti</a></li>
							<li><a href="grid.html">Unitednature</a></li>
							<li><a href="grid.html">Walden Farms</a></li>
						</ul></li>
					<li><a href="grid.html">Beverages</a>
						<ul>
							<li><a href="grid.html">Pineapples</a></li>
							<li><a href="grid.html">Red Apple</a></li>
							<li><a href="grid.html">Strawberries</a></li>
							<li><a href="grid.html">Row Mangos</a></li>
						</ul></li>
					<li><a href="grid.html">Street Food</a>
						<ul>
							<li><a href="grid.html">Italian Baby Spinach</a></li>
							<li><a href="grid.html">Australia Green Kale</a></li>
							<li><a href="grid.html">Sustenir Fresh Toscano</a></li>
							<li><a href="grid.html">Oro Rocket Salad</a></li>
						</ul></li>
					<li><a href="grid.html">Pizza</a>
						<ul>
							<li><a href="grid.html">Butterhead</a></li>
							<li><a href="grid.html">Red Coral</a></li>
							<li><a href="grid.html">Rolla Rosa Lettuce</a></li>
							<li><a href="grid.html">Summercrisp</a></li>
						</ul></li>
					<li><a href="grid.html">Bakery & Cake</a>
						<ul>
							<li><a href="grid.html">Green Goddess</a></li>
							<li><a href="grid.html">Grilled Broccoli</a></li>
							<li><a href="grid.html">Panzanella</a></li>
							<li><a href="grid.html">Green Tomato</a></li>
						</ul></li>
				</ul></li>
			<li><a href="about-us.html">About Us‎</a></li>
			<li><a href="contact-us.html">Contact Us</a></li>
		</ul>
		<div class="top-links">
			<ul class="links">
				<li><a title="My Account" href="login.html">My Account</a></li>
				<li><a title="Wishlist" href="wishlist.html">Wishlist</a></li>
				<li><a title="Checkout" href="checkout.html">Checkout</a></li>
				<li><a title="Blog" href="blog.html">Blog</a></li>
				<li class="last"><a title="Login" href="login.html">Login</a></li>
			</ul>
		</div>
	</div>

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