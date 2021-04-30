<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
window.onload=function(){
	
	document.getElementById('login').onclick=function(){
		var id=document.getElementById('id');
		var pw=document.getElementById('pw');
		location.href="login2.jsp?id="+id.value+"&pw="+pw.value;
		
	}
	
	document.getElementById('signup').onclick=function(){
		location.href="signup.jsp";
	}
}

</script>
<body>
<div>
<label for="id" >아이디</label><input type="text" id="id" >
</div>
<div>
<label for="pw" >비번</label><input type="password" id="pw">
</div>
<div>
<input type="button" value="로그인" id="login">
</div>
<div>
<input type="button" value="회원가입" id="signup">
</div>
</body>
</html>