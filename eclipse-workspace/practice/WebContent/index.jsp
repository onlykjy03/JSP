<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
width : 600px;
height : 300px;
margin:0 auto;
background-color:#c8c8c8;
padding : 100px 100px;
box-sizing : border-box;
}

</style>
</head>

<body>
<script type="text/javascript">
window.onload=function(){
	
	document.getElementById('searchid').onclick=function(){
		location.href='searchid.jsp';
	}
	
	document.getElementById('login').onclick=function(){
		var id=document.getElementById('id');
			var pw=document.getElementById('pw');
		location.href='login.jsp?id='+id.value+'&pw='+pw.value;
	}
	
	document.getElementById('signin').onclick=function(){
		location.href='signin.jsp';
	}
	
	document.getElementById('logout').onclick=function(){
		location.href='logout.jsp';
	}
	
	
	
}

</script>

<div class="container">
<table>
<tr>
<td>아이디</td>
<td><input type="text" name="id" id="id"/></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="text" name= "pw" id="pw"/></td>
</tr>
<tr>
<td><input type="button" id="login" value="로그인"/></td>
<td><input type="button" id="searchid" value="ID찾기"/></td>
<td><input type="button" id="signin" value="회원가입"/></td>
<td><input type="button" id="logout" value="나가기"/></td>


</tr>

</table>
</div>
</body>
</html>