<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhà sản xuất</title>
<jsp:include page="includes/link.jsp" />
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
									<h4 class="title">Sản phẩm</h4>
								</div>
								<div class="content" style="height: 700px">
									<s:form action="admin/product/save" modelAttribute="product">
										<div class="row">
											<div class="col-md-3"></div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Phân loại</label> 
													<s:select path="category" items="${categoryList}" itemValue="id"  itemLabel="name"  cssClass="form-control border-input">
													</s:select>
												</div>
												<div class="form-group">
													<label>Nhà sản xuất</label>
													<s:select path="producer" items="${producerList}" itemValue="id"  itemLabel="name" cssClass="form-control border-input">
													</s:select>
												</div>
												<div class="form-group">
													<label>Tên</label>
													<s:input path="name" required="required" cssClass="form-control border-input" autofocus="autofocus"/>
												</div>
												<div class="form-group">
													<label>Đơn giá</label> 
													<s:input path="unitPrice" required="required" cssClass="form-control border-input"/>
												</div>
												<div class="form-group">
													<label>Mô tả</label> 
													<s:textarea path="description" cssClass="form-control border-input"/>
												</div>
												<div class="form-group">
													<label>Hình ảnh</label> 
													<s:input path="image" cssClass="form-control border-input" />
												</div>
											</div>
											<div class="col-md-3"></div>
										</div>
										<div class="row"></div>
										<div class="text-center">
										<s:hidden path="id"/>
											<button type="submit" class="btn btn-info btn-fill btn-wd">Lưu</button>
										</div>
									</s:form>
									<div class="clearfix"></div>
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