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
     <td>�ۼ���</td>
     <td><input type="text"  value="<%=id %>" class="form-control" id="writer" disabled></td>
    </tr>
    <tr>
     <td>����</td>
     <td><%=title%></td>
    </tr>
    <tr>
     <td>�۳���</td>
     <td><%=text %></td>
    </tr>
     <tr> 
     <td colspan="2"  class="text-center">
      <input type="reset" value="�ݱ�" onclick="window.close()">
     </td>
    </tr>
    </table>
   </div>
</body>
</html>