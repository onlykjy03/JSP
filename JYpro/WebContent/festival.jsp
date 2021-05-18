<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>대구축제</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./styles.css" rel="stylesheet" />
<title>축제 상세 정보</title>
</head>
<style>
.container{
margin : 0 auto;
}

.comment{
width:1000px;
border : 1px solid gray;
margin:0 auto;
text-align :center;
padding :30px;
}
</style>
<% String test=request.getParameter("a"); %>
<body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="home.jsp">대구축제</a>
                <a class="navbar-brand" href="bbs.jsp">커뮤니티</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="signin.jsp">Sign Up</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Log In</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <header class="masthead text-center text-white">
            <div class="masthead-content">
                <div class="container">
                    <h1 class="masthead-heading mb-0">2021 대구축제 </h1>
<div class="container">
<img id="fimg" src="./img/축제<%=test%>.jpg" width=1200px height=500px align="center">
</div>
 </div>
 </header>
<br><br>
<div class="comment">
<h2>댓글 0개</h2>
<textarea cols=100 rows=5 id="newcomment" name="newComment" align="center" placeholder="댓글 달기..."></textarea>
<button type="submit" onclick="submitComment()">작성</button>
<script>

</script>
</div>

</body>
</html>