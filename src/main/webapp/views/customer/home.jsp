<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shoe Shop</title>
<jsp:include page="include/link.jsp" />
</head>
<body>
	<div class="wrap">
		<jsp:include page="include/header.jsp"/>
		<div class="main">
			<div class="header_slide">
				<div class="slider">
					<img alt="" src="footwear/images/slideshow2.jpg">
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="content">
				<div class="content_top">
					<div class="heading">
						<h3>Sản phẩm mới</h3>
					</div>
					<div class="see">
						<p>
							<a href="#">See all Products</a>
						</p>
					</div>
					<div class="section group">
						<c:forEach var="product" items="${list1}">
							<div class="grid_1_of_4 images_1_of_4">
								<img src="footwear/images/${product.image}" class="img-fluid" /></a>
								<h2>${product.name}</h2>
								<div class="price-details">
									<div class="price-number">
										<p>
											<span class="rupees">${product.unitPrice} đ</span>
										</p>
									</div>
									<div class="add-cart">
										<h4>
										<a href = "${pageContext.servletContext.contextPath}/product/view/${product.id}">Chi tiết</a>
										</h4>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="clear"></div>
				</div>
				<div class="content_bottom">
					<div class="heading">
						<h3>Sản phẩm bán chạy</h3>
					</div>
					<div class="see">
						<p>
							<a href="#">See all Products</a>
						</p>
					</div>
					<div class="section group">
						<c:forEach var="product" items="${list2}">
							<div class="grid_1_of_4 images_1_of_4">
								<img src="footwear/images/${product.image}" class="img-fluid" /></a>
								<h2>${product.name}</h2>
								<div class="price-details">
									<div class="price-number">
										<p>
											<span class="rupees">${product.unitPrice} đ</span>
										</p>
									</div>
									<div class="add-cart">
										<h4>
											<a
												href="/ShoeAssignment/product?action=preview&id=${product.id}">Chi
												tiết</a>
										</h4>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp" />
</body>
</html>