<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!--<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>-->
    <!--<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">-->
    <!--<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>-->
</head>
<body>
<s:set value="#session.user" name="user"/>
<style>
    .ch{
        width:1300px;
        height:200px;
    margin-left:15px;
    }
    .h1{
        width:1300px;
        height:129px;

        border-bottom:1px solid #000099;
    }
    .h2{
        width:1300px;
        height:70px;

    }
    .category1{
        width:100px;
        height:55px;
        padding-top:15px;

        float:left;
        margin-left:150px;
      color:#030303;
        font-size:23px;
        text-align:center;
    }
    .category{
        width:100px;
        height:55px;
        padding-top:15px;

        float:left;
      margin-left:10px;
        color:yellow;
        font-size:23px;
        text-align:center;
    }
    .categoryr{
        width:90px;
        height:55px;
        padding-top:15px;

        float:right;
        margin-right:0px;
      color:#030303;
        font-size:23px;
        text-align:center;
    }
    .categoryrl{

        width:95px;
        height:55px;
        padding-top:15px;

        float:right;
       color:#030303;
        font-size:23px;
        text-align:center;
    }
   .t{
     height:119px;
       width:800px;
       text-align: center;
      float:left;
       margin-left:250px;
     padding-top:10px;
color:#030303;
       font-size: 55px;
       font-family: "Bauhaus 93";
   }
    .t1{
        margin-top:20px;
    }
    .car{
        width:200px;

       height:90px;
        padding-top:39px;
        text-align:center;
        font-size:20px;
        color:white;
        float:right;
    }
    a{
        text-decoration: none;
      color:#030303;
    }
    .imp{
    width:25px;
    height:25px;
    border-radius:15px;
    margin-left:80px;
    border:black 1px solid;
    margin-top:2px;
    }
    #my{
        width:100px;
        height:100px;
        border:1px #8B8B83 solid;
        color:#7171C6;
        size:23px;
        display:none;
    }
    #username{
  display:none;
    }
      #nickname{
  display:none;
    }
</style>
<script src="http://how2j.cn/study/jquery.min.js"></script>
<script>

$(function() {
	var username=$("#username").text();
	var nickname=$("#nickname").text();
	 $(document).ready(function(){
		 if(username==""){
				
				$("#user").text("登录");
				$("#up").hide();
			}else{
				$("#user").text(nickname);
				$("#up").show();
				
			}
		   
		  });
	
    $("#myinformation").mouseenter(function () {
        $("#my").show();

    });
    $("#myinformation").mouseleave(function(){
        $("#my").hide();

    });
});
</script>

<div id="nickname">${user.nickName}</div>
<div id="username">${user.username}</div>
<div class="ch">
    <div class="h1">
        <div class="t">BodyBuildingShopping</div>
        <div class="car"><span><img src="/pt//car.png" width="20px" height="15px"></span><a href="ListCartByU">   购物车</a></div>
    </div>
<div class="h2">
    <div class="category1"><a href="listProduct?page.start=0?page.count=8">首页</a></div>
     <div class="category"><a href="listProductC?product.cid=2">肌肉科技</a></div>
     <div class="category"><a href="listProductC?product.cid=1">欧普特蒙</a></div>
    <div class="category"><a href="listProductC?product.cid=3">欧力姆</a></div>
     <div class="categoryr"><a href="quit">退出</a></div>
    <div class="categoryrl" id="myinformation"><a href="user">我的信息</a>
        <div id="my">
        <a href="ListCartByU">购物车</a><br>
        <a href="listOrderByU?user.id=${user.id }">我的订单</a><br>
        <a href="listCommentByU?user.id=${user.id }">我的评价</a>
       
        </div>
    </div>
    
    <div class="categoryrl"><a href="ss" id="user">登录</a></div>
    <div class="categoryrl"><img src="/pt/${user.picture}" class="imp" id="up"></div>
   


</div>

</div>
</body>
</html>