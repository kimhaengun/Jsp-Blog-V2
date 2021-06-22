<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form action="/action_page.php">
		<div class="form-group">
			<label for="text">username:</label> <input type="text"
				class="form-control" placeholder="Enter username">
		</div>
		<div class="form-group">
			<label for="pwd">Password:</label> <input type="password"
				class="form-control" placeholder="Enter password">
		</div>
		<div class="form-group">
			<label for="pwd">email:</label> <input type="email"
				class="form-control" placeholder="Enter email">
		</div>
		<div class="form-group">
			<label for="pwd">address:</label> <input type="text"
				class="form-control" placeholder="Enter address">
		</div>
		<div class="form-group">

			<button type="submit" class="btn btn-primary">회원가입</button>
	</form>
</div>
</body>
</html>