<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>拍卖品信息</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(function(){
		/* $("#sale").blur(function(){
		
		}) */
	
	
		
		/* var a=$("#than")[0]
		 var b=$(a).children()[1];
		 var c=$(b).html();
		 
		 var d=$("#sale").val(c); */
		
	})
	
	function checkPrice(){
		var price = $("#sale").val();
		
		//获取到最高出价
		var maxPrice=$(".price")[0].innerHTML;
		//alert(maxPrice);
		if(parseInt(price)<=parseInt(maxPrice)){
			$("#errMessage").html("不能低于最高竞拍价");
			return false;
		}else{
			$("#errMessage").html("价钱可以");
			return true;
		}
	}
	
	function sub(){
		/* if(checkPrice()){
			return true;
		}else{
			return false;
		} */
		
		return checkPrice();
	}
	 
	/*  function rela(){
		 var a=$("#than")[0]
		 var b=$(a).children()[1];
		 var c=$(b).html();
		 
		 var d=$("#sale").val();
		 if(parseInt(d)>parseInt(c)){
			 return true;
		 }else{
			 return false;
		 } 
		return false;
	 }
	
	 function sub(){
		 if(rela()){
			 return true;
		 }
		return false;
		 
	 } */
</script>
</head>

<body>
	<div class="wrap">
	<!-- main begin-->
	  <div class="sale">
	    <h1 class="lf">在线拍卖系统</h1>
	    <div class="logout right"><a href="#" title="注销">注销</a></div>
	  </div>
	  <div class="items sg-font lf">
	      <ul class="rows">
	        <li>名称：</li>
	        <li class="borderno">${auction.name}</li>
	      </ul>
	      <ul class="rows">
	        <li>描述：</li>
	        <li class="borderno">${auction.desc}</li>
	      </ul>
	      <ul class="rows">
	        <li>开始时间：</li>	
	        <li class="borderno"><fmt:formatDate value="${auction.startTime}" pattern="yyyy-MM-dd HH:mm:ss"  /></li>
	      </ul>
	      <ul class="rows">
	        <li>结束时间：</li>
	        <li class="borderno">
	        <fmt:formatDate value="${auction.endTime}" pattern="yyyy-MM-dd HH:mm:ss"  />
	        </li>
	      </ul>
	      <ul class="rows border-no">
	        <li>起拍价：</li>
	        <li class="borderno">${auction.startPrice}</li>
	      </ul>
	  </div>							<%-- images/${pic"/ --%>
	  <div class="rg borders"><img src="" width="270" height="185" alt="" /></div>
	  <div class="cl"></div>
	  <form action="record_insert.do" method="post" onsubmit="return sub()">
	  	<input type="hidden" name="auction_id" value="${auction.id}"/>
		  <div class="top10 salebd">
		       <p>
		       <label for="sale">出价：</label>
		       <input type="text"  name="auction_price" onblur="checkPrice()" class="inputwd"  id="sale" value=""/>
		       <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
		       </p>
		       <p id="errMessage" class="f14 red"></p>
		  </div>
	  </form>
	  <div class="top10">
	    <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
	    <input name="" type="submit" value="返回列表" class="spbg buttombg f14" />
	  </div>
	  <div class="offer">
	    <h3>出价记录</h3>
	    <div class="items sg-font">
	      <ul class="rows even strong">
	        <li>竞拍时间</li>
	        <li>竞拍价格</li>
	        <li class="borderno">竞拍人</li>
	      </ul>
	      <c:forEach items="${records }" var="r">
		      <ul class="rows" id="than" >
		        <li>
		        <fmt:formatDate value="${r.time}" pattern="yyyy-MM-dd HH:mm:ss"  />
		        </li>
		        <li class="price">${r.price}</li>
		        <li class="borderno">${r.username}</li>
		      </ul>
	      </c:forEach>
	  </div>
	  </div>
	<!-- main end-->
	</div>
</body>
</html>