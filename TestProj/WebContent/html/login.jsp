<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<script type ="text/javascript" src="/Test2Project/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
      $("#id").blur(function(){
            var a = $("#id").val();
          var c = $("#id").val().length;
          if((c<=3) || (c>=15)){
               $("#ansid").text("ID는 15자 이상 3자 이하로 쓸 수 없습니다");
               $("#ansid").css("color","red");
          }else if(a!="admin"){
             $("#ansid").text("ID가 잘못되었습니다.");
             $("#ansid").css("color","red");
             
          }else{
        	  $("#ansid").text("");
          }
      });
});

$(function(){
      $("#pw").blur(function(){
         var a = $("#pw").val();
         var b = a.charAt(a.length-1).charCodeAt();
         if((b >= 33 && b <= 47) || (b >= 58 && b <= 64) ||
                (b >= 91 && b <= 96) || (b >= 123 && b <= 126)){
                 $("#pwchk").text("PW란에 특수문자를 넣을 수 없습니다");
                 $("#pwchk").css("color","red");
            }else if(a!="1234"){
               $("#pwchk").text("PW가 잘못되었습니다.");
                 $("#pwchk").css("color","red");
            }else{
            	$("#pwchk").text("");
            }
      });
});
$(function(){
   $("#btn").click(function(){
      var a = $("#id").val();
      var b = $("#pw").val();
      if(a=="admin" && b=="1234"){
         alert("로그인에 성공하였습니다.");
      }
   });
});
</script>
</head>
<body>
<div class="col-sm-6">
   <div class="form-group">
      <div class="col-sm-10">
         <label for="id" class="col-sm-2 control-label">ID</label>
         <input type="text" class="form-control" id="id" name="id" placeholder="ID">
      </div>
      <div class="form-group col-sm-12">
                <p id="ansid"></p>
        </div>   
   </div>
   <div class="form-group">
      <div class="col-sm-10">
         <label for="pw" class="col-sm-2 control-label">PW</label>
         <input type="password" class="form-control" id="pw" name="pw" placeholder="PW">
      </div>   
      <div class="form-group col-sm-12">
                <p id="pwchk"></p>
        </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <label><input type="checkbox" name="chk" id="chk" value="chk" checked>Remember me</label><br>
         <button type="submit" class="btn btn-primary" id="btn" name="btn">Login</button>
      </div>
   </div>
</div>
 
</body>
</html>