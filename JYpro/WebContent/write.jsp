<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խñ� �ۼ��ϱ�</title>
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
     <td>�ۼ���</td>
     <td><input type="text"  class="form-control" name="writer"></td>
    </tr>
    <tr>
     <td>����</td>
     <td><input type="text"  class="form-control" name="subject" placeholder="������ �Է��ϼ���"></td>
    </tr>
    <tr>
     <td>�۳���</td>
     <td><textarea rows="10" cols="50" name="content" class="form-control"></textarea></td>
    </tr>
     <tr> 
     <td colspan="2"  class="text-center">
      <input class="btn-success" type="submit" value="�ۼ�" id="writeSubmit">
      <input type="reset" value="���" onclick="location.href='bbs.jsp'">
     </td>
    </tr>
    
    </table>
   </div>
</body>
</html>