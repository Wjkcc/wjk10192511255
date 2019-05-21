<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
  
<%@page isELIgnored="false" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
  
<html>
<body>
<style>
    .div{
        width:500px;
        height:830px;
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
    信息修改
</div>
<form action="upload" class="div" method="post" enctype="multipart/form-data">
    <div class="a1">
    <div class="dlc">用户名：</div>
    <input type="text" class="dl"  name="user.username" value=${user.username } >
    <div class="dld"></div>
    </div>
    <div class="a1">
    <div class="dlc">昵称</div><input type="text" class="dl"  name="user.nickName" value=${user.nickName }>
    </div>
    <div class="a1">
    <div class="dlc">密码：</div><input type="text" class="dl" name="user.password" value=${user.password } >
    </div>
    <div class="a1">
    <div class="dlc">姓名：</div><input type="text" class="dl" name="user.trueName" value=${user.trueName } >
    </div>
    <div class="a1">
    <div class="dlc">上传头像 :</div> <input class="dl" type="file" name="doc"  accept="image/*"/>
    </div>
    <div class="a1">
    <div class="dlc">电话号码：</div>
    <input type="text" class="dl" name="user.telephone" value=${user.telephone } ><div class="dld"></div>
    </div>
    <div class="a1">
    <div class="dlc">邮箱：</div>
    <input type="text" class="dl" name="user.email" value=${user.email }><div  class="dld"  ></div>
 </div>
    <div class="a1">
    <div class="dlc">收货地址：</div><input type="text" class="dl" name="user.address" value=${user.address } >
    </div>
    <div class="a1">
    <button class="dle" type="submit">修改</button>
    </div>
</form>
</body>
</html>