<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
textarea{
width:200px;
height:100px;}
.container{
margin:auto 0;
text-align:center;}
</style>
<body>
	<% String id = (String) session.getAttribute("id");
String w_id = (String)request.getParameter("id");
String text=(String)request.getParameter("text");
String title=(String)request.getParameter("title");
String idx=(String)request.getParameter("idx");
%>
<div class="container">
<div>
       <table style="margin-top:50px; margin-left: auto; margin-right: auto;">
    <tr>
     <td>작성자</td>
     <td><input type="text"  value="<%=w_id %>" class="form-control" id="writer" disabled></td>
    </tr>
    <tr>
     <td>제목</td>
     <td><input type="text" value="<%=title%>" disabled id="title"></td>
    </tr>
    <tr>
     <td>글내용</td>
     <td><textarea id="text" disabled><%=text %></textarea></td>
    </tr>
   
    </table>
    </div>
    <div class="container">

      <input type="button" id="revise" value="수정" onclick="revise()" style="visibility:hidden">
         <input type="button" id="delete" value="삭제" onclick="deletebbs()" style="visibility:hidden">

      <input type="reset" value="닫기" onclick="location.href='bbs.jsp'">
   </div>
   </div>
   <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   <script>
   
   var wid=document.getElementById('writer').value;
   var id='<%=id%>';
   if(wid==id){
	 $('#revise').css("visibility","visibility");
	 $('#delete').css("visibility","visibility");
   }
   revise=function(){
	   var input_title=document.getElementById('title');
	   var input_text=document.getElementById('text');
	   input_title.disabled=false;
	   input_text.disabled=false;
	   $('#revise').attr('onclick', 'test()');
	   $('#revise').attr('value','확인');
   }
   test=function(){
	   var id=$('#writer').val();
		  var title=$('#title').val();
		  var text=$('#text').val();
		  var date=$('#date').val();
		  var idx='<%=idx%>';
		  
		  
		 location.href='bbsupdate.jsp?id='+id+'&title='+title+'&text='+text+'&idx='+idx;
   }
   deletebbs=function(){
		  var idx='<%=idx%>';
		  location.href='bbsdelete.jsp?idx='+idx;
   }

   </script>
</body>
</html>