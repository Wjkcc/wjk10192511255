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

<div class="glt">商品管理</div>
<div style="margin:0px auto; width:1200px;">
<div style="margin-left:1000px;"><a href="#" id="addp"><strong>+</strong>添加商品</a></div>
<table cellspacing="0" border="1" class="t1" width="100%">
	<tr class="trs">
		<td class="tds">id</td>
		<td class="tds">商品名</td>
		<td class="tds">商品详细名称</td>
		<td class="tds">商品号</td>
		<td class="tds">商品数量</td>
		<td class="tds">种类id</td>
		<td class="tds">商品图片</td>
		<td class="tds">商品价格</td>
		<td class="tds">商品信息</td>
		<td class="tds">编辑</td>
		<td class="tds">删除</td>
		
	</tr>
	    	    
<s:iterator value="products" var="p">
	<tr>
		<td>${p.id}</td>
		<td>${p.name}</td>
		<td>${p.trueName}</td>
		<td>${p.pid}</td>
		<td>${p.psize}</td>
		<td>${p.cid}</td>
		<td>${p.picture}</td>
		<td>${p.price}</td>
		<td>${p.pinformation}</td>
		<td><a href="#"class="bjp" bjpid="${p.id }">编辑</a></td>
		<td><a href="#" class="p" pid="${p.id }">删除</a></td>		
	</tr>
</s:iterator>

</table>

<br>
<br>


</div>
<script src="http://how2j.cn/study/jquery.min.js"></script>
<script>
$(function(){
   $(".p").click(function(){
	   var d=$(this).attr("pid");
	     var page = "deletep?product.id="+d;
	        $.post(
	            page,
	            function(result){
	              $("#gl").html(result);
	            }
	        );
	   });
   $(".bjp").click(function(){
	   var d=$(this).attr("bjpid");
	     var page = "getp?product.id="+d;
	        $.post(
	            page,
	            function(result){
	              $("#gl").html(result);
	            }
	        );
	   });
   $("#addp").click(function(){
	     var page = "getps";
	        $.post(
	            page,
	            function(result){
	              $("#gl").html(result);
	            }
	        );
	   });

});
  
</script>
