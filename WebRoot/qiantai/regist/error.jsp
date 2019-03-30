<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
   String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  	<title>MQ平台</title>
  	<link rel="stylesheet" href="<%=path%>/pages/layui/css/layui.css">
  </head>
  
<body>
	<textarea name="desc" id="config" placeholder="请输入配置json" class="layui-textarea" rows="20"></textarea>
	
</body>
<script src="<%=path%>/pages/layui/layui.js"></script>
<script src="<%=path%>/pages/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/popup.js"></script>

</html>
