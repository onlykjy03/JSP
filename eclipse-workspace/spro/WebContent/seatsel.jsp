<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%Object name= session.getAttribute("name");
    if(name==null){
    %>
    
    <script>
    alert('로그인 하세요.');
    location.href='index.jsp';
    </script>
    <%
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
<link rel="stylesheet" href="/spro/css/mycss.css">
<script type="text/javascript">

$('document').ready(function(){
	$('button').on('click',function(obj){
		$('button').attr('class','btn btn-outline-success btn-block');
		$(this).attr('class','btn btn-danger btn-block');
		
	})
	
	$('#confirm').on('click',function(){
		var seat='';
		$('button').each(function(index,obj){		
			if($(this).attr('class')=='btn btn-danger btn-block'){
				//console.log("$(this).attr('class')="+$(this).attr('class'));
				//console.log("$(this).text()="+$(this).text());
				seat=$(this).text();
			}
			})
		location.href='seatsave.jsp?seat='+seat;
	})
})

</script>


</head>
<body>
<div class="jumbotron *">

<h1>좌석선택</h1>
<p>좌석을 선택하세요.</p>
<div class="row text-center">
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	1	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	2	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	3	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	4	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	5	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	6	</button></div>
</div>
<div class="row text-center mt-2">
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	7	</button></div>
<div class="col-sm-8"></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	8	</button></div>
</div>
<div class="row text-center mt-2">
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	9	</button></div>
<div class="col-sm-1"></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	10	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	11	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	12	</button></div>
<div class="col-sm-1"></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	13	</button></div>
</div>
<div class="row text-center mt-2">
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	14	</button></div>
<div class="col-sm-1"></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	15	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	16	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	17	</button></div>
<div class="col-sm-1"></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	18	</button></div>
</div>
<div class="row text-center mt-2">
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	19	</button></div>
<div class="col-sm-8"></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	20	</button></div>
</div>
<div class="row text-center mt-2">
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	21	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	22	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	23	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	24	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	25	</button></div>
<div class="col-sm-2"><button class="btn btn btn-outline-success btn-block">	26	</button></div>
</div>
<div class="row text-center mt-5">
<div class="col-sm-4"></div>
<div class="col-sm-2"><input type="button" id="confirm" class="btn btn btn-info btn-block" value="확인"/>	</div>
<div class="col-sm-1"></div>
<div class="col-sm-2"><input type="button" id="cencel" class="btn btn btn-info btn-block" value="취소"/>	</div>
</div>

</div>
</body>
</html>