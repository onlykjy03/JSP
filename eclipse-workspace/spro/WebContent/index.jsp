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
<style type="text/css">
</style>

</head>
<body>
	<script type="text/javascript">
	//body 내용을 다 읽고 실행한다. 
	//getElementById('searchid') 에서 searchid를 찾지 못하는 현상 방지
		window.onload = function() { 
			document.getElementById('searchid').onclick = function() {
				//alert('연결됐나');
				location.href = 'searchid.jsp';
			}
			document.getElementById('login').onclick = function() {
				var id = document.getElementById('id');
				var pw = document.getElementById('pw');
				/* 	alert('id='+id.value);
				 alert('pw='+pw.value); */
				location.href = 'login.jsp?id=' + id.value + '&pw=' + pw.value;
			}
			document.getElementById('signin').onclick = function() {

				location.href = 'signin.jsp';
			}
			document.getElementById('logout').onclick = function() {

				location.href = 'logout.jsp';
			}
		}
	</script>

	<script type="text/javascript">
		//문서를 다 부르고 난 후 안에 함수를 실행하라.
		$('document').ready(function() {
			$('#seatsel').on('click', function() {
				location.href='seatsel.jsp';
			})
		})
	</script>

	<div class="jumbotron text-center">
		<h1>메인</h1>
		<p>Resize this responsive page to see the effect!</p>

		<div class="form-group">
			<label for="id">Name</label> <input type="text" class="form-control"
				id="id">
		</div>
		<div class="form-group">
			<label for="pw">Password</label> <input type="password"
				class="form-control" id="pw">
		</div>
		<div class="row">
			<input type="button" value="로그인" id="login"
				class="btn btn-primary ml-3 mr-2"> <input type="button"
				value="회원가입" id="signin" class="btn btn-primary mr-2"> <input
				type="button" value="ID찾기" id="searchid"
				class="btn btn-primary mr-2"> <input type="button"
				value="퇴실" id="logout" class="btn btn-primary mr-2"> <input
				type="button" value="좌석선택" id="seatsel" class="btn btn-primary mr-2">
			<input type="button" value="시간" id="timecharge"
				class="btn btn-primary mr-2">

		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<h3>Column 1</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
					laboris...</p>
			</div>
			<div class="col-sm-4">
				<h3>Column 2</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
					laboris...</p>
			</div>
			<div class="col-sm-4">
				<h3>Column 3</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
					laboris...</p>
			</div>
		</div>

	</div>

</body>
</html>