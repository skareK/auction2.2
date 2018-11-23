<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改拍卖品页面</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%-- <form action="<s:url namespace="/"  action="auction_update"/>" method="post" enctype="application/x-www-form-urlencoded" > --%>
	<form action="update.do" method="post" enctype="multipart/form-data" >
		<input type="hidden" name="id" value="${auction.id}"/>
	
		<div class="wrap">
			  <!-- main begin-->
			  <div class="sale">
			    <h1 class="lf">在线拍卖系统</h1>
			    <div class="logout right"><a href="#" title="注销">注销</a></div>
			  </div>
			      <div class="login logns produce">
			        <h1 class="blues">拍卖品信息</h1>
			          <dl>
			            <dd >
			              <label>名称：</label>
			              <input type="text" class="inputh lf" value="${auction.name}" name="name" />
			              <div class="xzkbg spbg lf"></div>
			            </dd>
			            <dd>
			              <label>起拍价：</label>
			              <input type="text" class="inputh lf" value="${auction.startPrice}" name="startPrice"/>
			              <div class="lf red laba">必须为数字</div>
			            </dd>
			            <dd>
			              <label>底价：</label>
			              <input type="text" class="inputh lf" value="${auction.upset}" name="upset" />
			              <div class="lf red laba">必须为数字</div>
			            </dd>
			            <dd>
			              <label>开始时间：</label>
			              <input type="text" class="inputh lf" name="startTime" 
			              value='<fmt:formatDate value="${auction.startTime}" pattern="yyyy-MM-dd HH:mm:ss"  />' />
			              <div class="lf red laba">格式：2011-05-05 12:30:00</div>
			            </dd>
			            <dd>
			              <label>结束时间：</label>
			              <input type="text" class="inputh lf" name="endTime" value="<fmt:formatDate value="${auction.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>" />
			              <div class="lf red laba">格式：2011-05-05 12:30:00</div>
			            </dd>
			            <dd class="dds">
			              <label>描述：</label>
			              <textarea name="desc" cols="" rows=""  class="textarea">${auction.desc}</textarea>
			            </dd>
			            <dd>
			              <label>修改图片：</label>
			              <div class="lf salebd"><a href="#"><img src="images/${auction.pic }" width="100" height="100" /></a></div>
			               <input name="myPhoto" type="file" class="marg10"  />
			               
			               <input type="hidden" name="pic" value="${auction.pic }"/>
			            </dd>
			            <dd class="hegas">
			                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs f14 lf buttomb" />
			                <a href="#"><input name="" type="submit" value="取 消" class="spbg buttombg buttombgs f14 lf buttomb"/></a>
			            </dd>
			          </dl>
			    </div>
			<!-- main end-->
			<!-- footer begin-->
			
			</div>
			 <!--footer end-->
		 
		</div>
	</form>
</body>
</html>
