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
		<td><a href="#" class="s" oid="${p.id }">删除</a></td>			
	</tr>
</s:iterator>

</table>

<br>
<br>
</div>


<script src="http://how2j.cn/study/jquery.min.js"></script>
<script>
$(function(){
   $(".s").click(function(){
	   var d=$(this).attr("oid");
	     var page = "deleteos?order.id="+d;
	        $.post(
	            page,
	            function(result){
	              $("#gl").html(result);
	            }
	        );
	   });

});
  
</script>
