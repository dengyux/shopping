<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/base.css" />

		<script language="javascript">
function adminDel(userId) {
	if (confirm('您确定删除吗？')) {
		window.location.href = "<%=path%>/admin?type=adminDel&userId="
				+ userId;
	}
}

function adminAdd() {
	var url = "<%=path%>/admin/admin/adminAdd.jsp";
	window.location.href = url;
}
</script>
	</head>

	<body background='<%=path%>/img/allbg.gif'>
		<table width="98%" border="0" cellpadding="2" cellspacing="1"
			bgcolor="#D1DDAA" align="center" style="margin-top: 8px">
			<tr bgcolor="#E7E7E7">
				<td height="14" colspan="4" background="<%=path%>/img/wbg.gif">
					&nbsp;管理员&nbsp;
				</td>
			</tr>
			<tr align="center" bgcolor="#FAFAF1" height="22">
				<td width="33%">
					帐号
				</td>
				<!--
				<td width="33%">
					密码
				</td>--!>
				<td width="33%">
					类型
				</td>
				<td width="33%">
					操作
				</td>
			</tr>
			<c:forEach items="${requestScope.adminList}" var="admin">
				<tr align='center' bgcolor="#FFFFFF">
					<td bgcolor="#FFFFFF" align="center">
						${admin.userName}
					</td>
					<!--<td bgcolor="#FFFFFF" align="center">
						${admin.userPw}
					</td>--!>
					<td bgcolor="#FFFFFF" align="center">
						${admin.userType}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除"
							onclick="adminDel(${admin.userId})" />
					</td>
				</tr>
			</c:forEach>
		</table>

		<table width='98%' border='0'
			style="margin-top: 8px; margin-left: 8px;">
			<tr>
				<td>
					<input type="button" value="添加" style="width: 80px;"
						onclick="adminAdd()" />
				</td>
			</tr>
		</table>
	</body>
</html>