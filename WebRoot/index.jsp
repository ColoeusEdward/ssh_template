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
  	  text-align:center;
    }

	  .btn_con{
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    margin:0 auto;
	    
	  }
	  .btn_con button{
	    margin-left: 30px;
	    font-size:20px;
	    
	  }
	</style>
  </head>
  
  <body>
   
    <h2 class="title">赛事管理系统</h2>

    <div class="btn_con">
      <button onclick="window.location.href='competition_create.jsp'" >赛事添加</button>
			<button onclick="window.location.href='competition_query.jsp'">赛事查询</button>
			<button onclick="window.location.href='competition_update.jsp'">赛事更新</button>
      <button onclick="window.location.href='competition_cancel.jsp'">赛事取消</button>
      <button onclick="window.location.href='competition_referee.jsp'">裁判信息查询</button>
    </div>
    
    <form action="hello.action" method="post">
      <label for="name">Please enter your name</label><br/>
      <input type="text" name="name"/>
      <input type="submit" value="Say Hello"/>
   </form>
  </body>
  
  <script>
  
  </script>
</html>
