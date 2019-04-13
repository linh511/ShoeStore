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
									<a class="btn btn-info btn-fill" href = "/ShoeAssignment/adminProducer?action=new">Thêm mới</a>
								</div>
								<div class="content table-responsive table-full-width">
								    <h4 style="color: red; font-style: italic;">${message }</h4>
									<table class="table table-hover">
										<thead>
											<th>ID</th>
											<th>Tên Nhà Sản Xuất</th>
											<th>Logo</th>
											<th>Sản phẩm</th>
											<th style="padding-left: 40px">Hành động</th>
										</thead>
										<tbody>
											<c:forEach var="producer" items="${producerList}">
												<tr>
													<td><c:out value="${producer.id}" /></td>
													<td><c:out value="${producer.name}" /></td>
													<td><c:out value="${producer.logo}" /></td>
													<td><a style="color: red; font-style: italic;" href="admin/viewbyProducer/${producer.id}">Xem sản phẩm</a></td>
													<td><a class="btn btn-success btn-fill" href = "/ShoeAssignment/adminProducer?action=update&id=${producer.id}">Sửa</a>
													<a class="btn btn-danger btn-fill" href = "/ShoeAssignment/adminProducer?action=delete&id=${producer.id}" onclick="return confirm('Bạn có muốn xóa?')">Xóa</a>
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