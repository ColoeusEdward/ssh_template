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
			font-size: 18px;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
		button,.button{
          transition: all 0.3s ease;
	    /* margin-left: 30px; */
	    font-size:20px;
	    background-color: #fff;
			padding: 18px 40px;
			border-radius: 10px;
      margin-top: 30px;
        }

        .divide_line{
			margin:0 auto;
			width: 80%;
			border-top: 2px solid #929292;
		}
    button:hover,.button:hover{
			background-color: black;
			color: #fff;
			transition: all 0.3s ease;
		}
		.input{
			margin: 20px 0;
			font-size: 28px;
			border: none;
			border-bottom: 1px solid #8a8989;
			outline: none;
		}
		.divide_line{
			/* margin:0 auto; */
			width: 80%;
			border-top: 2px solid #929292;
			margin: 30px auto;
		}
	</style>

  </head>
  
  <body>
		<div class="con">
			<div class="title">赛事更新</div>
			<div class="divide_line"></div>

			<s:form action="compUpdateAction.action">
				<table>
					<tr>
							<td><s:hidden name="comp.competitionId" value="%{comp.competitionId}" cssClass="input"></s:hidden></td>
					</tr>
					<tr>
							<td><s:textfield name="comp.competitionName" value="%{comp.competitionName}" label="赛事名称" cssClass="input"></s:textfield></td>
					</tr>
					<tr>
							<td><s:textfield name="comp.competitionIntroduction" value="%{comp.competitionIntroduction}" label="赛事简介" cssClass="input"></s:textfield></td>
					</tr>
					<tr>
						<td><s:textfield name="comp.holderName" value="%{comp.holderName}" label="赛事负责人" cssClass="input"></s:textfield></td>
				</tr>
				<tr>
					<td><s:textfield name="comp.eqname" value="%{comp.eqname}" label="器材名字" cssClass="input"></s:textfield></td>
			</tr>
			<tr>
				<td><s:textfield name="comp.filedType" value="%{comp.filedType}" label="场地类型" cssClass="input"></s:textfield></td>
	  	</tr>
					<!-- <tr>
							<td></td>
					</tr> -->
				</table>
				<s:submit value="保存" cssClass="button" align="center"></s:submit>
			</s:form>

			<button onclick="window.location.href='index.jsp'" >返回首页</button>
	</div>
  </body>
</html>
