<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thành viên</title>
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
									<h3 class="title">Danh Sách Thành Viên</h3>
								</div>
								<div class="header">
									<a href="addCustomer.jsp" class="btn btn-info btn-fill btn-wd">Thêm mới</a>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<th>ID</th>
											<th>Tài Khoản</th>
											<th>Họ và tên</th>
											<th>Vai trò</th>
											<th>Email</th>
											<th>Địa chỉ</th>
											<th style="padding-left: 40px">Hành động</th>
										</thead>
										<tbody>
											<c:forEach var="user" items="${userList}">
												<tr>
													<td><c:out value="${user.id}" /></td>
													<td><c:out value="${user.username}" /></td>
													<td><c:out value="${user.fullname}" /></td>
													<td><c:out value="${user.role.name}" /></td>
													<td><c:out value="${user.email}" /></td>
													<td><c:out value="${user.address}" /></td>
													<td><input type="submit" class="btn btn-success btn-fill" style="width: 70px"
														name="productAction" value="Sửa"> <%-- <a class="btn btn-default btn-block" style="width: 70px" href="/edit?id=<c:out value='${product.id}' />">Sửa</a>
													<a class="btn btn-default btn-block"  style="width: 70px" href="/delete?id=<c:out value='${product.id}' />">Xóa</a> --%>
														<input type="submit" class="btn btn-danger btn-fill" style="width: 70px"
														name="productAction" value="Xóa"></td>
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