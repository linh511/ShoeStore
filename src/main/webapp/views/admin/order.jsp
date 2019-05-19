<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhà sản xuất</title>
<jsp:include page="includes/link.jsp" />
</head>
<body>
	<div class="wrapper">
		<<jsp:include page="includes/menu.jsp"/>
		<div class="main-panel">
			<jsp:include page="includes/header.jsp"></jsp:include>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card card-plain">
								<div class="header">
									<h3 class="title">Danh Sách Đơn Hàng</h3>
								</div>
								<br>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<th>Mã</th>
											<th>Khách hàng </th>
											<th>Địa chỉ </th>
											<th>Số điện thoại </th>
											<th>Tổng tiền
											<th>Đơn hàng</th>
											<th>Thời gian</th>
											<th>Trạng thái</th>
											<th style="padding-left: 40px">Hành động</th>
										</thead>
										<tbody>
											<c:forEach var="order" items="${myOrder}">
												<tr>
													<td><c:out value="${order.id}" /></td>
													<td><c:out value="${order.user.fullname}" /></td>
													<td><c:out value="${order.user.address}" /></td>
													<td><c:out value="${order.user.phone}" /></td>
													<td><c:out value="${order.totalMoney}" /></td>
													<td><a href="${pageContext.servletContext.contextPath}/order/viewDetail/${order.id}" style="color: blue; font-style: italic;">Xem chi tiết</a></td>
													<td><c:out value="${order.date}" /></td>
													<td><c:out value="${order.orderStatus.name}" /></td>
													<td><a class="btn btn-success btn-fill" href = "${pageContext.servletContext.contextPath}/order/edit/${order.id}">Sửa</a>
													<a class="btn btn-danger btn-fill" href = "${pageContext.servletContext.contextPath}/order/delete/${order.id}" onclick="return confirm('Bạn có muốn hủy bỏ đơn hàng?')">Hủy</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="includes/footer.jsp"></jsp:include>
		</div>
	</div>
</body>

</html>