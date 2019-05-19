<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tài khoản</title>
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
                    <div class="col-lg-12 col-md-11">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Thông tin tài khoản</h4>
                            </div>
                            <div class="content" style="height: 600px">
                                <s:form action="${pageContext.request.contextPath}/admin/user/save"
                                        modelAttribute="user" onsubmit="return ValidateAddProducer()"
                                        name="add_producer" method="post">
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <s:hidden path="username"/>
                                                <div class="col-md-2"></div>
                                                <div class="col-md-4"><label>Tên tài khoản:</label></div>
                                                <div class="col-md-6">
                                                    <label class="labelColor">${user.username}</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-4"><label>Khách hàng:</label></div>
                                                <div class="col-md-6">
                                                    <s:hidden path="fullname"></s:hidden>
                                                    <label class="labelColor">${user.fullname}</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <s:hidden path="gender"></s:hidden>
                                                <c:choose>
                                                    <c:when test="${user.gender == true}">
                                                        <c:set var="gender" value="Nữ"></c:set>
                                                    </c:when>
                                                    <c:when test="${user.gender == false}">
                                                        <c:set var="gender" value="Nam"></c:set>
                                                    </c:when>
                                                </c:choose>
                                                <div class="col-md-2"></div>
                                                <div class="col-md-4"><label>Giới tính:</label></div>
                                                <div class="col-md-6">
                                                    <label class="labelColor">${gender}</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <s:hidden path="address"></s:hidden>
                                                <div class="col-md-2"></div>
                                                <div class="col-md-4"><label>Địa chỉ:</label></div>
                                                <div class="col-md-6"><label class="labelColor">${user.address}</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <s:hidden path="email"></s:hidden>
                                                <div class="col-md-2"></div>
                                                <div class="col-md-4"><label>Email:</label></div>
                                                <div class="col-md-6"><label class="labelColor">${user.email}</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <s:hidden path="phone"></s:hidden>
                                                <div class="col-md-2"></div>
                                                <div class="col-md-4"><label>Số điện thoại:</label></div>
                                                <div class="col-md-6"><label class="labelColor">${user.phone}</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-4"><label>Trạng thái:</label></div>
                                                <div class="col-md-6">
                                                    <label>
                                                        <s:select path="status" cssClass="form-control border-input">
                                                            <s:option value="1" label="Đang hoạt động"/>
                                                            <s:option value="0" label="Tạm ngưng"/>
                                                        </s:select>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>
                                    <div class="row">
                                        <div class="text-center" style="margin-top: 50px">
                                            <s:hidden path="id"/>
                                            <s:hidden path="password"/>
                                            <s:hidden path="role"/>
                                            <button type="submit" class="btn btn-info btn-fill btn-wd">Lưu</button>
                                        </div>
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
<script src="../../js/userDetail_form.js"></script>
</body>
</html>