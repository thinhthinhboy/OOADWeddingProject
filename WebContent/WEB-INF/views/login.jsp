<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- CSS -->
<link rel="stylesheet" href='<c:url value="/assets/css/style.css"/>'>
<!-- Favicon -->
<link rel="icon" href="<c:url value="/assets/images/logo1-dark.png"/>"
	type="image/x-icon">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>">
</head>
<body>
	<div class="loginBackground container-fluid">
		<div class="row">
			<div class="col-sm"></div>
			<div class="col-sm-8 d-flex">
				<div class="animationBg">
					<c:choose>
						<c:when test="${ alert == ''}">
							<div class="loginForm active" id="loginForm">
						</c:when>
						<c:otherwise>
							<div class="loginForm disable" id="loginForm">
						</c:otherwise>
					</c:choose>
					<p class="loginTitle">Welcome back</p>
					<form action="<%=request.getContextPath()%>/login" method="POST">
						<p>Username</p>
						<input name="username" id="username" type="text" required>
						<p>Password</p>
						<input name="password" id="password" type="password" required>
						<div class="text-center mb-4">
							<button type="submit" class="btn">Get Started</button>
						</div>
						<div class="text-center">
							<a onclick="changeForm('recoverForm')">Forgot your password?</a>
						</div>
					</form>
				</div>


				<c:choose>
					<c:when test="${ alert == ''}">
						<div class="loginForm disable" id="recoverForm">
					</c:when>
					<c:otherwise>
						<div class="loginForm active" id="recoverForm">
					</c:otherwise>
				</c:choose>
				<p class="loginTitle">Recover Password</p>
				<form action="<%=request.getContextPath()%>/login_recover"
					method="POST">
					<p>Username</p>
					<input type="text" name="username" required
						onblur="checkEmail(this)">
					<div class="text-center mb-4">
						<button class="btn" onclick="changeForm('loginForm')"
							type="button">Cancel</button>
						<a href="">
							<button class="btn" type="submit" id="btnSend">Send
								request</button>
						</a>
					</div>
					<p class="text-center">Click 'Send request' and wait for
						manager to reset your password</p>

					<c:choose>
						<c:when test="${ alert == ''}">
							<div id="alert" class="alert alert-danger mb-0 text-center"
								style="display: none">${alert}</div>
						</c:when>
						<c:otherwise>
							<div id="alert" class="alert alert-danger mb-0 text-center"
								style="display: block">${alert}</div>
						</c:otherwise>
					</c:choose>
				</form>
			</div>
		</div>
	</div>
	<div class="col-sm"></div>
	</div>
	</div>




	<!-- Optional JavaScript -->
	<script src='<c:url value="/assets/js/login.js"/>'></script>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="<c:url value="/assets/bootstrap/jquery.slim.min.js"/>"></script>
	<script src="<c:url value="/assets/bootstrap/popper.min.js"/>"></script>
	<script src="<c:url value="/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>