<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册页面</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/auction/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">
		function change(){
			$("#yzmimg").prop("src","/auction/code.jpg?a="+Math.random());
		}
		function sub(){
			var a=uname();
			var	b=pwd(); 
			var c=inumber();
			var d=telnumber();
			var e=addr();
			var f=ques();
			var g=answ();
			if(a&&b&&c&&d&&e&&f&&g){
				return true;
			}else{
			return false;
			}
		}
		function uname(){
			var u=$("#username").val().trim();
			if(u.length>6&&u.length<20){
				$("#usernameS").html("");
				return true;
			}else{
				$("#usernameS").html("用户名要大于6个字且小于20个字");
				return false;
			}
			
		}
		function pword(){
			var u=$("#password").val().trim();
			if(u.length>6&&u.length<20){
				$("#passwordS").html("");
				return true;
			}else{
				$("#passwordS").html("密码要大于6个字且小于20个字");
				return false;
			}
			
		}
		function inumber(){
			var u=$("#idnumber").val().trim();
			if(u){
				$("#idnumberS").html("");
				return true;
			}else{
				$("#idnumberS").html("身份证号必填");
				return false;
			}
		}
		function telnumber(){
			var u=$("#tel").val().trim();
			if(u){
				$("#telS").html("");
				return true;
			}else{
				$("#telS").html("电话号码必填");
				return false;
			}
		}
		function addr(){
			var u=$("#address").val().trim();
			if(u){
				$("#addressS").html("");
				return true;
			}else{
				$("#addressS").html("住址必填");
				return false;
			}
		}
		function ques(){
			var u=$("#question").val().trim();
			if(u){
				$("#questionS").html("");
				return true;
			}else{
				$("#questionS").html("密保问题必填");
				return false;
			}
		}
		function answ(){
			var u=$("#answer").val().trim();
			if(u){
				$("#answerS").html("");
				return true;
			}else{
				$("#answerS").html("密保答案必填");
				return false;
			}
		}
		
		
		
</script>
</head>
	<body>
		<!-- <form action="" 	onsubmit="return sub()"	method="post"> -->
		<form action="reg.do" method="post">
			<div class="wrap">
			  <!-- main begin-->
			      <div class="zclf login logns">
			        <h1  class="blue">用户注册</h1>
			          <dl>
			            <dd>
			              <label> <small>*</small>用户名</label>
			              <input type="text" class="inputh lf" id="username" name="userName" onblur="uname()"/>
			             <div class="lf red laba" id="usernameS"></div>
			            </dd>
			            <dd>
			              <label> <small>*</small>密码</label>
			              <input type="text" class="inputh lf" id="password" name="passWord" onblur="pword()"/>
			              <div class="lf red laba" id="passwordS"></div>
			            </dd>
			            <dd>
			              <label> <small>*</small>身份证号</label>
			              <input type="text" class="inputh lf" name="idNumber" id="idnumber" onblur="inumber()" />
			              <div class="lf red laba" id="idnumberS"></div>
			            </dd>
			            <dd>
			              <label> <small>*</small>电话</label>
			              <input type="text" class="inputh lf" name="tel" id="tel" onblur="telnumber()" />
			              <div class="lf red laba" id="telS"></div>
			            </dd>
			            <dd>
			              <label> <small>*</small>住址</label>
			              <input type="text" class="inputh lf" name="address" id="address" onblur="addr()"/>
			              <div class="lf red laba" id="addressS"></div>
			            </dd>
			            <dd>
			              <label> <small>*</small>邮政编码</label>
			              <input type="text" class="inputh lf" name="zipCode" />
			            </dd>
			            <dd>
			              <label> <small>*</small>密保问题</label>
			              <input type="text" class="inputh lf" name="question" id="question" onblur="ques()" />
			              <div class="lf red laba" id="questionS"></div>
			            </dd>
			            <dd>
			              <label> <small>*</small>密保答案</label>
			              <input type="text" class="inputh lf" name="answer" id="answer" onblur="answ()" />
			              <div class="lf red laba" id="answerS"></div>
			            </dd>
			            <dd class="hegas">
			              <label> <small>*</small>验证码</label>
			              <input type="text" class="inputh inputs lf" name="codeFormJsp"/>
			               <span class="wordp lf"><img src="<s:url value="code.jpg"/>" width="96" height="27" alt=""  id="yzmimg"/></span>
			               <span class="blues lf"><a href="javascript:void(0) " onclick="change()" title="">看不清</a></span>
			            </dd>
			            <dd class="hegas">
			              <label>&nbsp;</label>
			               <input name=""  type="checkbox" id="rem_u"   />
			              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
			            </dd>
			            <dd class="hegas">
			              <label>&nbsp;</label>
			              <input name="" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
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
