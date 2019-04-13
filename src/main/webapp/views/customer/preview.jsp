<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shoe Shop</title>
<jsp:include page="include/link.jsp"/>
</head>
<body>
	<div class="wrap">
		<jsp:include page="include/header.jsp"/>
		<div class="main">
			<div class="content">
				<div class="section group">
					<div class="cont-desc span_1_of_2">
						<div class="product-details">
							<div class="grid images_3_of_2">
								<div id="container">
									<div id="products_example">
										<div id="products">
											<div class="slides_container">
												<img src="footwear/images/${product.image}"/>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="desc span_3_of_2">
								<h2>${product.name}</h2>
								<p> ${product.description }</p>
								<div class="price">
									<p>
										Giá: <span>${product.unitPrice} đ</span>
									</p>
								</div>
								<div class="available">
									<ul>
										<li>Màu sắc: <select>
												<option>Trắng</option>
												<option>Đen</option>
												<option>Xanh</option>
												<option>Đỏ</option>
										</select></li>
										<li>Size:<select>
												<option>39</option>
												<option>40</option>
												<option>41</option>
												<option>42</option>
												<option>43</option>
										</select></li>
										<li>Số lượng:<select>
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
										</select></li>
									</ul>
								</div>
								<div class="share-desc">
								        <a href = "${pageContext.servletContext.contextPath}/cart/add/${product.id}" class="btn btn-preview">Thêm vào giỏ</a>
										<%-- <form action="<c:url value="/cart" />" method="POST">
											<input type="hidden" name="id" value="${product.id}">
											<button name="action" value="add-to-cart" class="btn btn-preview">Thêm vào giỏ</button>
										</form> --%>
									<div class="clear"></div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
						<script type="text/javascript">
							$(document).ready(function() {
								$('#horizontalTab').easyResponsiveTabs({
									type : 'default', //Types: default, vertical, accordion           
									width : 'auto', //auto or any width like 600px
									fit : true
								// 100% fit in a container
								});
							});
						</script>
					</div>
					<div class="rightsidebar span_3_of_1">

						<div class="categories" style="text-align: center;">
							<ul>
								<h3>Danh Mục Giầy</h3>
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
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"/>
</body>
</html>