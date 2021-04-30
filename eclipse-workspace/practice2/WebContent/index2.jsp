<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<script type="text/javascript" >
window.onload=function(){
	document.getElementById("login").onclick=function(){
		location.href='login.jsp?id='+id.value+'&pw='+pw.value;
	}
	document.getElementById("signin").onclick=function(){
		location.href='signin.jsp';
	}
	document.getElementById("searchid").onclic=function(){
		location.href='searchid.jsp';
	}
	
}
</script>
<div class="jumbotron">
  <h1>연습</h1>
  <p>Resize this responsive page to see the effect!</p> 
  <div class="form-group">
  <label for="id">Name:</label>
  <input type="text" class="form-control" id="id">
</div>
<div class="form-group">
  <label for="pw">Password:</label>
  <input type="password" class="form-control" id="pw">
</div>
<button type="button" id="login" class="btn btn-info"  ml-3 mr-2>로그인</button>
<button type="button" id="signin" class="btn btn-info"  ml-3 mr-2>회원가입</button>
<button type="button" id="searchid" class="btn btn-info">아이디찾기</button>
</div>
  
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Column 1</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 2</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 3</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>
</div>
</body>
</html>