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
									<a href="${pageContext.servletContext.contextPath}/register" class="btn btn-info btn-fill btn-wd">Thêm mới</a>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<th>ID</th>
											<th>Tài Khoản</th>
											<th>Khách Hàng</th>
											<th>Quyền</th>
											<th>Trạng thái</th>
											<th style="padding-left: 40px">Hành động</th>
										</thead>
										<tbody>
											<c:forEach var="user" items="${userList}">
												<tr>
													<td><c:out value="${user.id}" /></td>
													<td><c:out value="${user.username}" /></td>
													<td><c:out value="${user.fullname}" /></td>
													<td><c:out value="${user.role.name}" /></td>
													<c:choose>
														<c:when test = "${user.status == true}">
															<c:set var="status" value="Hoạt động"></c:set>
														</c:when>

														<c:when test = "${user.status == false}">
															<c:set var="status" value="Tạm ngưng"></c:set>
														</c:when>
													</c:choose>
													<td><c:out value="${status}" /></td>
													<td> <a class="btn btn-danger btn-fill" href = "${pageContext.request.contextPath}/admin/user/detail/${user.id}">Thay đổi trạng thái</a></td>
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