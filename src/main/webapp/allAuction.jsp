<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>展示所有拍卖品</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/auction/jquery/jquery-1.11.1.js"></script>
<script	 type="text/javascript">
   		
		   function update(id){
			   if(confirm("你真的确认要修改吗？请确认  ")){		
				window.location="selectOne.do?id="+id;
				 }
		   };
	   function dele(id){
		   if(confirm("你真的确认要删除吗？请确认")){
			  	window.location="delete.do?id="+id;
		   		}
		   };
  </script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href=${pageContext.request.contextPath}/login.do title="注销">注销</a></div>
  </div>
  <div class="forms">
  	<form action="getAuctions.do" method="post">
	    <label for="name">名称</label>
	    <input name="name" type="text" class="nwinput" id="name"/>
	    <label for="names">描述</label>
	    <input name="desc" type="text" id="names" class="nwinput"/>
	    <label for="time">开始时间</label>
	    <input name="startTime" type="text" id="time" class="nwinput"/>
	    <label for="Time">结束时间</label>
	    <input name="endTime" type="text" id="end-time" class="nwinput" />
	    <label for="price">起拍价</label>
	    <input name="startPrice" type="text" id="price" class="nwinput" />
	    <input  type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
    </form>
    <c:if test="${sessionScope.user.userState==1 }">
	    <a href="addAuction.jsp"><input  type="button"  value="发布" class="spbg buttombg f14  sale-buttom "/></a>
    </c:if>
  </div>
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
   	<c:forEach items="${requestScope.list }" var="auction">
      <ul class="rows">
		        <li><a href="国书" title="">${auction.name}</a></li>
		        <li class="list-wd">${auction.desc}</li>
		        <li> 
		        <fmt:formatDate value="${auction.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
		        </li>
		        <li> 
		        <fmt:formatDate value="${auction.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
		        </li>
		        <li>${auction.startPrice}</li>
		        <li class="borderno red">
		            <c:if test="${sessionScope.user.userState==1 }">
					   <a href="javascript:void(0)" title="修改" onclick="update(${auction.id})">修改</a>|
			           <a href="javascript:void(0)" title="删除" onclick="dele(${auction.id})">删除</a>
		            </c:if>
		            <c:if test="${sessionScope.user.userState==0 }">
		           		<a href="selectRecord.do?auctionId=${auction.id}">竞拍</a>
		           	</c:if>
		        </li>
      </ul>
   	</c:forEach>
      <div class="page">
        <a href="#" title="">首页</a>
        <a href="#" title="">上一页</a>
        <span class="red">前5页</span>
        <a href="#" title="">1</a> 
        <a href="#" title="">2</a> 
        <a href="#" title="">3</a> 
        <a href="#" title="">4</a>
        <a href="#" title="">5</a> 
        <a href="#" title="">下一页</a>
        <a href="#" title="">尾页</a> 
      </div>
  </div>
  
  
<!-- main end-->
</div>
</body>
</html>
