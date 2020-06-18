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
			font-size: 18px;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
	</style>

  </head>
  
  <body>
		<div class="con">
			<h2 class="title">赛事更新</h2>
			<s:form action="compUpdateAction.action">
				<table>
					<tr>
							<td><s:hidden name="comp.competitionId" value="%{comp.competitionId}"></s:hidden></td>
					</tr>
					<tr>
							<td><s:textfield name="comp.competitionName" value="%{comp.competitionName}" label="赛事名称"></s:textfield></td>
					</tr>
					<tr>
							<td><s:textfield name="comp.competitionIntroduction" value="%{comp.competitionIntroduction}" label="赛事简介"></s:textfield></td>
					</tr>
					<tr>
						<td><s:textfield name="comp.holderName" value="%{comp.holderName}" label="赛事负责人"></s:textfield></td>
				</tr>
				<tr>
					<td><s:textfield name="comp.eqname" value="%{comp.eqname}" label="器材名字"></s:textfield></td>
			</tr>
			<tr>
				<td><s:textfield name="comp.filedType" value="%{comp.filedType}" label="场地类型"></s:textfield></td>
	  	</tr>
					<tr>
							<td><s:submit value="保存"></s:submit></td>
					</tr>
				</table>
			</s:form>
	</div>
  </body>
</html>
