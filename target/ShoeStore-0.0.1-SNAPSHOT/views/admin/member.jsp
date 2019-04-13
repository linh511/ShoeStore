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
		<div class="sidebar" data-background-color="white" data-active-color="danger">

			<!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="home.jsp" class="simple-text"> Manager </a>
				</div>

				<ul class="nav">
					<li><a href="${pageContext.request.contextPath}/adminHome"> <i class="ti-home"></i>
							<p>Trang chủ</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/adminProduct"> <i class="ti-stats-up"></i>
							<p>Sản Phẩm</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/adminProducer"> <i class="ti-view-list-alt"></i>
							<p>Hãng Sản Xuất</p>
					</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/adminMember"> <i class="ti-user"></i>
							<p>Thành viên</p>
					</a></li>
					<li><a href="typography.html"> <i class="ti-notepad"></i>
							<p>Thống kê</p>
					</a></li>
					<li><a href="icons.html"> <i class="ti-pencil-alt2"></i>
							<p>Hóa đơn</p>
					</a></li>
					<li class="active-pro"><a href="homeCustomer.jsp"> <i class="ti-export"></i>
							<p>Website</p>
					</a></li>
				</ul>
			</div>
		</div>
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
											<th>Giới tính</th>
											<th>Điện thoại</th>
											<th>Email</th>
											<th>Địa chỉ</th>
											<th style="padding-left: 40px">Hành động</th>
										</thead>
										<tbody>
											<c:forEach var="customer" items="${listMember}">
												<tr>
													<td><c:out value="${customer.id}" /></td>
													<td><c:out value="${customer.username}" /></td>
													<td><c:out value="${customer.fullname}" /></td>
													<td><c:out value="${customer.gender}" /></td>
													<td><c:out value="${customer.phone}" /></td>
													<td><c:out value="${customer.email}" /></td>
													<td><c:out value="${customer.address}" /></td>
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

<!--   Core JS Files   -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="assets/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="assets/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		demo.initChartist();
	});
</script>
</body>
</html>