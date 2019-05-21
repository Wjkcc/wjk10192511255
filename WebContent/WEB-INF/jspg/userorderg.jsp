<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<%@page isELIgnored="false"%>

<style>
.trs{

border:3px red solid;

}
.tds{
font-size:20px;
color:gray;}
.t1{
border: 1px solid gray;}
a{
 text-decoration: none;
        color:red;
}
tr:nth-child(odd){
background-color:	#F0F0F0;
}
.glt{
color:gray;
font-size:25px;
width:100px;
height:50px;
margin-left:500px;
}
	.gleft{
	margin-top:100px;
	width:100px;
	height:200px;
	float:left;
	background-color:blue;
	}
	.gright{
	width:1200px;
	float:left;
	margin-top:30px;
	margin-left:30px;
	
	}
	.glg{
	width:80px;
	height:35px;
	border:2px black solid;
	color:white;
	padding-top:7px;
	margin:3px;
	text-align:center;
	}
</style>
<div class="gleft">
	<div id="userg" class="glg"><a href="listUser" style="color:white">用户管理</a></div>
	<div id="productg" class="glg"><a href="ListProducts" style="color:white">商品管理</a></div>
	<div id="orderg" class="glg"><a href="listComment" style="color:white">评价管理</a></div>
	<div id="commentg" class="glg"><a href="listOrder" style="color:white">订单管理</a></div>
</div>
<div class="gright" id="gl">
<div class="glt">订单管理</div>
<div style="margin:0px auto; width:1200px;">

<table cellspacing="0" border="1" class="t1" width="100%">
	<tr class="trs">
		<td class="tds">id</td>
		<td class="tds">用户id</td>
		<td class="tds">商品id</td>
		<td class="tds">订单号</td>
		<td class="tds">时间</td>
		<td class="tds">商品数量</td>
		<td class="tds">备注</td>			
		<td class="tds">删除</td>
		
	</tr>
	    	    
<s:iterator value="orders" var="p">
	<tr>
		<td>${p.id}</td>
		<td>${p.uid}</td>
		<td>${p.pid}</td>
		<td>${p.orderid}</td>
	    <td>${p.time}</td>
	     <td>${p.number}</td>
	    <td>${p.information}</td>
		<td><a href="deleteo?order.id=${p.id }">删除</a></td>			
	</tr>
</s:iterator>

</table>

<br>
<br>
</div>

</div>
