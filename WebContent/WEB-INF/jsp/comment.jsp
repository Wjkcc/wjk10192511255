<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .pc_c{
        width:600px;
        height:500px;
        margin-left:300px;
        margin-top:10px;
        border: black solid 1px;
        border-radius:20px;
        padding:5px;
    }
    .pc_c1{
   margin-left:350px;
     margin-top:5px;
        width:550px;
        height:300px;
       border-radius:20px;
        border: gray solid 1px;padding:5px;
    }
    .pc_c2{
     margin-left:350px;
     margin-top:5px;
        width:550px;
        height:180px;
       
        border: gray solid 1px;
         border-radius:20px;
        border: gray solid 1px;padding:5px;
    }
    .pc_c1left{
        margin:2px;
        border: gray solid 1px;
        width:200px;
        height:250px;
        background-color: #C38DD4;
        float:left;
         border: gray solid 1px;
         border-radius:15px;
    }
    .imgpc{
    width:200px;
        height:250px;
           border: gray solid 1px;
              border-radius:15px;
    }
    .pc_c1right{
        margin:2px;
      
        width:250px;
        height:250px;
border: gray solid 1px;
              border-radius:15px;
        float:left;
    }
  .pc_c1right1{
      margin:2px;
     
      width:240px;
      color:black;
      font-size:28px;
      height:50px;
  }
    .pc_c1right2{

       
        width:240px;
        color:black;
        font-size:20px;
        height:50px;
        margin-top:15px;
    }
    .pc_c1right3{

       
        width:240px;
        color:black;
        font-size:26px;
        height:50px;
        margin-top:30px;
        text-align:center;
    }
    .pc_c2_t{
        width:530px;
        height:80px;
        margin:2px;
        
    }
    .pc_c2_tl{
        width:70px;
        height:70px;
        margin:2px;
        border: red solid 1px;
        border-radius:35px;
        float:left;
    }
    .pc_c2_tl_img{
        width:70px;
        height:70px;


        border-radius:35px;

    }
    .pc_c2_tr{
        width:300px;
        height:70px;
        margin:2px;
      
        float:left;

    }
    .pc_c2_tr1{
        width:200px;
        height:30px;
        margin:2px;
      
        color:black;
        font-size:20px;

    }
    .pc_c2_tr2{
        width:200px;
        height:30px;
        margin:2px;
       
        color:gray;
        font-size:15px;

    }
    .pc_c2_b{
        width:460px;
        height:80px;
        margin:2px;
        float:right;
        border: gray solid 1px;
        border-radius:15px;
    }
</style>





	    	    
	    


<jsp:include page="headf.jsp"></jsp:include>

    <div class="pc_c1">
        <div class="pc_c1left"> <img src="/pt/${product.picture}" class="imgpc"></div>
        <div class="pc_c1right">
            <div class="pc_c1right1">${product.name }</div>
            <div class="pc_c1right2">${product.trueName }</div>
            <div class="pc_c1right3"> $ ${ product.price } </div>
        </div>
    </div>
    <s:iterator value="productComments" var="pc">
    <div class="pc_c2">
        <div class="pc_c2_t">
            <div class="pc_c2_tl">
                <img src="/pt/${pc.userPicture}" class="pc_c2_tl_img">
            </div>
            <div class="pc_c2_tr">
                <div class="pc_c2_tr1">${pc.userNickname}</div>
                <div class="pc_c2_tr2">${pc.time}</div>
            </div>
        </div>
        <div class="pc_c2_b">${pc.context}</div>
    </div>



		
			
	
</s:iterator>





