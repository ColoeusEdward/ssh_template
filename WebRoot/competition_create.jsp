<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'competition_create.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style>
		.title{
			font-size: 38px;
  	  text-align:center;
			margin-bottom: 30px;
    }
		body{
			height: 100%;
		}
		.con{
			height: 100%;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}

		.divide_line{
			margin:0 auto;
			width: 80%;
			border-top: 2px solid #929292;
		}
		.form{

		}
		.input{
			margin: 20px 0;
			font-size: 28px;
			border: none;
			border-bottom: 1px solid #8a8989;
			outline: none;
		}
		button,.button{
			transition: all 0.3s ease;
	    margin-left: 30px;
	    font-size:20px;
	    background-color: #fff;
			padding: 18px 40px;
			border-radius: 10px;
		}

		button:hover,.button:hover{
			background-color: black;
			color: #fff;
			transition: all 0.3s ease;
		}
	</style>

  </head>
  
  <body>
		<div class="con">
			<div class="title">赛事添加</div>
			<div class="divide_line"></div>

	    <s:form action="compAddAction.action" cssClass="form">
	      <s:textfield name="compVo.CompName" label="赛事名称" cssClass="input"></s:textfield>
				<s:textfield name="compVo.CompInfo" label="赛事简介" cssClass="input"></s:textfield>
				<s:textfield name="compVo.HolderName" label="赛事负责人" cssClass="input"></s:textfield>
				<s:textfield name="compVo.EQName" label="器材名字" cssClass="input"></s:textfield>
				<s:textfield name="compVo.FiledType" label="场地类型" cssClass="input"></s:textfield>
				
	      <s:submit align="center" value="添加赛事" cssClass="button"></s:submit>
			</s:form>
			
			<button onclick="window.location.href='index.jsp'" >返回首页</button>
		</div>
		
  </body>
</html>
