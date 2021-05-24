<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>�뱸����</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./styles.css" rel="stylesheet" />
    </head>

    <script>
var index=0;
window.onload=function(){
	slideShow();
}

function slideShow(){
	var i;
	var x=document.getElementsByClassName("slide");
	for(i=0;i<x.length; i++){
		x[i].style.display="none";
	}
	index++;
	if(index>x.length){
		index=1;
	}
	x[index-1].style.display="block";
	setTimeout(slideShow,3000);
}
</script>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="home.jsp">�뱸����</a>
                <a class="navbar-brand" href="bbs.jsp">Ŀ�´�Ƽ</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                         <%
		Object id = (String) session.getAttribute("id");
		if (id != null) {%>
			<li class="nav-item"><%=id%>��, ȯ���մϴ�!</li>
		<li class="nav-item"><a class="nav-link" href="login.jsp" onclick="location.href='logout.jsp'">Log Out</a></li>

                        <%}else{ %>
                                                  <li class="nav-item"><a class="nav-link" href="signin.jsp">Sign Up</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Log In</a></li>
                          <%} %>
                    </ul>
                </div>
            </div>
        </nav>
        <header class="masthead text-center text-white">
            <div class="masthead-content">
                <div class="container">
                    <h1 class="masthead-heading mb-0">2021 �뱸���� </h1>
                    <h2 class="masthead-subheading mb-0">�뱼�뱼</h2>
                    <a class="btn btn-primary btn-xl rounded-pill mt-5" href="#!">�ٷΰ���</a>
                    <br> <br>
                    <% int a; %>
                    <a href="festival.jsp?a=1"><img class="slide" alt="" src="./img/����1.jpg" width=1200px height=500px align="center"></a>
<a href="festival.jsp?a=2"><img class="slide" alt="" src="./img/����2.jpg" width=1200px height=500px align="center"></a>
<a href="festival.jsp"><img class="slide" alt="" src="./img/����3.jpg" width=1200px height=500px align="center"></a>
                </div>
            </div>
            <div class="bg-circle-1 bg-circle"></div>
            <div class="bg-circle-2 bg-circle"></div>
            <div class="bg-circle-3 bg-circle"></div>
            <div class="bg-circle-4 bg-circle"></div>
            <div class="container">

</div>
            </header>

<session>
<h1>=================================�޷� �� ��=========================</h1>
</session>

</body>
</html>