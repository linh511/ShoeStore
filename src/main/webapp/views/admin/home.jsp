<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
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
						<div class="row">

							<div class="col-md-12">
								<div class="card">
									<div class="header">
										<h4 class="title">Lượng truy cập Website</h4>
									</div>
									<div class="content">
										<div id="chartHours" class="ct-chart"></div>
										<div class="footer">
											<div class="chart-legend">
												<i class="fa fa-circle text-info"></i> Xem <i class="fa fa-circle text-danger"></i>
												Đặt hàng <i class="fa fa-circle text-warning"></i> Thanh toán
											</div>
											<hr>
											<div class="stats">
												<i class="ti-reload"></i> Cập nhật 3 phút trước
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="card">
									<div class="header">
										<h4 class="title">Thống kê Youtube</h4>
									</div>
									<div class="content">
										<div id="chartPreferences" class="ct-chart ct-perfect-fourth"></div>

										<div class="footer">
											<div class="chart-legend">
												<i class="fa fa-circle text-info"></i> Xem <i
													class="fa fa-circle text-warning"></i> Đăng ký <i
													class="fa fa-circle text-danger"></i> Bỏ đăng ký
											</div>
											<hr>
											<div class="stats">
												<i class="ti-timer"></i> Cập nhật 2 ngày trước
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card ">
									<div class="header">
										<h4 class="title">Danh thu 2019</h4>
									</div>
									<div class="content">
										<div id="chartActivity" class="ct-chart"></div>

										<div class="footer">
											<div class="chart-legend">
												<i class="fa fa-circle text-info"></i> Giầy nam<i
													class="fa fa-circle text-warning"></i> Giầy nữ
											</div>
											<hr>
											<div class="stats">
												<i class="ti-check"></i> Thông tin dữ liệu được chứng nhận
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<jsp:include page="includes/footer.jsp"></jsp:include>
			</div>
		</div>
		</div>
	<jsp:include page="includes/script.jsp"/>
</body>
</html>