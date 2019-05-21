<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 <style>
    .div{
        width:500px;
        height:750px;
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
      margin-left:90px;
      margin-top:10px;
        float:left;
        background-color:#5CACEE;
        text-align:center;
        border-radius:10px;
        color:white;
        font-size:25px;
    }
      .tjpj{
     text-decoration: none;
        color:white;
        padding-top:13px;
    }
    .dlk{
    display:none;}
</style>
<script src="http://how2j.cn/study/jquery.min.js"></script>
  
<script>
$(function(){
 

  $("#number").keyup(function(){
	  var number=$("#number").prop("value");

	  var price=$("#p").text();
	  var total=price*number;
	  $("#price").attr("value",total);
	
  });
  
});
  
</script>
<div id="p" style="display:none">${product.price }</div>
<s:set value="#session.user" name="user"/>
 <div class="div1">
    确认订单
</div>
<form action="order" class="div" method="post">
 <input type="text" class="dlk"  name="order.uid" value=${ user.id} >
    <div class="a1">
    <div class="dlc">用户名</div>
    <input type="text" class="dl"  name="user.nickName" value=${ user.nickName} >
    <div class="dld"></div>
    </div>
    <div class="a1">
    <div class="dlc">商品号</div><input type="text" class="dl"  name="order.pid" value=${product.id }>
    </div>
    <div class="a1">
    <div class="dlc">数量</div><input type="text" class="dl" name="order.number" value="1"  id="number">
    </div>
    <div class="a1">
    <div class="dlc">电话号码：</div>
    <input type="text" class="dl" name="user.telephone" value=${user.telephone } ><div class="dld"></div>
    </div>
     <div class="a1">
    <div class="dlc">收货地址：</div>
    <input type="text" class="dl" name="user.address" value=${user.address } >
    </div>
        <div class="a1">
    <div class="dlc">价格：</div>
    <input type="text" class="dl" name="price" value="${product.price }" id="price">
    </div>
    <div class="a1">
    <div class="dlc">备注：</div>
    <input type="text" class="dl"  name="order.information"><div class="dld"  ></div>
    </div>
   
    <div class="a1">
    <button class="dle" type="submit">确认</button>
     <button class="dle" ><a href="listProduct?page.start=0?page.count=8" class="tjpj">取消</a></button>
    </div>
</form>