<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="current"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-expand-lg  mb-3" style="background-color: #bc2020;">
	<div class="container-fluid">
		<a class="navbar-brand" href="/main">
			<img src="/img/MemberyIcon.png" alt="" style="width:150px" height="35"></img>
		</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
				<li class="nav-item">
					<a class="nav-link" href="/member/signup"><i class="fa-solid fa-house-chimney-medical" style="color: #ffe5e5;"></i></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/logIn"><i class="fa-solid fa-house-circle-check" style="color: #ffe5e5;"></i></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/logOut"><i class="fa-solid fa-house-chimney" style="color: #ffe5e5;"></i></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/member/list"><i class="fa-solid fa-address-book" style="color: #ffe5e5;"></i></a>
				</li>
			</ul>
		</div>
	</div>
</nav>

