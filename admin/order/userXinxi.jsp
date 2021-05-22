<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>会员信息</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
	

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
       </script>
	</head>

	<body  background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="14" background="<%=path %>/img/wbg.gif">&nbsp;会员信息&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" >
					<td width="10%">用户名</td>
					<td width="10%">密 码</td>
					<td width="10%">真实姓名</td>
					<td width="10%">性别</td>
					<td width="5%">年龄</td>
					<td width="10%">住址</td>
					<td width="10%">联系方式</td>
					<td width="15%">E-mail</td>
					<td width="10%">QQ</td>
		        </tr>	
				<c:forEach items="${requestScope.userList}" var="user">
				<tr align='center' bgcolor="#FFFFFF" >
					<td bgcolor="#FFFFFF" align="center">
						 ${user.loginname}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.loginpw}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.name}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.sex}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.age}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.address}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.tel}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.email}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${user.qq}
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>
