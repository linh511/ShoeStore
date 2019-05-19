<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="${pageContext.servletContext.contextPath}/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng ký</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- font-awesome -->
    <link rel="stylesheet" href="login/css/font-awesome.min.css"/>
    <!-- css bootstrap core -->
    <link rel="stylesheet" href="login/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="login/css/login.css"/>

</head>
<body>
<div class="container centeredx">
    <div class="heading-register" style="margin-bottom: 15px">
        <h1 class="pb-3">Đăng ký tài khoản</h1>
        <span class="myMessage" style="visibility: ${display}">Đăng ký thành công! <a
                href="${pageContext.servletContext.contextPath}/login">Click</a>
					vào đây để đăng nhập!</span>
    </div>

    <s:form action="${pageContext.servletContext.contextPath}/register" method="post" modelAttribute="user"
            onsubmit="return ValidateRegister()" name="register_form">
        <div class="row">
            <div class="col-sm-6">
                    <%--      Username--%>
                <div class="form-group" id="username_div">
                    <label for="username">Tài khoản</label>
                    <s:input path="username" cssClass="form-control form-control-sm" autofocus="autofocus"/>
                    <div id="username_error"></div>
                    <span class="myMessage">${messageUser}</span>
                </div>
                    <%--      Password--%>
                <div class="form-group" id="password_div">
                    <label for="password">Mật Khẩu</label>
                    <s:password path="password" cssClass="form-control form-control-sm"/>
                    <div id="password_error"></div>
                </div>
                    <%--      Password-Confirm--%>
                <div class="form-group" id="password_confirm_div">
                    <label for="password">Nhập lại mật khẩu </label>
                    <input type="password" name="password_confirm" class="form-control form-control-sm">
                    <div id="password_confirm_error"></div>
                </div>
            </div>
            <div class="col-sm-6">
                    <%--   FullName--%>
                <div class="form-group" id="fullname_div">
                    <label for="fullname">Họ và tên </label>
                    <s:input path="fullname" cssClass="form-control form-control-sm" id="fullname"/>
                    <div id="fullname_error"></div>
                </div>

                    <%--   Phone--%>
                <div class="form-group" id="phone_div">
                    <label for="phone">Số điện thoại</label>
                    <s:input path="phone" cssClass="form-control form-control-sm"/>
                    <div id="phone_error"></div>
                </div>
                    <%--    Email--%>
                <div class="form-group" id="email_div">
                    <label for="email">Email </label>
                    <s:input path="email" cssClass="form-control form-control-sm"/>
                    <div id="email_error"></div>
                </div>
                    <%--    Address--%>
                <div class="form-group" id="address_div">
                    <label for="address">Địa chỉ </label>
                    <s:input path="address" cssClass="form-control form-control-sm"/>
                    <div id="address_error"></div>
                </div>
            </div>

            <div class="form-group" style="margin-left: 15px">
                <button class="btn btn-primary">Đăng ký</button>
            </div>

        </div>
        <div class="form-group">
            <span>Click <a
                    href="${pageContext.servletContext.contextPath}/login">Đăng nhập</a> nếu đã có tài khoản!</span>
        </div>
    </s:form>

</div>
<script src="js/register_form.js"></script>
</body>
</html>