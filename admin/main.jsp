<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>管理系统</title>
		<link href="<%=path%>/admin/css/style.css" rel="stylesheet"
			type="text/css" />
		<script type="text/javascript" src="<%=path%>/js/jquery.js">
		</script>

	</head>
	<body>
		<div class="mainindex">
			<div class="welinfo">
				<b>${admin.userName}&nbsp;欢迎使用商城后台管理系统</b>
				<!--<a href="<%=path%>/admin/userinfo/userPw.jsp">修改密码</a>--!>
				<!--</div>
			<div class="xline"></div>

			<ul class="iconlist">

				<li>
					<img src="images/ico01.png" />
					<p>
						<a href="<%=path%>/order?type=orderMana">订单管理</a>
					</p>
				</li>
				<li>
					<img src="images/ico02.png" />
					<p>
						<a href="<%=path%>/admin/goods/goodsAdd.jsp">添加商品</a>
					</p>
				</li>
				<li>
					<img src="images/ico03.png" />
					<p>
						<a href="<%=path%>/admin/xiao/xiao.jsp">销量统计</a>
					</p>
				</li>
				<li>
					<img src="images/ico04.png" />
					<p>
						<a href="<%=path%>/user?type=userMana">会员管理</a>
					</p>
				</li>
				<li>
					<img src="images/ico05.png" />
					<p>
						<a href="<%=path%>/goods?type=goodsKucun">库存查看</a>
					</p>
				</li>
				<li>
					<img src="images/ico06.png" />
					<p>
						<a href="<%=path%>/admin/xiao/goodsxl.jsp">销量排行</a>
					</p>
				</li>

			</ul>


			<div class="xline"></div>
			<div class="box"></div>--!>

			<!--<div class="welinfo">
				<span><img src="images/dp.png" alt="运行状态" /> </span>
				<b>系统运行状态</b>
			</div>

			<ul class="infolist">
				<li>
					<span>操作系统版本：</span><%=System.getProperty("os.name")%>&nbsp;&nbsp;<%=System.getProperty("os.version")%>
				</li>
				<li>
					<span>操作系统类型：</span><%=System.getProperty("os.arch")%>
				</li>
				<li>
					<span>JDK版本：</span><%=System.getProperty("java.version")%>
				</li>
			</ul>--!>

			<div class="xline"></div>
		</div>
	</body>
</html>

