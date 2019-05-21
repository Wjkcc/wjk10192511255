<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 <style>
    .div{
        width:420px;
        height:300px;
        border:1px solid black;
        backgroud-color:#EEE9E9;
        margin-left:500px;
        border-radius:10px;


    }
    .div1{
        width:400px;
        height:50px;
        font-size:30px;
        color:#a12345;
       font-family:"Bauhaus 93";
        margin-left:500px;
        margin-top:100px;
        text-align:center;
    }
    .dl{
        width:200px;
        height:30px;
        border:#CFCFCF solid 1px;
        margin-top:30px;
        margin-left:5px;
        float:left;
        border-radius:5px;
    } .dlc{
          width:70px;
          height:30px;

          margin-top:30px;
          margin-left:5px;
          float:left;
        text-align:center;
      }
    .dld{
        width:80px;
        height:30px;
        margin-top:30px;
        margin-left:5px;
        float:left;
        text-align:center;
    }.a1{
        margin-left:20px;
        width:410px;
             height:80px;
             margin-top:10px;

         }
    .dle{
        width:80px;
        height:45px;
        margin-top:30px;
        margin-left:140px;
        float:left;
        background-color:#5CACEE;
        text-align:center;
        border-radius:10px;
        color:white;
        font-size:25px;
    }
</style>
<div class="div1">Shopping Register</div>

    <form action="addUser" method="post"class="div">
      <div class="a1"><div class="dlc">用户名：</div><input name="user.username" type="text" class="dl" id="name"><div class="dld" id="checkResult"></div></div>
        <div class="a1"><div class="dlc">密码：</div><input name="user.password"type="password" class="dl"></div>
        <div class="a1"><button type="submit" class="dle">注册</button></div>
    </form>
 



<script src="http://how2j.cn/study/jquery.min.js"></script>
<script>
$(function(){
   $("#name").keyup(function(){
     var page = "checkUserName";
     var value = $(this).val();
    var username="?user.username="+value;
    page=page+username;
  
        $.post(
            page,
            function(result){
              $("#checkResult").html(result);
            }
        );
   });
});
  
</script>

