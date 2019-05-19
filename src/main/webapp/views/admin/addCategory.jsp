<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Phân loại</title>
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
                                <h4 class="title">Phân Loại</h4>
                            </div>
                            <div class="content" style="height: 600px">
                                <s:form action="${pageContext.servletContext.contextPath}/admin/category/save"
                                        modelAttribute="category" onsubmit="return ValidateAddCategory()" name="add_category" method="post">
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="form-group" id="category_div">
                                                <label for="name">Tên</label>
                                                <s:input path="name" cssClass="form-control border-input"
                                                         autofocus="autofocus"/>
                                                <div id="category_error"></div>
                                                <span class="messageError">${message}</span>
                                            </div>

                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>
                                    <div class="row">
                                        <div class="text-center">
                                            <s:hidden path="id"/>
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
<script src="../../js/addCategory_form.js"></script>
</body>
</html>