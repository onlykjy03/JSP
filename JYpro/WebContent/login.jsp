<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
<script type="text/javascript">
window.onload=function(){
	document.getElementById('login').onclick=function(){
		var id = document.getElementById('id');
		var pwd=document.getElementById('pwd');
		location.href='Login2.jsp?id='+id.value+'&pwd='+pwd.value;
	}
	document.getElementById('signin').onclick=function(){
		location.href='signin.jsp';
	}
	document.getElementById('logout').onclick=function(){
		<%session.invalidate();%>
		location.href='login.jsp';
		}
}
</script>
<div class=loginbox>
<a href="home.jsp" id="logo"><h1>DaeGul</h1></a>

<%
Object id = session.getAttribute("id");
out.println(id);
if ( id != null ){ 
%>
	<p><%=id%>님 환영합니다!</p>
	<button id="logout">로그아웃</button>
	<%}else{ %>
<input type="text" placeholder="아이디" id="id">
<br><br>
<input type="password" placeholder="비밀번호" id="pwd">
<br><br>
<a href="searchid.jsp">아이디를 잊으셨나요?</a>
<br><br>
<button id="login">로그인 </button>
<button id="signin">회원가입</button>
</div>
<div id="loginbottom">
<h5>도움말 </h5>
<h5>개인정보처리방침 </h5>
<h5>약관</h5>
</div>
<%} %>
</body>
</html>

