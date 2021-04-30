<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</style>

</head>
<body>

	<div class="jumbotron text-center">
		<h1>회원가입</h1>
		<p>Resize this responsive page to see the effect!</p>

		<form action="signproc.jsp" method="post">
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" name="id"
					class="form-control">
			</div>
			<div class="form-group">
				<label for="pw">비밀번호</label> <input type="text" name="pw"
					class="form-control">
			</div>
			<div class="form-group">
				<label for="name">이름</label> <input type="text" name="name"
					class="form-control">
			</div>
			<div class="form-group">
				<label for="phone">전화번호</label> <input type="text" name="phone"
					class="form-control">
			</div>
			
			<input type="submit" value="회원가입" />
		</form>
	</div>


</body>
</html>