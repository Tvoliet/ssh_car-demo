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
<div class="layui-tab">
	  <ul class="layui-tab-title">
	    <li class="layui-this">队列概览</li>
	    <li>队列配置</li>
	    <li>测试队列</li>
	  </ul>
	  <div class="layui-tab-content">
	    <div class="layui-tab-item layui-show">
	    	<div align="right">
				<button class="layui-btn layui-btn-mini layui-btn-radius layui-btn-normal" id="ref" ><i class="layui-icon">&#x1002;</i>刷新表格</button> &nbsp&nbsp&nbsp&nbsp&nbsp
			</div>
	    	<table class="layui-table" lay-data="{url:'mq/mq/mqIndex.do',id:'index', even:true, size:'sm'}" lay-filter="index">
			  <thead>
			    <tr>
			      <th lay-data="{field:'syscode', width:80, sort: true}">系统</th>
			      <th lay-data="{field:'code', width:110, sort: true}">队列代码</th>
			      <th lay-data="{field:'name', width:100, sort: true}">队列名称</th>
			      <th lay-data="{field:'url', width:90, sort: true}">推送地址</th>
			      <th lay-data="{field:'incount', width:110, sort: true}">接收数量</th>
			      <th lay-data="{field:'waitcount', width:110, sort: true}">排队数量</th>
			      <th lay-data="{field:'doingcount', width:110, sort: true}">正处理数量</th>
			      <th lay-data="{field:'done', width:110, sort: true}">完成数量</th>
			      <th lay-data="{field:'success', width:110, sort: true}">成功数量</th>
			      <th lay-data="{field:'faile', width:110, sort: true}">失败数量</th>
			      <th lay-data="{fixed: 'right', width:290, align:'center', toolbar: '#barDemo'}">操作</th>
			    </tr>
			  </thead>
			</table>
	    </div>
	    <div class="layui-tab-item">
			<form class="layui-form" action="">
			  <div class="layui-form-item layui-form-text">
			    <label class="layui-form-label">队列配置</label>
			    <div class="layui-input-block">
			      <textarea name="desc" id="config" placeholder="请输入配置json" class="layui-textarea" rows="20"></textarea>
			    </div>
			  </div>
			  <div class="layui-form-item">
			    <div class="layui-input-block">
			      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
			      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
			    </div>
			  </div>
			</form>
	    </div>
	    <div class="layui-tab-item">
	    	<table class="layui-table" lay-data="{url:'mq/mq/initTest.do',id:'test', even:true, size:'sm'}" lay-filter="test">
			  <thead>
			    <tr>
			      <th lay-data="{field:'syscode', width:100, sort: true}">系统</th>
			      <th lay-data="{field:'code', width:150, sort: true}">队列代码</th>
			      <th lay-data="{field:'name', width:150, sort: true}">队列名称</th>
			      <th lay-data="{field:'url', width:300, sort: true}">推送地址</th>
			      <th lay-data="{fixed: 'right', width:150, align:'center', toolbar: '#testbar'}">操作</th>
			    </tr>
			  </thead>
			</table>
	    </div>
	  </div>
	</div>
</body>
<script src="<%=path%>/pages/layui/layui.js"></script>
<script src="<%=path%>/pages/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/popup.js"></script>

</html>
