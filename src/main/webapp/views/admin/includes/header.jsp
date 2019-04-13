<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar bar1"></span> <span
					class="icon-bar bar2"></span> <span class="icon-bar bar3"></span>
			</button>
			<a class="navbar-brand" href="#">Shoe Shop</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i
						class="ti-user"></i>
						<p>
							<font color="red">Xin chào, ${sessionScope.user1.username} </font>
						</p>
				</a></li>
				<li>
				<%
				if( session.getAttribute("user1") == null){
					session.setAttribute("href","login");
					session.setAttribute("action", "Đăng nhập");
				}else{
					session.setAttribute("href", "logout");
					session.setAttribute("action", "Đăng xuất");
				}
				%>
				<a href="${pageContext.request.contextPath}/${href}" class="dropdown-toggle"> <i
						class="ti-logout"></i>
						<p> ${action }</p>
				</a></li>
			</ul>

		</div>
	</div>
</nav>