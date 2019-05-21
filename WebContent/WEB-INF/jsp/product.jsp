<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<%@page isELIgnored="false"%>

<head>
<style>
    .c{

        width:1000px;
        height:1000px;
        margin-left:15px;
       background:#FFF5EE;
       border:1px solid #FFFAFA;
       border-radius:20px;
        float:left;
       
    }
      .cx{

        width:280px;
        height:1000px;
        position:absolute;
        top:100px;
        margin-left:15px;
        border-left:1px black solid;
       left:1000px;
       
    }
 
     .p{
        margin-left:20px;
        margin-top:30px;
        width:400px;
        height:800px;
        
        float:left;
    }
    ul {
        list-style:none;
    }
    .slideBox {
        width:398px;
        height:500px;


        position:relative;
        overflow:hidden;
    }
    .slideBox ul {
        position:relative;
        width:2000px;}
    .slideBox ul li {
        float:left;
        width:398px;
        height:398px;

        position:relative;

    }
     .ab{
     text-decoration: none;
     color:#303030;
    }
    .spanBox {
        position:absolute;
        width:398px;
        height:80px;
        bottom:20px;
        left:45px;
    }
    .spanBox span {
        width:70px;
        height:70px;
        margin-left:5px;
        background-color:rgba(201,178,207,1.00);
        float:left;
        line-height:16px;
        text-align:center;
        text-shadow:2px 2px 2px #C5EBF0;
        font-family:cabin-sketch;
        font-size:15px;
        border-radius:10px;
    }
    .slideBox .spanBox .active {
        background-color:rgba(201,178,207,0.79);
        border:solid 1px black;
        border-radius:10px;
    }
    .prev {
        position:absolute;
        left:1px;
        top:100px;
        float:left;
        border-left:solid 1px rgba(251,245,246,1.00);
        opacity:0.5;
    }
    .next {
        width:15px;
        height:50px;
        position:absolute;
        right:1px;
        top:100px;
        float:right;
        border-right:solid 1px rgba(245,237,237,1.00);
        opacity:0.5
    }
    .p2{

        width:398px;
        height:128px;
        background-color:#234212;
        border:1px white solid;

    }
    .px{
        margin-left:8px;
        float:left;
        width:120px;
        height:128px;
        border:1px #8B8222 solid;
    }
    .ps{
        margin-left:20px;
        margin-top:30px;
        width:400px;
        height:800px;
     background-color:	#FFF5EE;
     border-radius:15px;
        float:left;
    }
    .ps1{
        width:300px;
        height:50px;
        color:black;
        margin-top:20px;
        font-size:33px;
       
        margin-left:20px;

    }
    .ps2{
        width:380px;
        height:43px;
        color:gray;
        font-size:18px;
        margin-left:30px;
        margin-top:10px;
      

    }
    .ps3{
        width:278px;
        float:left;
        height:80px;
        color:black;
        font-size:30px;
        margin-left:22px;
      

    }

    .ps5{
        float:right;
        width:100px;
        height:80px;
        color:gray;
        font-size:15px;
       margin-right:10px;
       
        margin-top:10px;

    }
    .psc{
        width:400px;
        height:80px;
    }
    .ps4{
        width:380px;
        height:100px;
        color:black;
        font-size:20px;
        margin-left:20px;
        margin-top:40px;
     

    }
    .ps6{
        float:left;
        padding-top:12px;
        width:150px;
        height:50px;
    color:black;
        font-size:28px;
        text-align:center;
        margin-left:20px;
        margin-top:60px;
       background-color:#E5E5E5;
        border-radius:25px;
         border:1px solid #D1EEEE;

    }
    .ps7{
        padding-top:12px;
        float:right;
        width:150px;
        height:50px;
        color:#EAEAEA;
        font-size:28px;
        text-align:center;
        margin-right:20px;
        margin-top:60px;
       background-color:#EEE9BF;
        border-radius:25px;
 border:1px solid #D1EEEE;
    }
     .ps8{
        padding-top:12px;
        float:right;
        width:150px;
        height:50px;
        color:#EAEAEA;
        font-size:28px;
        text-align:center;
        margin-right:20px;
        margin-top:10px;
      background-color:#EEE9BF;
        border-radius:25px;
         border:1px solid #D1EEEE;

    }
    .pn{
        margin-top:1px;
        width:150px;
        height:800px;
      
        float:right;
      
        color:#234543;
        font-size:20px;

    }.pn1{
        width:150px;
        height:200px;
       
        border:black 1px solid;

         }
    .pn2{
        width:150px;
        height:200px;
        margin-top:10px;
       border:black 1px solid;
    }
    .img{
    width:70px;
    height:70px;
    border-radius:10px;} 
    .imgn{
     width:150px;
        height:150px;
    }
</style>
  
<script src="http://how2j.cn/study/jquery.min.js"></script>

</head>
<body class="">
<s:set value="#session.user" name="user"/>
  
   
       <jsp:include page="headf.jsp"></jsp:include>
       <script>
       $(function(){
    	     $("#addp").click(function(){
    	        alert("添加成功");
    	     });
    	});
    $(document).ready(function(){
        var slideBox = $(".slideBox");
        var ul = slideBox.find("ul");
        var oneWidth = slideBox.find("ul li").eq(0).width();
        var number = slideBox.find(".spanBox span");            //注意分号 和逗号的用法
        var timer = null;
        var sw = 0;
        //每个span绑定click事件，完成切换颜色和动画，以及读取参数值
        number.on("click",function (){
            $(this).addClass("active").siblings("span").removeClass("active");
            sw=$(this).index();
            ul.animate({
                "right":oneWidth*sw,    //ul标签的动画为向左移动；
            });
        });
        //左右按钮的控制效果
        $(".next").stop(true,true).click(function (){
            sw++;
            if(sw==number.length){sw=0};
            number.eq(sw).trigger("click");
        });
        $(".prev").stop(true,true).click(function (){
            sw--;
            if(sw==number.length){sw=0};
            number.eq(sw).trigger("click");
        });
        //定时器的使用，自动开始
        timer = setInterval(function (){
            sw++;
            if(sw==number.length){sw=0};
            number.eq(sw).trigger("click");
        },2000);
        //hover事件完成悬停和，左右图标的动画效果
        slideBox.hover(function(){
            $(".next,.prev").animate({
                "opacity":1,
            },200);
            clearInterval(timer);
        },function(){
            $(".next,.prev").animate({
                "opacity":0.5,
            },500);
            timer = setInterval(function (){
                sw++;
                if(sw==number.length){sw=0};
                number.eq(sw).trigger("click");
            },2000);
        })

    })

</script>
      <div style=" position: absolute;">
<div class="c">
    <div class="p">
        <div class="slideBox">
            <ul>
                <li><img src="/pt/${product.picture}" alt="" width="330" height="330" style="border-radius:10px;"/></li>
                <s:iterator value="ppictures" var="p" status="a">
                <li><img src="/pt/${p.picture}" alt="" width="330" height="330" style="border-radius:10px;"/></li>
         </s:iterator>

            </ul>
            <div class="spanBox">
                <span class="active"><img src="/pt/${product.picture}" alt="" class="img"/></span>
                <s:iterator value="ppictures" var="p1" status="a">
                <span><img src="/pt/${p1.picture}" alt="" class="img"/></span>
                
</s:iterator>
            </div>
        </div>
   </div>
    <div class="ps">
        <div class="ps1">${product.name }</div>
        <div class="ps2"> ${product.trueName} </div>
       <div class="psc"> <div class="ps3" style="color:red">价格$ ${product.price }</div>
        <div class="ps5">数量： ${product.psize} </div>
       </div>
        <div class="ps4">${product.pinformation }</div>

        <div class="ps6"><a href="saveCartP?product.id=${product.id}" class="ab" id="addp">加入购物车</a></div>
        <div class="ps7"><a href="tt?product.id=${product.id}" class="ab">立即购买</a></div>
        <div class="ps8"><a href="listCommentByP?product.id=${product.id}" class="ab">查看评价</a></div>
    </div>
    
</div>
<div class="cx"><div class="pn">
		最新商品
        <div class="pn1"><img src="/pt/${product1.picture}" class="imgn"><div>${product1.name }</div></div>
        <div class="pn2"><img src="/pt/${product2.picture}" class="imgn"><div>${product2.name }</div></div>
    </div></div>
</div>
</body>
