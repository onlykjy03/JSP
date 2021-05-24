<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String id = (String)request.getAttribute("id");
String index = (String)request.getAttribute("index");
String text=(String)request.getAttribute("text");
String title=(String)request.getAttribute("title");
%>
<div class="container">
       <table style="margin-top:50px; margin-left: auto; margin-right: auto;">
    <tr>
     <td>작성자</td>
     <td><input type="text"  value="<%=id %>" class="form-control" id="writer" disabled></td>
    </tr>
    <tr>
     <td>제목</td>
     <td><%=title%></td>
    </tr>
    <tr>
     <td>글내용</td>
     <td><%=text %></td>
    </tr>
     <tr> 
     <td colspan="2"  class="text-center">
      <input type="reset" value="닫기" onclick="window.close()">
     </td>
    </tr>
    </table>
   </div>
</body>
</html>