<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시글 작성하기</title>
</head>
<style>
.container{
margin: 0 auto;
text-align : center;}
</style>
<body>
<div class="container">
       <table>
    <tr>
     <td>작성자</td>
     <td><input type="text"  class="form-control" name="writer"></td>
    </tr>
    <tr>
     <td>제목</td>
     <td><input type="text"  class="form-control" name="subject" placeholder="제목을 입력하세요"></td>
    </tr>
    <tr>
     <td>글내용</td>
     <td><textarea rows="10" cols="50" name="content" class="form-control"></textarea></td>
    </tr>
     <tr> 
     <td colspan="2"  class="text-center">
      <input class="btn-success" type="submit" value="작성" id="writeSubmit">
      <input type="reset" value="취소" onclick="location.href='bbs.jsp'">
     </td>
    </tr>
    
    </table>
   </div>
</body>
</html>