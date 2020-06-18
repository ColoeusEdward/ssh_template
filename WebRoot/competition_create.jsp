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
  	  text-align:center;
    }
		.con{
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
	</style>

  </head>
  
  <body>
		<div class="con">
			<h2 class="title">赛事添加</h2>
		
	    <s:form action="compAddAction.action">
	      <s:textfield name="compVo.CompName" label="赛事名称"></s:textfield>
				<s:textfield name="compVo.CompInfo" label="赛事简介"></s:textfield>
				<s:textfield name="compVo.HolderName" label="赛事负责人"></s:textfield>
				<s:textfield name="compVo.EQName" label="器材名字"></s:textfield>
				<s:textfield name="compVo.FiledType" label="场地类型"></s:textfield>
				
	      <s:submit align="center" value="添加赛事"></s:submit>
			</s:form>
			
			<button onclick="window.location.href='index.jsp'" >返回首页</button>
		</div>
		
  </body>
</html>
