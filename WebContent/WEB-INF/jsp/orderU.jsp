<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




<jsp:include page="headf.jsp"></jsp:include>
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
        font-size:23px;
    }
    .userc_right_2{
        width:100px;
        height:50px;
      margin-right:10px;
     
        float:right;
    }
    .userc_right_3{
        width:150px;
        height:30px;
        margin-top:50px;
       	font-size:20px;
       	color:red;
    }
    .userc_right_4{
        width:300px;
        height:37px;
        margin:2px;
        padding-top:20px;
        word-wrap:break-word ;
    	font-size:19px;
    }
      .userc_right_5{
      padding-top:23px;
        width:100px;
        height:13px;
        margin:2px;
     float:right;
      color:#D45454;
    	font-size:15px;
    }
    .tjpj{
     text-decoration: none;
        color:#C38DD4;
    }
</style>	    	   
<s:iterator value="userOrders" var="uo">

<div class="userc_c">
<div class="oid">订单号：${uo.orderId}</div>
    <div class="userc_p"><img src="/pt/${uo.productPicture}" class="user_cimg"></div>
    <div class="userc_right">
        <div class="userc_right_1">${uo.productName}</div>
        <div class="userc_right_2">${uo.orderTime} </div>
        <br>
        <div class="userc_right_3">$ ${uo.productPrice}</div>
        <div class="userc_right_4">备注
        <br>${uc.orderInformation}</div>
        <div class="userc_right_5"><a href="cc?product.id=${uo.productId}" class="tjpj">添加评价</a></div>
    </div>
</div>
</s:iterator>

