<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
		.divide_line{
			margin:0 auto;
			width: 80%;
			border-top: 2px solid #929292;
		}
		.con{
			height: 100%;
			display: flex;
			flex-direction: column;
	    justify-content: center;
	    align-items: center;
	    margin:0 auto;
		}

	  .btn_con{

			/* height: 100%; */
	    display: flex;
			
	    justify-content: center;
	    align-items: center;
	    margin:40px auto;
	    
	  }
	  .btn_con button{
			transition: all 0.3s ease;
	    margin-left: 30px;
	    font-size:30px;
	    background-color: #fff;
			padding: 20px 60px;
			border-radius: 10px;
	  }
		.btn_con button:hover{
			background-color: black;
			color: #fff;
			transition: all 0.3s ease;
		}

	</style>
  </head>
  
  <body>
   <div class="con">
		<div class="title">赛事管理系统</div>
		<div class="divide_line"></div>
    <div class="btn_con">
      <button onclick="window.location.href='competition_create.jsp'" >赛事添加</button>
			<!-- <button onclick="window.location.href='competition_query.jsp'">赛事查询</button> -->
			<button onclick="window.location.href='compFindAllAction.action'">全部赛事</button>
      <!-- <button onclick="window.location.href='competition_referee.jsp'">所有裁判信息</button> -->
    </div>
	 </div>
  	
    
  </body>
  
  <script>
  
  </script>
</html>
