<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<div class="jumbotron">

		<h1>
			회원가입
			<h1>
				<p>연습2</p>

				<form action="signproc2.jsp" method="post">
					<div class="form-group">
						<label for="id">Id:</label> <input type="text"
							class="form-control" name="id">
					</div>
					<div class="form-group">
						<label for="pw">Password:</label> <input type="text"
							class="form-control" name="pw">
					</div>
					<div class="form-group">
						<label for="name">Name:</label> <input type="text"
							class="form-control" name="name">
					</div>
					<div class="form-group">
						<label for="phone">Phone:</label> <input type="text"
							class="form-control" name="phone">
					</div>

					<input type="submit" class="btn btn-info" value="회원가입" />
				</form>
	</div>
</body>
</html>