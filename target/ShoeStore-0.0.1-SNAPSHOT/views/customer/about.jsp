<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shoe Shop</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="footwear/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="footwear/css/slider.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="footwear/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="footwear/js/move-top.js"></script>
<script type="text/javascript" src="footwear/js/easing.js"></script>
<script type="text/javascript" src="footwear/js/startstop-slider.js"></script>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="headertop_desc">
				<img alt="" src="footwear/images/logo.png" style="width: 150px; margin-left: 0">
				<div class="account_desc">
					<ul>
						<li><a href="#">Đăng ký</a></li>
						<li><a href="loginCustomer.jsp">Đăng nhập</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="header_bottom">
				<div class="menu">
					<ul>
						<li><a href="homeCustomer.jsp">Trang chủ</a></li>
						<li><a href="productCustomer.jsp">Sản phẩm</a></li>
						<li  class="active" ><a href="about.jsp">Giới thiệu</a></li>
						<li><a href="contact.jsp">Liên hệ</a></li>
						<li><a href="about.html">Giỏ hàng</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="search_box">
					<form>
						<input type="text" value="Search" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Search';}"><input
							type="submit" value="">
					</form>
				</div>
				<div class="clear"></div>
			</div>
			<div class="header_slide">
				<div class="header_bottom_left">
					<div class="categories">
						<ul>
							<h3>Danh Mục</h3>
							<li><a href="#">Giầy 1</a></li>
							<li><a href="#">Giầy 1</a></li>
							<li><a href="#">Giầy 1</a></li>
							<li><a href="#">Giầy 1</a></li>
							<li><a href="#">Giầy 1</a></li>
							<li><a href="#">Giầy 1</a></li>
							<li><a href="#">Giầy 1</a></li>
							<li><a href="#">Giầy 1</a></li>
						</ul>
					</div>
				</div>
				<div class="header_bottom_right">
					<div class="slider">
						<div id="slider">
							<div id="mover">
								<div id="slide-1" class="slide">
									<div class="slider-img">
										<a href="preview.jsp"><img src="footwear/images/banner2.png"
											alt="learn more" /></a>
									</div>
									<div class="slider-text">
										<h1>
											Sắm tết<br> <span>2019</span>
										</h1>
										<h2>Giảm đến 40%</h2>
										<div class="features_list">
											<h4>Miễn phí vận chuyển</h4>
										</div>
										<a href="preview.jsp" class="button">Mua ngay</a>
									</div>
									<div class="clear"></div>
								</div>
								
								<div class="slide">
									<div class="slider-text">
										<h1>
											Sắm tết<br> <span>2019</span>
										</h1>
										<h2>Giảm đến 40%</h2>
										<div class="features_list">
											<h4>Miễn phí vận chuyển</h4>
										</div>
										<a href="preview.jsp" class="button">Mua ngay</a>
									</div>
									<div class="slider-img">
										<a href="preview.jsp"><img src="footwear/images/banner1.png"
											alt="learn more" /></a>
									</div>
									<div class="clear"></div>
								</div>
								<div class="slide">
									<div class="slider-img">
										<a href="preview.jsp"><img src="footwear/images/banner3.png"
											alt="learn more" /></a>
									</div>
									<div class="slider-text">
										<h1>
											Sắm tết<br> <span>2019</span>
										</h1>
										<h2>Giảm đến 40%</h2>
										<div class="features_list">
											<h4>Miễn phí vận chuyển</h4>
										</div>
										<a href="preview.jsp" class="button">Mua ngay</a>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="main">
			<div class="content">
				<div class="content_top">
					<div class="heading">
						<h3>Danh sách sản phẩm</h3>
					</div>
					<div class="see">
						<p>
							<a href="#">See all Products</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="preview.jsp"><img src="images/feature-pic1.jpg" alt="" /></a>
						<h2>Lorem Ipsum is simply</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$620.87</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">Xem chi tiết</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="preview.jsp"><img src="images/feature-pic2.jpg" alt="" /></a>
						<h2>Lorem Ipsum is simply</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$899.75</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">Xem chi tiết</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="preview.jsp"><img src="images/feature-pic3.jpg" alt="" /></a>
						<h2>Lorem Ipsum is simply</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$599.00</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">Xem chi tiết</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="preview.jsp"><img src="images/feature-pic4.jpg" alt="" /></a>
						<h2>Lorem Ipsum is simply</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$679.87</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">Xem chi tiết</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="wrap">
			<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h4>Information</h4>
					<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Customer Service</a></li>
						<li><a href="#">Advanced Search</a></li>
						<li><a href="delivery.html">Orders and Returns</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
					<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Customer Service</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="contact.html">Site Map</a></li>
						<li><a href="#">Search Terms</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
					<ul>
						<li><a href="contact.html">Sign In</a></li>
						<li><a href="index.html">View Cart</a></li>
						<li><a href="#">My Wishlist</a></li>
						<li><a href="#">Track My Order</a></li>
						<li><a href="contact.html">Help</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
					<ul>
						<li><span>+91-123-456789</span></li>
						<li><span>+00-123-000000</span></li>
					</ul>
					<div class="social-icons">
						<h4>Follow Us</h4>
						<ul>
							<li><a href="#" target="_blank"><img src="images/facebook.png" alt="" /></a></li>
							<li><a href="#" target="_blank"><img src="images/twitter.png" alt="" /></a></li>
							<li><a href="#" target="_blank"><img src="images/skype.png" alt="" /> </a></li>
							<li><a href="#" target="_blank"> <img src="images/dribbble.png" alt="" /></a></li>
							<li><a href="#" target="_blank"> <img src="images/linkedin.png" alt="" /></a></li>
							<div class="clear"></div>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copy_right">
			<p>
				&copy; 2013 home_shoppe. All rights reserved | Design by <a
					href="http://w3layouts.com/">Shoe Shop</a>
			</p>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>