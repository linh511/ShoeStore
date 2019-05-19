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
									<h3 class="title">Danh Sách Hãng Sản Xuất</h3>
								</div>
								<div class="header">
									<a class="btn btn-info btn-fill" href = "${pageContext.servletContext.contextPath}/admin/producer/add">Thêm mới</a>
								</div>
								<br>
								<span class="messageError">${message }</span>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<th>ID</th>
											<th>Tên Nhà Sản Xuất</th>
											<th>Logo</th>
											<th>Trạng thái</th>
											<th>Sản phẩm</th>
											<th style="padding-left: 40px">Hành động</th>
										</thead>
										<tbody>
											<c:forEach var="producer" items="${producerList}">
												<tr>
													<td><c:out value="${producer.id}" /></td>
													<td><c:out value="${producer.name}" /></td>
													<td><c:out value="${producer.logo}" /></td>
													<c:choose>

													<c:when test = "${producer.id == 1}">
													<c:set var="status" value="Hoạt động"></c:set>
													</c:when>

													<c:when test = "${producer.id == 2}">
														<c:set var="status" value="Tạm ngừng"></c:set>
													</c:when>

													<c:otherwise>
														<c:set var="status" value="Đang xét"></c:set>
													</c:otherwise>
													</c:choose>
													<td><c:out value="${status}"/></td>
													<td><a style="color: red; font-style: italic;" href="${pageContext.request.contextPath}/admin/viewbyProducer/${producer.id}">Xem sản phẩm</a></td>
													<td><a class="btn btn-success btn-fill" href = "${pageContext.request.contextPath}/admin/producer/edit/${producer.id}">Sửa</a>
														<a class="btn btn-danger btn-fill" href = "${pageContext.request.contextPath}/admin/producer/delete/${producer.id}" onclick="return confirm('Bạn có muốn xóa?')">Xóa</a>
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