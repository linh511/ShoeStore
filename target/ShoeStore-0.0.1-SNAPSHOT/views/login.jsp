<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- font-awesome -->
<link rel="stylesheet" href="login/css/font-awesome.min.css" />

<!-- css bootstrap core -->
<link rel="stylesheet" href="login/css/bootstrap.min.css" />

<link rel="stylesheet" href="login/css/login.css" />

</head>
<body>
	<div class="container centered">
	    <h1 class="pb-3">Đăng nhập</h1>
	    <s:form action="${pageContext.servletContext.contextPath}/login" method="post" modelAttribute="user">
		      <div class="form-group">
		     <label for="username">Tài khoản</label>
		     
		     <s:input path="username" required="required" cssClass="form-control form-control-sm" autofocus="autofocus" />
		      </div>
		      
		       <div class="form-group">
		     <label for="username">Mật Khẩu</label>
		     <s:password path="password" required="required" cssClass="form-control form-control-sm"/>
		      </div>
		     <div class="form-group">
				<input id="rememberMe" type="checkbox" name="remember-me"> <label
					for="rememberMe">Ghi nhớ tài khoản</label>
			 </div>
		      <div class="form-group">
		       <button class="btn btn-primary">Đăng nhập</button>
			 </div>
			 
			 <div class="form-group mt-2">
				<span>Chưa có tài khoản? Đăng ký tài khoản <a href="${pageContext.servletContext.contextPath}/register">click</a>
					vào đây.
				</span>
			</div>
	    </s:form>
	</div>

	<!-- script core jQuery, popper, bootstrap -->
	<script src="login/js/jquery.min.js"></script>
	<script src="login/js/popper.min.js"></script>
	<script src="login/js/bootstrap.min.js"></script>


</body>
</html>