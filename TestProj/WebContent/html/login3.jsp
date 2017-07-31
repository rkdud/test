<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<script type="text/javascript" src="/HTMLProject/js/jquery-3.2.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#id").blur(function(){
		var a = $("#id").val();
		if((a.length<4) ||(a.length>16)){
			$("#ansid").text("ID는 15자 이상 3자 이하로 쓸 수 없습니다.");
			$("#ansid").css("color","red");
		}else{
			$("#ansid").text("");
		}
	})
});

$(function(){
	$("#pw").blur(function(){
		var errpw= /[!,@,#,$,%,^,&,*,?,_,~,(,)]/;
		var input_pw = $("#pw").val();
		
		if(errpw.test(input_pw)){
			$("#anspw").text("PW란에 특수문자를 넣을 수 없습니다.");
			$("#anspw").css("color","red");
		}else{
			$("#anspw").text("");
		}
	})
});



});


</script>
</head>
<body>

 <form role="form">
 <div class="container-page">	
        <div class="form-group">
          <label for="id">ID</label><br>
          <div class="col-sm-10">
          <input type="text" class="form-control" id="id" name="id" placeholder="ID">
          </div>
        </div>
        <div class="form-group col-sm-10">
					<p id="ansid"></p>
				</div>
				
        <div class="form-group">
          <br><label for="inputPassword">PW</label><br>
          <div class="col-sm-10">
          <input type="password" class="form-control" id="pw" name="pw" placeholder="PW">
          </div>
        </div>
        <div class="form-group col-sm-10">
					<p id="anspw"></p>
				</div>
       <br><div class="checkbox pull-right">
          <label >
            <input type="checkbox" checked="">
            Remember me </label>
        </div>
        <button type="button" class="btn btn btn-primary" id="btn">
          Login
        </button>
        </div>
      </form>

</body>
</html>
