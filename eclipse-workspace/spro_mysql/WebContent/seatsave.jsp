
<%@page import="spro.com.org.SPRO_DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    String seat = request.getParameter("seat");
    String name = (String)session.getAttribute("name");
    String phone = (String)session.getAttribute("phone");
    String m_time="3";
    
    SPRO_DBManager sdbm= new SPRO_DBManager();
   int ret= sdbm.seat_useInsert(seat,name,phone,m_time);
   if(ret>0)
	   out.println("좌석 선택 완료");
   else
	   out.println("좌석 선택 실패");
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

<h1>좌석저장</h1>
<p>선택한 좌석과 현재 시간 보내기</p>

</div>
</body>
</html>