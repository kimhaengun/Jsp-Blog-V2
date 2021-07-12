<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../layout/header.jsp" %>
<div class="container">
	<form action="/blog2/user?cmd=login" method="post" onsubmit="return valid()">
		<div class="form-group">
		<div class = "d-flex justify-content-between">
			<label for="text">username:</label>
		</div>
			 <input type="text"
				class="form-control" placeholder="Enter username" id="username"
				name="username" required/>
		</div>
		<div class="form-group">
			<label for="pwd">Password:</label> <input type="password"
				class="form-control" placeholder="Enter password"
				name="password" required/>
		</div>
		
		<div class="form-group">

			<button type="submit" class="btn btn-primary">로그인</button>
	</form>
</div>
</body>
</html>