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
      font-size: 38px;
  	  text-align:center;
			margin-bottom: 30px;
    }
		.con{
      height: 100%;
      width: 100%;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
    table
        {

            border-collapse: collapse;
            margin: 50px auto;
            text-align: center;
        }
        table td, table th
        {
            border: 1px solid #cad9ea;
            color: #666;
            height: 40px;
        }
        table thead th
        {
            background-color: #CCE8EB;
            width: 100px;
        }
        table tr:nth-child(odd)
        {
            background: #fff;
        }
        table tr:nth-child(even)
        {
            background: #F5FAFA;
        }
        button{
          transition: all 0.3s ease;
	    margin-left: 30px;
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

	</style>

  </head>
  
  <body>
		<div class="con">
      <h2 class="title">查看全部赛事</h2>
      <div class="divide_line"></div>
      <table border="1" width="90%" align="center">
        <tr>
        	 <td><h3>赛事编号</h3></td>
             <td><h3>赛事名称 </h3></td>
             <td><h3>赛事简介</h3></td>
             <td><h3>赛事负责人</h3></td>
             <td><h3>器材名字</h3></td>
             <td><h3>场地类型</h3></td>
             <td><h3>取消</h3></td>
             <td><h3>更新</h3></td>
        </tr>
        <s:iterator value="#request.complist" id="b">
        <tr>
             <td>${b.competitionId}</td>
             <td>${b.competitionName}</td>       
             <td>${b.competitionIntroduction}</td>
             <td>${b.holderName}</td>
             <td>${b.eqname}</td>
             <td>${b.filedType}</td>
             <td><s:a href="compCancelAction.action?comp.competitionId=%{#b.competitionId}" onclick="return del()">取消</s:a></td>
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
