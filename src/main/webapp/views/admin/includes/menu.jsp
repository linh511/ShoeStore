<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar" data-background-color="white" data-active-color="danger">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="home.jsp" class="simple-text"> Manager </a>
				</div>

				<ul class="nav">
					<li><a href="${pageContext.request.contextPath}/admin/home"> <i class="ti-home"></i>
							<p>Trang chủ</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/product"> <i class="ti-stats-up"></i>
							<p>Sản Phẩm</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/category"> <i class="ti-notepad"></i>
							<p>Phân loại</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/producer"> <i class="ti-view-list-alt"></i>
							<p>Hãng Sản Xuất</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/user"> <i class="ti-user"></i>
							<p>Thành viên</p>
					</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/order"> <i class="ti-pencil-alt2"></i>
							<p>Hóa đơn</p>
					</a></li>
					<li class="active-pro"><a href="${pageContext.request.contextPath}/home"> <i class="ti-export"></i>
							<p>Website</p>
					</a></li>
				</ul>
			</div>
		</div>