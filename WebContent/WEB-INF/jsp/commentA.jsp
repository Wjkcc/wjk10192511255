<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 <style>
    .div{
        width:500px;
        height:600px;
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
        border:#EEE9E9 solid 1px;
        margin-top:30px;
        margin-left:5px;
        float:left;
        background-color:#EEE9E9;
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
    .dlk{
         
         width:250px;
        height:55px;
        border:#CFCFCF solid 1px;
        margin-top:30px;
        margin-left:5px;
        float:left;
        border-radius:5px;
      }
      .dlb{
      
      display:none;}
</style>

<s:set value="#session.user" name="user"/>


 <div class="div1">
  评价
</div>
<form action="commentA" class="div" method="post" enctype="multipart/form-data">
<div class="a1">
<input type="text" class="dlb"  name="comment.uid" value=${user.id } >
    <div class="dlc">用户名</div>
    <input type="text" class="dl"  name="user.nickName" value=${ user.username} >
 
    <div class="dld"></div>
    </div>
    <div class="a1">
    <div class="dlc">商品编号</div> <input type="text" class="dl"  name="comment.pid" value=${product.id }>
    </div>
    <div class="a1">
    <div class="dlc">用户昵称</div> <input type="text" class="dl" name="user.nickName" value=${user.nickName }>

    </div>
    <div class="a1">
    <div class="dlc">评价</div>
    <input type="text" class="dlk" name="comment.context" >
    </div>
   
    <div class="a1">
    <button class="dle" type="submit">提交</button>
    </div>
</form>