<%@page import="java.awt.print.Printable"%>
<%@page import="kb.ConnMysql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
    <%Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성하기</title>
</head>
<style>
.container{
margin: 0 auto;
text-align : center;}
</style>
<body>
<div class="container">
       <table style="margin-top:50px; margin-left: auto; margin-right: auto;">
    <tr>
     <td>작성자</td>
    <%  String id = (String) session.getAttribute("id");%>
     <td><input type="text"  value="<%=id %>" class="form-control" id="writer" disabled></td>
    </tr>
    <tr>
     <td>제목</td>
     <td><input type="text"  class="form-control" id="title" placeholder="제목을 입력하세요"></td>
    </tr>
    <tr>
     <td>글내용</td>
     <td><textarea rows="10" cols="50" id="text" class="form-control"></textarea></td>
     <td><input type="text" id="date" value="<%= sf.format(nowTime) %>"  style="display:none"></td>
    </tr>
     <tr> 
     <td colspan="2"  class="text-center">
      <input class="btn-success" type="submit" value="작성" id="submit" >
      <input type="reset" value="취소" onclick="window.close()">
     </td>
    </tr>
    </table>
   </div>

      <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   
	  <script>
		$('#submit').click(function(){
			 var id=$('#writer').val();
			  var title=$('#title').val();
			  var text=$('#text').val();
			  var date=$('#date').val();
			 location.href='bbsinsert.jsp?id='+id+'&title='+title+'&text='+text;
			/*   $(opener.document).find('#title').text(title);
			  $(opener.document).find('#writer').text(id);
			  $(opener.document).find('#text').text(text);
			  $(opener.document).find('#date').text(date);  */
			//opener.document.getElementById("title").value=document.getElementById("title").value;
			 // $("#writer", opener.document).val("writer");
			 //opener.location.href = opener.document.bbs.jsp;
// 			 window.close();

		});
	  </script>
	  
	  

   

</body>
</html>