<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="headf.jsp"></jsp:include>
<s:set value="#session.user" name="user"/>
<style>
.oid{
width:200px;
color:gray;
font-szie:12px;
height:15px;
margin:8px;
}
    .userc_c{
        width:600px;
        height:300px;
        border:1px gray solid;
        margin-left:350px;
        margin-top:20px;
        border-radius:15px;
        padding:5px;
    }
    .userc_p{
        width:200px;
        height:180px;
        margin:2px;
        border:1px gray solid;
        float:left;
          border-radius:15px;
    }
    .user_cimg{
      width:200px;
        height:180px;
          border-radius:15px;
    }
    .userc_right{
        width:350px;
        height:230px;
        margin:2px;
        border:1px gray solid;
        border-radius:15px;
        float:left;
    }
    .userc_right_1{
        width:150px;
        height:50px;
        margin-left:15px;
        margin-top:6px;
      	
        float:left;
        font-size:28px;
    }
    .userc_right_2{
        width:100px;
        height:50px;
      margin-right:10px;
     color:gray;
        float:right;
        font-size:20px;
        margin-top:20px;
    }
    .userc_right_3{
        width:150px;
        height:30px;
        margin-top:50px;
       	font-size:25px;
       	color:red;
       	margin-left:20px;
    }
    .userc_right_4{
        width:150px;
        height:37px;
        margin:2px;
        padding-top:50px;
        word-wrap:break-word ;
        float:left;
    	font-size:19px;
    	margin-left:10px;
    }
      .userc_right_5{
      padding-top:50px;
        width:100px;
        height:37px;
        margin:2px;
     float:right;
      color:#D45454;
    	font-size:19px;
    }
    .tjpj{
     text-decoration: none;
        color:#C38DD4;
    }
</style>		
	<s:iterator value="cartUs" var="cu">	
<div class="userc_c">
    <div class="userc_p"><img src="/pt/${cu.picture}" class="user_cimg"></div>
    <div class="userc_right">
        <div class="userc_right_1">${cu.name}</div>
         <div class="userc_right_2"></div>
        <br>
        <div class="userc_right_3">$ ${cu.price}</div>
        <div class="userc_right_4"><a href="tt?product.id=${cu.pid}" class="tjpj">立即购买</a></div>
        <div class="userc_right_5"><a href="deleteP?cart.id=${cu.cartid}" class="tjpj">删除</a></div>
    </div>
</div>
</s:iterator>



