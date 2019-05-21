<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<%@page isELIgnored="false"%>

<s:iterator value="products" var="p" status="a">
	<div>
	  
	<div> <img src="/pt/${p.picture}" height="150" width="200"></div>
	   <div>${p.id}</div>
		<div>${p.name}</div>
		<div>${p.price}</div>
		<div onclick=""><a href="getProduct?product.id=${p.id}">Buy it</a></div>
	</div>
	<!--<s:if test="#a.index>0">
	<s:if test="#a.index%3==0">
	<br>
	
	</s:if>
	</s:if>-->
			
	
</s:iterator>

