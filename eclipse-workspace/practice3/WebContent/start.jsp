<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	document.getElementById('login').onclick=function(){
		var id=document.getElementById('id');
		var pw= document.getElementById('pw');
		location.href='login.jsp?id='+id.value+'&pw='+pw.value;
	}
		
		document.getElementById('signup').onclick=function(){
			location.href='signup.jsp';
		}

}
</script>
</head>
<body>
<div>
<label for="id">아이디</label><input type="text" id="id">
<label for="pw">비밀번호</label><input type="password" id="pw">
<input type="button" id="login" value="로그인" >
</div>

<div>
<input type="button" id="signup" value="회원가입">
</div>

</body>
</html>