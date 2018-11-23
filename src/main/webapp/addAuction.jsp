<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加拍卖品</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<form action="<s:url  namespace="/" action="auction_insert"/>" method="post" enctype="multipart/form-data">
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
		              <input type="text" class="inputh lf"  name="auction.name"/>
		              <div class="xzkbg spbg lf"></div>
		            </dd>
		            <dd>
		              <label>起拍价：</label>
		              <input type="text" class="inputh lf"  name="auction.startPrice" />
		              <div class="lf red laba">必须为数字</div>
		            </dd>
		            <dd>
		              <label>底价：</label>
		              <input type="text" class="inputh lf" name="auction.upset" />
		              <div class="lf red laba">必须为数字</div>
		            </dd>
		            <dd>
		              <label>开始时间：</label>
		              <input type="text" class="inputh lf" name="startTimeStr" />
		              <div class="lf red laba">格式：2010-05-05 12:30:00</div>
		            </dd>
		            <dd>
		              <label>结束时间：</label>
		              <input type="text" class="inputh lf" name="endTimeStr" />
		              <div class="lf red laba">格式：2010-05-06 16:30:00</div>
		            </dd>
		            <dd class="dds">
		              <label>拍卖品图片：</label>
		               <div class="lf salebd"><a href="#"><img src="images/ad20.jpg" width="100" height="100" /></a></div>
		              <input name="myPhoto" type="file" class="offset10 lf" />
		             
		            </dd>
		             <dd class="dds">
		              <label>描述：</label>
		              <textarea name="auction.desc" cols="" rows="" class="textarea"></textarea>
		            </dd>
		            <dd class="hegas">
		                <input  type="submit" value="保 存" class="spbg buttombg buttombgs buttomb f14 lf" />
		                <a href="#"><input  type="submit" value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" /></a>
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
