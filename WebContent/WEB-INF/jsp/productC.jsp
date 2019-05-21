<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<%@page isELIgnored="false"%>

<s:set value="#session.user" name="user"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
$(function() {
    $(".d1").mouseenter(function () {
        $(this).addClass("d12");
        $(this).find("div").eq(4).addClass("dd51");
    });
    $(".d1").mouseleave(function(){
        $(this).removeClass("d12");
        $(this).find("div").eq(4).removeClass("dd51");

    });
});
</script>
              <style type="text/css">

                     .div1{
                     float:left;
                     height:250px;
                     witdth:200px;
                     border:1px solid #000;
                     background:#234567;
                     margin-left:15px;
                     margin-bottom:15px;
                     }
                      .d1{
                      float:left;
        width:200px;
        height:325px;
        padding:5px;
        background-color:#E6E6FA;
      border:2px solid white;
        border-bottom:3px solid white;
        margin:10px;
    }
     .d12{
        width:200px;
        height:325px;
        padding:5px;
        background-color:#f9f9f9;
        border:2px solid black;
        border-bottom:3px solid black;
    }
      .dd1{
        width:200px;
        height:180px;
        background-color:#234212;
    }
        .dd2{
        width:200px;
        height:25px;

        color:red;
        font-size:20px;
        margin-top:15px;
    }
    .dd5{
        margin-top:10px;
        height:40px;
        width:190px;
        background-color:#CD0000;
        color:white;
        font-size:26px;
        border-radius: 20px;
        text-align:center;
    }
     .dd51{
        margin-top:10px;
        height:40px;
        width:190px;
        background-color:black;
        color:white;
        font-size:26px;
        border-radius: 20px;
        text-align:center;
    }
    .dd4{
        height:20px;
        width:200px;
        margin-top:5px;
        font-size:10px;
        color:gray;
    }
    .dd3{

        matgin-top:15px;
        color:#234212;
        font-size:18px;


    }
    .a1{
     text-decoration: none;
     color:white;
    }
                     .footer{

                position: fixed; /*or前面的是absolute就可以用*/  
           bottom: 0px;

                    }
.con{
width:1010px;
margin-left:180px;
}
.cc{width:2000px;


}
              </style>
         

       </head>
       <body class="b">
       <s:set value="#session.user" name="user"/>
       <jsp:include page="headf.jsp"></jsp:include>
       <div style=" position: absolute;">

<div id="cc"> 
<div id="div1" class="con">

	    	  
<s:iterator value="products" var="p" status="a">
	<div class="d1">
	  
	<div class="dd1"> <img src="/pt/${p.picture}" height="180" width="200"></div>
	<div class="dd2" style="color:red;">$${p.price}</div>
	  
		<div class="dd3">${p.name}</div>
		<div class="dd4">数量为${p.psize} 件</div>
		<div onclick="" class="dd5"><a href="getProduct?product.id=${p.id}" class="a1" >立即购买</a></div>
	</div>
	<!--<s:if test="#a.index>0">
	<s:if test="#a.index%3==0">
	<br>
	
	</s:if>
	</s:if>-->
			
	
</s:iterator>
</div>
</div>
<div>

	    	   




<br>
<br>


</div>