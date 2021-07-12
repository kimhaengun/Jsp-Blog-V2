<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Blog</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

	<nav class="navbar navbar-expand-sm bg-light">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="<%=request.getContextPath()%>">Main</a></li>

			<c:choose>
				<c:when test="${sessionScope.principal != null}">
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/board?cmd=saveForm">글쓰기</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/user?cmd=updateForm">회원정보</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/user?cmd=logout">로그아웃</a></li>

				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/user?cmd=joinForm">회원가입</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/user?cmd=loginForm">로그인</a></li>

				</c:otherwise>
			</c:choose>


		</ul>
	</nav>
	<br>