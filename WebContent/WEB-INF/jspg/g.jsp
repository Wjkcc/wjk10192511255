<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
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
		a{
 text-decoration: none;
        color:white;
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
 <jsp:include page="headg.jsp"></jsp:include>
<div class="gleft">
	<div class="glg"><a href="#" id="userg" style="color:white">用户管理</a></div>
	<div class="glg"><a href="#" id="productg" style="color:white">商品管理</a></div>
	<div class="glg"><a href="#" id="orderg" style="color:white">订单管理</a></div>
	<div class="glg"><a href="#" id="commentg" style="color:white">评价管理</a></div>
</div>
<div class="gright" id="gl"></div>

<script src="http://how2j.cn/study/jquery.min.js"></script>
<script>
$(function(){

	   $("#userg").click(function(){
		     var page = "listUser";
		        $.post(
		            page,
		            function(result){
		              $("#gl").html(result);
		            }
		        );
		   });

	   $("#commentg").click(function(){
		     var page = "listComment";
		        $.post(
		            page,
		            function(result){
		              $("#gl").html(result);
		            }
		        );
		   });

	   $("#orderg").click(function(){
		     var page = "listOrders";
		        $.post(
		            page,
		            function(result){
		              $("#gl").html(result);
		            }
		        );
		   });
 
   $("#productg").click(function(){
	     var page = "ListProducts";
	        $.post(
	            page,
	            function(result){
	              $("#gl").html(result);
	            }
	        );
	   });
  
});
  
</script>