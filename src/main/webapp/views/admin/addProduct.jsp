<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="${pageContext.servletContext.contextPath}/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Nhà sản xuất</title>
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
                                <h4 class="title">Sản phẩm</h4>
                            </div>
                            <div class="content" style="height: 700px">
                                <s:form action="${pageContext.servletContext.contextPath}/admin/product/save" modelAttribute="product"
                                        onsubmit="return ValidateAddProduct()" name="add_product" method="post">
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="form-group" id="category_div">
                                                <label for="category">Phân loại</label>
                                                <s:select path="category" cssClass="form-control border-input"
                                                          autofocus="autofocus">
                                                    <s:option value="0" label="Lựa chọn"/>
                                                    <s:options items="${categoryList}" itemLabel="name" itemValue="id"/>
                                                </s:select>
                                                <div id="category_error"></div>
                                            </div>
                                            <div class="form-group" id="producer_div">
                                                <label for="producer">Nhà sản xuất</label>
                                                <s:select path="producer" cssClass="form-control border-input">
                                                    <s:option value="0" label="Lựa chọn"/>
                                                    <s:options items="${producerList}" itemValue="id" itemLabel="name"/>
                                                </s:select>
                                                <div id="producer_error"></div>
                                            </div>
                                            <div class="form-group" id="nameProduct_div">
                                                <label for="name">Tên sản phẩm</label>
                                                <s:input path="name" cssClass="form-control border-input"/>
                                                <div id="nameProduct_error"></div>
                                                <span class="messageError">${message}</span>
                                            </div>
                                            <div class="form-group" id="unitPrice_div">
                                                <label for="unitPrice">Đơn giá</label>
                                                <s:input path="unitPrice" cssClass="form-control border-input"/>
                                                <div id="unitPrice_error"></div>
                                            </div>
                                            <div class="form-group" id="description_div">
                                                <label for="description">Mô tả</label>
                                                <s:textarea path="description" cssClass="form-control border-input"/>
                                                <div id="description_error"></div>
                                            </div>
                                            <div class="form-group" id="image_div">
                                                <label for="image">Hình ảnh</label>
                                                <s:input path="image" cssClass="form-control border-input"/>
                                                <div id="image_error"></div>
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
<script src="js/addProduct_form.js"></script>
</body>
</html>