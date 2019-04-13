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
									<h3 class="title">Phân loại</h3>
								</div>
								<div class="header">
									<a class="btn btn-info btn-fill" href = "${pageContext.servletContext.contextPath}/admin/category/add">Thêm mới</a>
								</div>
								<br>
								  <p style="color: red; font-style: italic;">${message }</p>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<th>ID</th>
											<th>Tên</th>
											<th>Sản phẩm</th>
											<th style="padding-left: 40px">Hành động</th>
										</thead>
										<tbody>
											<c:forEach var="category" items="${categoryList}">
												<tr>
													<td><c:out value="${category.id}" /></td>
													<td><c:out value="${category.name}" /></td>
													<td><a style="color: red; font-style: italic;" href="${pageContext.request.contextPath}/admin/viewbyCategory/${category.id}">Xem sản phẩm</a></td>
													<td><a class="btn btn-success btn-fill" href = "${pageContext.request.contextPath}/admin/category/edit/${category.id}">Sửa</a>
													<a class="btn btn-danger btn-fill" href = "${pageContext.request.contextPath}/admin/category/delete/${category.id}" onclick="return confirm('Bạn có muốn xóa?')">Xóa</a>
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