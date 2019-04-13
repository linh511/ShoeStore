<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shoe Shop</title>
<jsp:include page="include/link.jsp" />
<jsp:include page="include/ordercss.jsp" />
</head>
<body>
	<div class="wrap">
		<jsp:include page="include/header.jsp"/>
		<div class="container-fluid bg-light mainPage pt-5 pb-5">
				<div class="container">
					<table class="table table-bordered">
						<h3>Chi tiết đơn hàng</h3>
						<tr>
							<td>STT</td>
							<td>Hình ảnh</td>
							<td>Tên</td>
							<td>Số lượng</td>
							<td>Đơn giá</td>
						</tr>
						<c:set var="count" value="0" />
						<c:set var="sum" value="0" />
						<c:forEach var="rows" items="${mycart}">
							<c:set var="count" value="${count + 1}" />
							<tr>
								<td>${count}</td>
								<td><img src="footwear/images/${rows.value.product.image}"
									style="width: 60px" /></td>
								<td>${rows.value.product.name}</td>
								<td>${rows.value.quantity}</td>
								<td>${rows.value.product.unitPrice} đ</td>
							</tr>
							<c:set var ="totalPrice" value="${rows.value.product.unitPrice * rows.value.quantity }"/>
							<c:set var="sum"
								value="${sum + rows.value.product.unitPrice * rows.value.quantity }" />
						</c:forEach>
						<tr>
							<td colspan="2">
								 <a class="btn btn-block btn-success"
										href="${pageContext.request.contextPath}/product">Tiếp tục mua hàng</a>
							</td>
							<td colspan="2" class="text-right">Thành tiền</td>
							<td style="color: red">
							${sum} đ
							</td>
						</tr>
					</table>
					<br>
				</div>
				<div class="container">
					<h3>Thông tin khách hàng</h3>
					<br>
					<form action="${pageContext.request.contextPath}/order" method ="post">
					<div class="form-group row">
						<label class="col-sm-4 col-form-label col-form-label-sm">Người
							nhận hàng (<span class="text-danger">*</span>)
						</label>
						<div class="col-sm-6">
						<input name="fullname" class="form-control form-control-sm" required="required" value="${user.fullname}" />
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-4 col-form-label col-form-label-sm">Điện
							thoại liên hệ (<span class="text-danger">*</span>)
						</label>
						<div class="col-sm-6">
						<input name="phone" class="form-control form-control-sm" required="required" value="${user.phone}"/>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-4 col-form-label col-form-label-sm">Địa
							chỉ nhận hàng (<span class="text-danger">*</span>)
						</label>
						<div class="col-sm-6">
						<input name="address" class="form-control form-control-sm" required="required" value="${user.address}"/>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-4 col-form-label col-form-label-sm"></label>
						<div class="col-sm-1">
						   <input type="hidden" name="cartId" value="${rows.value.id }">
						   <input type="hidden" name="totalPrice" value="${totalPrice }">
						   <input type="hidden" name="userId" value="${user.id }">
						   <input type="hidden" name="userPass" value="${user.password }">
						   <input type="hidden" name="sum" value="${sum}">
						   <button class="btn btn-sm btn-primary" type="submit">Đặt hàng</button>
						</div>
					</div>
					</form>
				</div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp" />
</body>
</html>