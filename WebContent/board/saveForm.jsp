<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<div class="container">
	<form action="/blog2/board?cmd=save" method="POST">
	<input type="hidden" name="userId" value="${sessionScope.principal.id}">
		<div class="form-group">
			<label for="title">Title:</label>
			<input type="text" class="form-control" placeholder="title" id="title" name="title">
		</div>
	
		<div class="form-group">
			<label for="content">Content:</label>
			<textarea id="summernote" class="form-control" rows="5" id="content" name="content"></textarea>
		</div>
	
		<button type="submit" class="btn btn-primary">글쓰기 등록</button>
	</form>
</div>
  <script>
    $(document).ready(function() {
        $('#summernote').summernote({
            placeholder: '게시판 작성',
            tabsize: 2,
            height: 300
          });
    });
  </script>

</body>
</html>

