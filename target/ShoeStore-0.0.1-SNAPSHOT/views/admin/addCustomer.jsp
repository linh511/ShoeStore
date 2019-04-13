<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhà sản xuất</title>
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
					<a href="home.jsp" class="simple-text">Manager</a>
				</div>

				<ul class="nav">
					<li><a href="home.jsp"> <i class="ti-home"></i>
							<p>Trang chủ</p>
					</a></li>
					<li><a href="product.jsp"> <i class="ti-stats-up"></i>
							<p>Sản Phẩm</p>
					</a></li>
					<li><a href="producer.jsp"> <i class="ti-view-list-alt"></i>
							<p>Hãng Sản Xuất</p>
					</a></li>
					<li class="active"><a href="customer.jsp"> <i class="ti-user"></i>
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
						<div class="col-lg-12 col-md-11">
							<div class="card">
								<div class="header">
									<h4 class="title">Thành Viên</h4>
								</div>
								<div class="content" style="height: 600px">
									<form>
										<div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4">
												<div class="form-group">
													<label>Tài khoản</label> <input type="text" class="form-control border-input"
														placeholder="Tài khoản" value="">
												</div>
											</div>
											<div class="col-md-4">

												<div class="form-group">
													<label>Họ và tên</label> <input type="text" class="form-control border-input"
														placeholder="Họ và tên" value="">
												</div>
											</div>
											<div class="col-md-2"></div>
										</div>
										<div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4">
												<div class="form-group">
													<label>Mật khẩu</label> <input type="text" class="form-control border-input"
														placeholder="Mật khẩu" value="">
												</div>
											</div>
											<div class="col-md-4">

												<div class="form-group">
													<label>Giới tính</label> <input type="text" class="form-control border-input"
														placeholder="Giới tính" value="">
												</div>
											</div>
											<div class="col-md-2"></div>
										</div>
										<div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4">
												<div class="form-group">
													<label>Email</label> <input type="text" class="form-control border-input"
														placeholder="Email" value="">
												</div>
											</div>
											<div class="col-md-4">

												<div class="form-group">
													<label>Số điện thoại</label> <input type="text" class="form-control border-input"
														placeholder="Số điện thoại" value="">
												</div>
											</div>
											<div class="col-md-2"></div>
										</div>
										<div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-8">
												<div class="form-group">
													<label>Địa chỉ</label> 
														<textarea class="form-control border-input" rows="5" ></textarea>
												</div>
											</div>
											<div class="col-md-2"></div>
										</div>
										<div class="text-center">
											<button type="submit" class="btn btn-info btn-fill btn-wd">Lưu</button>
										</div>
										<div class="clearfix"></div>
									</form>
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