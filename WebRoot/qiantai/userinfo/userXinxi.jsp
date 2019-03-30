<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<script language="javascript">
            
		    function check1()
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
	</head>
	<body>
			<form action="<%=path %>/userEdit.action" name="form1" method="post">
				<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							账号：
						</td>
						<td width="80%" bgcolor="#FFFFFF" style="font-size: 11px;">
							&nbsp;
							<input type="text" name="loginname" id="loginname" value="${sessionScope.user.loginname }" readonly="readonly"/>(账号只读，不能修改)
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							密码：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="loginpw" value="${sessionScope.user.userPw }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							姓名：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userRealname" value="${sessionScope.user.userRealname }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							性别：
						</td>
						<td bgcolor="#FFFFFF" style="font-size: 11px;">
							&nbsp;
							<c:choose>
								<c:when test="${sessionScope.user.userSex=='1' }">
									<input type="radio" name="userSex" value="1" checked="checked"/>男
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="userSex" value="2"/>女
								</c:when>
								<c:when test="${sessionScope.user.userSex=='2' }">
									<input type="radio" name="userSex" value="1"/>男
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="userSex" value="2"  checked="checked"/>女
								</c:when>
								<c:otherwise>
									<input type="radio" name="userSex" value="1"/>男
									<input type="radio" name="userSex" value="2"/>女
								</c:otherwise>
							
							</c:choose>
							
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							年龄：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userAge" value="${sessionScope.user.userAge }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							住址：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userAddress" value="${sessionScope.user.userAddress }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							电话：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userTel" value="${sessionScope.user.userTel }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							邮箱：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userEmail" value="${sessionScope.user.userEmail }"/>
						</td>
					</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									头像：										    
								</td>
								<td align="left">
									<input type="text" name="fujian" id="fujian" value="<%=path %>${sessionScope.user.fujian }" size="30" readonly="readonly"/>
	                                <input type="button" value="上传" onclick="up()" style="width: 60px;height: 20px;"/>
								</td>
							</tr>					
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="hidden" name="userId" value="${sessionScope.user.userId }"/>
							<input type="button" value="确定修改" onclick="check1();"/>
						</td>
					</tr>
				</table>
			</form>
	</body>
</html>
