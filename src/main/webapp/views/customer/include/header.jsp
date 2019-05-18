<%@page import="org.springframework.ui.ModelMap" %>
<%@page import="org.springframework.web.bind.annotation.ModelAttribute" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="header">
    <div class="headertop_desc">
        <img alt="" src="${pageContext.request.contextPath}/footwear/images/logo.png"
             style="width: 150px; margin-left: 0">
        <div class="account_desc">
            <%
                if (session.getAttribute("user1") == null) {
                    session.setAttribute("href", "login");
                    session.setAttribute("action", "Đăng nhập");
                } else {
                    session.setAttribute("href", "logout");
                    session.setAttribute("action", "Đăng xuất");
                }
            %>
            <ul>
                <li><a href="#" style="color: red;">${user1.username}</a></li>
                <li><a href="${pageContext.request.contextPath}/${href}"> ${action}</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
    <div class="header_bottom">
        <div class="menu">
            <ul>
                <li id="home"><a
                        href="${pageContext.request.contextPath}/home">Trang chủ</a></li>
                <li id="product"><a
                        href="${pageContext.request.contextPath}/product">Sản phẩm</a></li>
                <li id="about"><a href="${pageContext.request.contextPath}/about">Giới thiệu</a></li>
                <li id="contact"><a href="${pageContext.request.contextPath}/contact">Liên hệ</a></li>
                <li id="cart"><a href="${pageContext.request.contextPath}/cart/show">Giỏ
                    hàng</a></li>
            </ul>
        </div>
        <div class="search_box">
            <form action="${pageContext.request.contextPath}/search">
                <input type="text" name="name" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'name';}">
                <input type="submit" value="">
            </form>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        console.log('ss', window.location.href)
        var cs = window.location.href;
        var path = cs.substring(22);
        console.log('x', path);
        if (path === 'ShoeStore/product') {
            $('#product').addClass("active");
        } else if (path === 'ShoeStore/home') {
            $('#home').addClass("active");
        } else if (path === 'ShoeStore/about') {
            $('#about').addClass("active");
        } else if (path === 'ShoeStore/contact') {
            $('#contact').addClass("active");
        } else if (path === 'ShoeStore/cart/show') {
            $('#cart').addClass("active");
        }
    });
</script>