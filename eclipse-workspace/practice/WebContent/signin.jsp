<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
width:600px;
height:400px;
margin : 0 auto;
background-color:#c8c8c8;
padding=100px 50px;
box-sizing:border-box;

}
</style>

</head>
<body>
<div class="container">
<form action="signproc.jsp" method="post">
<table>
<tr>
<td>아이디<input type="text" name="id"/></td>
</tr>
<tr>
<td>비밀번호<input type="text" name="pw"/></td>
</tr>
<tr>
<td>이름<input type="text" name="name"/></td>
</tr>
<tr>
<td>전화번호<input type="text" name="phone"/></td>
</tr>

</table>
<input type="submit" value="회원가입" />
</form>
</div>
</body>
</html>