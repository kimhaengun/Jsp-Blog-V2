<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form action="/blog2/user?cmd=join" method="post">
		<div class="form-group">
			<label for="text">username:</label> <input type="text"
				class="form-control" placeholder="Enter username"
				name="username" required/>
		</div>
		<div class="form-group">
			<label for="pwd">Password:</label> <input type="password"
				class="form-control" placeholder="Enter password"
				name="password" required/>
		</div>
		<div class="form-group">
			<label for="pwd">email:</label> <input type="email"
				class="form-control" placeholder="Enter email"
				name="email" required/>
		</div>
		<div class="form-group">
			<label for="pwd">address:</label> <input type="text"
				class="form-control" placeholder="Enter address"
				name="address" required/>
		</div>
		<div class="form-group">

			<button type="submit" class="btn btn-primary">회원가입</button>
	</form>
</div>
</body>
</html>