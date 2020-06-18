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
    
    <title>赛事展示</title>
    
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
      width: 100%;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
	</style>

  </head>
  
  <body>
		<div class="con">
			<h2 class="title">查看全部赛事</h2>
      <table border="1" width="90%" align="center">
        <tr>
        	 <td><h3><font color="red">赛事编号</font></h3></td>
             <td><h3><font color="red">赛事名称 </font></h3></td>
             <td><h3><font color="red">赛事简介</font></h3></td>
             <td><h3><font color="red">赛事负责人</font></h3></td>
             <td><h3><font color="red">器材名字</font></h3></td>
             <td><h3><font color="red">场地类型</font></h3></td>
             <td><h3><font color="red">取消</font></h3></td>
             <td><h3><font color="red">更新</font></h3></td>
        </tr>
        <s:iterator value="#request.complist" id="b">
        <tr>
             <td>${b.competitionId}</td>
             <td>${b.competitionName}</td>       
             <td>${b.competitionIntroduction}</td>
             <td>${b.holderName}</td>
             <td>${b.eqname}</td>
             <td>${b.filedType}</td>
             <td><s:a href="compCancelAction.action?comp.competitionId=%{#b.competitionId}" onclick="return del()">删除</s:a></td>
             <td><s:a href="compFindOneAction.action?comp.competitionId=%{#b.competitionId}">更新</s:a> </td> 
        </tr>
        </s:iterator>
     </table>
	   
			
			<button onclick="window.location.href='index.jsp'" >返回首页</button>
		</div>
		
  </body>

  <script type="text/javascript">
    function del()
    {
      if(confirm("您真的想删除该记录吗？"))
      {
         return true;
      }
      return false;
    }
  </script>	
</html>
