<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
  
<%@page isELIgnored="false" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
  
<html>
<body>
<style>
    .div{
        width:500px;
        height:930px;
        border:1px solid black;
        background-color:#EEE9E9;
        margin-left:500px;
        border-radius:10px;


    }
    .div1{
        width:400px;
        height:50px;
        font-size:30px;
        color:#a12345;
        font-family:"Bauhaus 93";
        margin-left:550px;
        margin-top:10px;
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
          width:100px;
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
 <s:set value="#session.user" name="user"/>
 <div class="div1">
    商品修改
</div>
<form action="updatep" class="div" method="post" enctype="multipart/form-data">
    <div class="a1">
    <div class="dlc">商品id</div>
    <input type="text" class="dl"  name="product.id" value=${product.id } >
    <div class="dld"></div>
    </div>
    <div class="a1">
    <div class="dlc">商品名</div>
    <input type="text" class="dl"  name="product.name" value=${product.name }>
    </div>
    <div class="a1">
    <div class="dlc">详细名称</div>
    <input type="text" class="dl" name="product.trueName" value=${product.trueName } >
    </div>
    <div class="a1">
    <div class="dlc">商品种类号</div>
    <input type="text" class="dl" name="product.cid" value=${product.cid } >
    </div>
      <div class="a1">
    <div class="dlc">商品号</div>
    <input type="text" class="dl" name="product.pid" value=${product.pid } >
    </div>
    <div class="a1">
    <div class="dlc">商品数量</div> 
    <input class="dl" type="text" name="product.psize" value=${ product.psize}>
    </div>
     <div class="a1">
    <div class="dlc">商品图片 :</div> 
    <input class="dl" type="file" name="doc"  accept="image/*"/>
    </div>
    <div class="a1">
    <div class="dlc">商品价格</div>
    <input type="text" class="dl" name="product.price" value=${product.price } >
    </div>
    <div class="a1">
    <div class="dlc">商品信息</div>
    <input type="text" class="dl" name="product.pinformation" value=${product.pinformation }>
 </div>
    <div class="a1">
    <button class="dle" type="submit" id="updatep">提交</button>
    </div>
</form>
</body>
</html>
<script src="http://how2j.cn/study/jquery.min.js"></script>
<script>
$(function(){
   $("#updatep").click(function(){
	     
	        alert("提交成功！");
	   });
  

});
  
</script>