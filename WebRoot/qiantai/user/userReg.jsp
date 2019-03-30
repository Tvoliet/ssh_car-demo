<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
   String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  	<title>信息注册</title>
  	<link rel="stylesheet" href="<%=path%>/pages/layui/css/layui.css">
	
	
  </head>
  
<h1 align="center"> 会员信息注册</h1>
<body>
<div class="layui-tab">
     <div class="layui-tab-content">
		   <div class="main_index">
		        <div class="content dz" style="margin-top: 10px;width: 70%;height: 100%;margin-left: 210px;" >
				    <form action="<%=path %>/userReg.action" name="form1" method="post">
	                     <table align="left" border="0" cellpadding="4" cellspacing="4" class="layui-table"  lay-filter="index">
							<tr align='center'>
								<td style="width: 50px;" align="center" class="dropdown">
									账号：										    
								</td>
								<td align="left">
									<input type="text" name="loginname" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									密码：										    
								</td>
								<td align="left">
									<input type="password" name="loginpw" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									姓名：										    
								</td>
								<td align="left">
									<input type="text" name="name" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									性别：										    
								</td>
								<td align="left">
									<select name="sex" style="width: 120px;"><option value="男">男</option><option value="女">女</option></select>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									年龄：										    
								</td>
								<td align="left">
									<input type="text" name="age" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									住址：										    
								</td>
								<td align="left">
									<input type="text" name="address" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									电话：										    
								</td>
								<td align="left">
									<input type="text" name="tel" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									邮箱：										    
								</td>
								<td align="left">
									<input type="text" name="email" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									头像：										    
								</td>
								<td align="left">
									<input type="text" name="fujian" id="fujian" size="30" readonly="readonly"/>
	                                <input type="button" value="上传" onclick="up()" style="width: 60px;height: 20px;"/>
								</td>
							</tr>
							
							<tr align='center' class="layui-input-block">
							   <td style="width: 50px;" align="center"></td>
							   <td align="left" >
							      <input type="button" value="注册" class="layui-btn" lay-submit lay-filter="formDemo" onclick="zhuce();">
	                              <input type="reset" value="重置" class="layui-btn layui-btn-primary">
							   </td>
							</tr>
						 </table>
                     </form>
	            </div>
				<center>
				    &nbsp;
				</center>
	       </div>
		   
	 </div>
</div>
</body>
	<!-- jQuery -->
	<script src="<%=path%>js/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<%=path%>js/bootstrap.min.js"></script>
	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=path%>js/metisMenu.min.js"></script>
	<!-- DataTables JavaScript -->
	<script src="<%=path%>js/jquery.dataTables.min.js"></script>
	<script src="<%=path%>js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
	<script type="text/javascript">
         function zhuce()
	     {
	        if(document.form1.loginname.value=="")
	        {
	            alert("请输入账号");
	            return false;
	        }
	        if(document.form1.loginpw.value=="")
	        {
	            alert("请输入密码");
	            return false;
	        }
	        if(document.form1.name.value==""){
	            alert("用户名必录");
	            return false;
	        }
	        document.form1.submit();
	     }
	     
	     function up()
	     {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	     }
    </script>
</html>
