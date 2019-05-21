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
<style>
    .c{
        width:1300px;
        height:150px;
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
        color:yellow;
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
        width:100px;
        height:55px;
        padding-top:15px;

        float:right;
        margin-right:100px;
        color:yellow;
        font-size:23px;
        text-align:center;
    }
    .categoryrl{

        width:100px;
        height:55px;
        padding-top:15px;

        float:right;
        margin-right:10px;
        color:yellow;
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

       color:#a12345;
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
        color:#C38DD4;
    }
    #my{
        width:100px;
        height:100px;
        border:1px #8B8B83 solid;
        color:#7171C6;
        size:23px;
        display:none;
    }
</style>
<script src="http://how2j.cn/study/jquery.min.js"></script>
<script>
    $(function() {
        $("#myinformation").mouseenter(function () {
            $("#my").show();

        });
        $("#myinformation").mouseleave(function(){
            $("#my").hide();


        });
    });
</script>
<div class="c">
    <div class="h1">
        <div class="t">后台管理系统</div>
        <div class="car"><span><img src="html/picture/car.png" width="20px" height="15px"></span><a href="#"></a></div>
    </div>
<!--<div class="h2">
    <div class="category1"><a href="#">首页</a></div>
     <div class="category"><a href="#">肌肉科技</a></div>
     <div class="category"><a href="#">欧普特蒙</a></div>
    <div class="category"><a href="#">欧力姆</a></div>
    <div class="categoryr"><a href="#">退出</a></div>
    <div class="categoryrl" id="myinformation"><a href="#">我的信息</a>
        <div id="my">
        <div>购物车</div>
        <div>我的订单</div>
        <div>我的评价</div>
        </div>
    </div>
    <div class="categoryrl"><a href="#">登录</a></div>


</div>-->

</div>
</body>
</html>