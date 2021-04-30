<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
<%
String suValue ="";
String id=(String)request.getParameter("id");
String pw=(String)request.getParameter("pw");
String name=(String)request.getParameter("name");
String phone=(String)request.getParameter("phone");


Connection conn = null;
PreparedStatement pstmt=null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","AI","1234");
	pstmt=conn.prepareStatement("INSERT INTO SPRO_MEMBER2 VALUES(?,?,?,?)");
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setString(4, phone);
	
	int ret = pstmt.executeUpdate();
	if(ret>0){
		System.out.println("완료");
		suValue="<a class='btn btn-primary' href='index2.jsp'>로그인페이지이동</a>";
	}
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	try{
		if(pstmt !=null) pstmt.close();
		if(conn !=null) conn.close();
	}catch(Exception ex){
		
	}
}


%>
<div class="jumbotron">

<h1>회원가입완료<h1>
<p>연습2</p>
<%out.println(suValue); %>
</div>
</body>
</html>