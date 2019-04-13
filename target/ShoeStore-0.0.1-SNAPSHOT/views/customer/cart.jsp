<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shoe Shop</title>
<jsp:include page="include/link.jsp"/>
</head>
<body>
	<div class="wrap">
		<jsp:include page="include/header.jsp"/>
		<div class="main">
			<div class="content">
				<div class="content_top">
					<div class="heading">
						<h3>Danh sách sản phẩm</h3>
					</div>
					<div class="clear"></div>
				</div>
				<div class="section group">
					<c:if test="${cart != null}">
					<table>
						<thead>
							<tr>
								<td>STT</td>
								<td>Hình ảnh</td>
								<td>Tên sản phẩm</td>
								<td>Số lượng</td>
								<td>Đơn giá</td>
								<td>Thành tiền</td>
								<td>Loại bỏ</td>
							</tr>
						</thead>
						<tbody>
							<c:set var="count" value="0" />
							<c:set var="sum" value="0" />
							<c:forEach var="cart" items="${cart}">
								<c:set var="count" value="${count + 1}" />
								<tr>
									<td>${count}</td>
									<td><img src="${pageContext.servletContext.contextPath}/footwear/images/${cart.value.product.image}"
										style="width: 60px" /></td>
									<td>${cart.value.product.name}</td>
									<td>${cart.value.quantity}</td>
									<td>${cart.value.product.unitPrice} đ</td>
									<td>${cart.value.totalPrice} đ</td>
									<td>
									    <a class="btn btn-danger" href="${pageContext.request.contextPath}/cart/delete/${cart.value.product.id}">Xóa</a>
									</td>
								</tr>
								<c:set var="sum" value="${sum + cart.value.totalPrice }" />
							</c:forEach>
							<tr>
								<c:url var="add" value="product">
									<c:param name="action" value="AddMore" />
								</c:url>
							</tr>
						</tbody>
					</table>
					    <div class="price" style="float: right;">
					                <h1>Tổng tiền:</h1>
									<p>
										<span>${sum} đ</span>
									</p>
						</div>
					    <div class="header">
									<a class="btn btn-info"
										href="${pageContext.request.contextPath}/product">Mua thêm</a>
					                <a class="btn btn-success"
										href="${pageContext.request.contextPath}/order"  style="margin-left: 20px">Đặt hàng</a>			
					</div>
				</c:if>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"/>
</body>
</html>