<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
window.onload=function(){
	document.getElementById('login').onclick=function(){
var id =document.getElementById('id');
var password = document.getElementById('password');
location.href = 'home.jsp?id='+id.value+'&password='+password.value;
	}
	
	document.getElementById('signin').onclick=function(){
		location.href = 'signin.jsp';
	}
	
}</script>
</head>
<style>
h1{
color:#e6dc30;
font-weight:bold;
}
.loginbox{
width : 400px;
height :500px;
border : 1px solid gray;
margin:0 auto;
text-align :center;
}
h5{
display:inline;
text-align:center;}

#loginbottom{
width:400px;
height:100px;
margin:0 auto;
text-align:right;
color:gray;
}
input {
  width:200px;
  height:20px;
}
#logo { text-decoration:none }

</style>
<body>
<div class=loginbox>
<a href="home.jsp" id="logo"><h1>DaeGul</h1></a>
<input type="text" placeholder="아이디" id="id">
<br><br>
<input type="password" placeholder="비밀번호" id="password">
<br><br>
<a href="searchid.jsp">아이디를 잊으셨나요?</a>
<br><br>
<button id="login">로그인</button>
<button id="signin">회원가입</button>
</div>
<div id="loginbottom">
<h5>도움말 </h5>
<h5>개인정보처리방침 </h5>
<h5>약관</h5>
</div>
</body>
</html>