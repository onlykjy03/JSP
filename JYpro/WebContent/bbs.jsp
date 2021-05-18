<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>커뮤니티</title>
       <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./styles.css" rel="stylesheet" />
</head>
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
                    <h1 class="masthead-heading mb-0">커뮤니티 </h1>
                    <a class="btn btn-primary btn-xl rounded-pill mt-5" href="write.jsp">글쓰기</a>
            </div>
            </div>
            </header>

        <div class="container">
<table class="table">
<thead>
<tr>
<th width="500px">제목</th>
<th >작성자</th>
<th >작성일</th>
<th >조회</th>
</tr>
</thead>
<tbody>

</tbody>
</table>

</div>

</body>
</html>