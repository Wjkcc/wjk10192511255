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
<div class="glt">用户管理</div>
<div style="margin:0px auto; width:1200px">

<table cellspacing="0" border="1" class="t1" width="100%">
	<tr class="trs">
		<td class="tds">id</td>
		<td class="tds">用户名</td>
		<td class="tds">用户密码</td>
		<td class="tds">用户地址</td>
		<td class="tds">姓名</td>
		<td class="tds">邮箱</td>
		<td class="tds">电话</td>
		<td class="tds">昵称</td>
		<td class="tds">头像图片</td>
	
		<td class="tds">删除</td>
		
	</tr>
	    	    
<s:iterator value="users" var="p">
	<tr>
		<td>${p.id}</td>
		<td>${p.username}</td>
		<td>${p.password}</td>
		<td>${p.address}</td>
		<td>${p.trueName}</td>
		<td>${p.email}</td>
		<td>${p.telephone}</td>
		<td>${p.nickName}</td>
		<td>${p.picture}</td>
		
		
	<td><a href="#"class="u" uid="${p.id }">删除</a></td>		
	</tr>
</s:iterator>

</table>

<br>
<br>


</div>
<script src="http://how2j.cn/study/jquery.min.js"></script>
<script>
$(function(){
   $(".u").click(function(){
	   var d=$(this).attr("uid");
	     var page = "deleteu?user.id="+d;
	        $.post(
	            page,
	            function(result){
	              $("#gl").html(result);
	            }
	        );
	   });

});
  
</script>
