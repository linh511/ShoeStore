<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sản phẩm</title>
<jsp:include page="includes/link.jsp"/>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="includes/menu.jsp"/>
		<div class="main-panel">
			<jsp:include page="includes/header.jsp"></jsp:include>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card card-plain">
								<div class="header">
									<h3 class="title">Chi tiết đơn hàng</h3>
								</div>
							   <br>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<th>STT</th>
											<th>Hình ảnh</th>
											<th>Tên sản phẩm</th>
											<th>Số lượng</th>
											<th>Mã đơn hàng</th>
											<th>Thành tiền</th>
										</thead>
										<tbody>
											<c:forEach var="order" items="${orderDetail}">
												<tr>
													<td><c:out value="${order.id}" /></td>
													<td><img src="${pageContext.servletContext.contextPath}/footwear/images/${order.product.image}"
										style="width: 40px"/></td>
													<td><c:out value="${order.product.name}" /></td>
													<td><c:out value="${order.quantity}" /></td>
													<td><c:out value="${order.order.id}" /></td>
													<td><c:out value="${order.money} đ" /></td>
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