<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="mb-3 mt-3">
<form   method="post" action="${pageContext.request.contextPath}/board/boardPro" 
	enctype="multipart/form-data">
<h3   align="center">게시판 입력</h3>
<br>
<p>      
<label class="form-label">작성자</label>
<input class="form-control" type="text"  name="name">
</p><p>      
<label class="form-label">비밀번호</label>
<input class="form-control" type="password"  name="pass">
</p><p>      
<label class="form-label">제목</label>
<input class="form-control" type="text"  name="subject">
</p><p>      
<label class="form-label">내용</label>
<textarea class="form-control" style="resize:none"  name="content"></textarea>
</p>
<p>      
<label class="form-label">파일 </label>
<input class="form-control" type="file" name="file1">
</p>


  <p  class="col d-flex justify-content-center"><button type="submit" class="btn btn-primary" 
  style="width:120px">저장</button></p>
</form>
</div>

</body>
</html>