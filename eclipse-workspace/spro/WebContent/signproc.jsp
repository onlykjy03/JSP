<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String suValue= "";
/* out.println(123);
out.println("<p>문단</p>");

for(int i =0; i<10; i++){
	out.println("i="+i);
} */

//id의 값을 가져옴
out.println("<br>");
String p_id = (String)request.getParameter("id");
//out.println("a="+a);
String p_pw = (String)request.getParameter("pw");
String p_name = (String)request.getParameter("name");
String p_phone = (String)request.getParameter("phone");

Connection conn=null;
PreparedStatement pstmt=null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	conn=DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:xe","AI","1234");
	pstmt = conn.prepareStatement("INSERT INTO "+
			"SPRO_MEMBER VALUES "+
			"(SPROMEMBER.NEXTVAL ,?,?,?,?)");
	pstmt.setString(1,p_id);
	pstmt.setString(2,p_pw);
	pstmt.setString(3,p_name);
	pstmt.setString(4,p_phone);
	//crtl shift x 대문자 변환
	//crtl shift y 소문자 변환
	
	int ret = pstmt.executeUpdate();
	if(ret >0){
		System.out.println("insert 완료");
		suValue="<a class='btn btn-primary' href='index.jsp'>로그인페이지이동</a>";
		
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
<div class="jumbotron">

<h1>회원가입 완료</h1>
<p>Thank you</p>
<% out.print(suValue); %>
</div>
</body>
</html>

