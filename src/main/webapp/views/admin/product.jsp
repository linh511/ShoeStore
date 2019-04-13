<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
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
									<h3 class="title">Danh Sách Sản Phẩm</h3>
								</div>
								<div class="header">
								<a class="btn btn-info btn-fill" href = "${pageContext.servletContext.contextPath}/admin/product/add">Thêm mới</a>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<th>ID</th>
											<th>Tên sản phẩm</th>
											<th>Đơn giá</th>
											<th>Mô tả</th>
											<th>Hình ảnh</th>
											<th>Phân loại</th>
											<th style="padding-left: 40px">Hành động</th>
										</thead>
										<tbody>
											<c:forEach var="product" items="${productList}">
												<tr>
													<td><c:out value="${product.id}" /></td>
													<td><c:out value="${product.name}" /></td>
													<td><c:out value="${product.unitPrice}" /></td>
													<td><c:out value="${product.description}" /></td>
													<td><img src="footwear/images/${product.image}"
										style="width: 40px" /></td>
													<td><c:out value="${product.category.name}" /></td>
													<td>
													<a class="btn btn-success btn-fill" href = "admin/product/edit/${product.id}">Sửa</a>
													<a class="btn btn-danger btn-fill" href = "admin/product/delete/${product.id}" onclick="return confirm('Bạn có muốn xóa?')">Xóa</a>
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
<jsp:include page="includes/script.jsp"/>
</html>