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
		<jsp:include page="includes/menu.jsp" />
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
<jsp:include page="includes/script.jsp"/>
</html>