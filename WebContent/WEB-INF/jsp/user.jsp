<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<%@page isELIgnored="false"%>

<s:set value="#session.user" name="user"/>
<style>
    .user_c{
        width:1200px;
        height:1200px;
       
        margin-left:100px;
        margin-top:50px;


    }
    .user_c1{
        height:150px;
        width:800px;
        margin-left:100px;
      backgroud-color:#FFE1FF;
        margin-top:10px;
    }
    .user_c2{
        height:600px;
        width:800px;
        margin-left:100px;
        margin-top:10px;
        border-radius:50px;
        border:1px solid gray;
    }
    .user_cimg{
        float:left;
        height:100px;
        width:100px;
        border-radius:50px;
      
        border:1px gray solid;
    }
    .user_cname{
        float:left;
        height:100px;
        width:300px;
        border-radius:20px;
       
       
        color :gray;
        font-size:30px;
        margin-left:10px;
        padding-top:20px;
    }
    .user_c2l{
        float:left;
        width:300px;
        height:300px;
       
        margin-left:80px;
        margin-top:20px;

    }
   .user_c2r{
       float:left;
       width:250px;
       height:300px;
       
       margin-left:100px;
       margin-top:20px;
   }.userd{
           width:230px;
           height:80px;
        color:#8B8B83;
        font-size:22px;
       }
    .userdl{
        width:180px;
        height:80px;
        color:#8B8B83;
        font-size:30px;
        margin-top:30px;

    }
    as{
        text-decoration: none;
        color:#8B8B83;
        font-size:30px;
    }
</style>


 <jsp:include page="headf.jsp"></jsp:include>
<div class="user_c">
    <div class="user_c1">
        <div  class="user_cimg"><img src="/pt/${user.picture}" class="user_cimg"></div>
        <div class="user_cname">${user.nickName}<span>(${ user.username } ) </span></div>
    </div>
    <div class="user_c2">

        <div class="user_c2l"><div class="userd">姓名： ${user.trueName}</div>
         <div class="userd">邮箱：${user.email}</div>
            <div class="userd">收货地址：  ${user.address}</div>
           
            <div class="userd">电话号码： ${user.telephone}</div></div>
        <div class="user_c2r"> <div class="userdl"><a href="ex" class="as">修改信息</a></div>
            <div class="userdl"><a class="as"href="listCommentByU?user.id=${user.id}">我的评价</a></div> </div></div>
    </div>
