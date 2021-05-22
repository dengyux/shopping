<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		<link href="<%=path%>/admin/css/style.css" rel="stylesheet"
			type="text/css" />
		<script language="JavaScript" src="<%=path%>/js/jquery.js">
		</script>

		<script type="text/javascript">
$(function() {
	//导航切换
	$(".menuson li").click(function() {
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});

	$('.title').click(function() {
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if ($ul.is(':visible')) {
			$(this).next('ul').slideUp();
		} else {
			$(this).next('ul').slideDown();
		}
	});
})
</script>


	</head>

	<body style="background: #f0f9fd;">
		<div class="lefttop">
			<span></span>后台管理系统
		</div>

		<dl class="leftmenu">

			<dd>
				<div class="title">
					<span><img src="images/leftico01.png" /> </span>基本信息管理
				</div>
				<ul class="menuson">
					<li class="active">
						<cite></cite><a href="<%=path%>/admin/userinfo/userPw.jsp"
							target="rightFrame">修改密码</a><i></i>
					</li>
				</ul>
			</dd>

			<c:if test="${admin.userType=='管理员'}">
			<dd>
				<div class="title">
					<span><img src="images/leftico02.png" /> </span>新闻公告管理
				</div>
				<ul class="menuson">
					<li>
						<cite></cite><a href="<%=path%>/gonggao?type=gonggaoMana"
							target="rightFrame">新闻公告</a><i></i>
					</li>
				</ul>
			</dd>
			</c:if>

			<c:if test="${admin.userType=='销售员'||admin.userType=='管理员'}">
				<dd>
					<div class="title">
						<span><img src="images/leftico03.png" /> </span>类别管理
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/catelog?type=catelogMana"
								target="rightFrame">类别管理</a><i></i>
						</li>
					</ul>
				</dd>


				<dd>
					<div class="title">
						<span><img src="images/leftico05.png" /> </span>商品管理
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/goods?type=goodsMana"
								target="rightFrame">商品管理</a><i></i>
						</li>
					</ul>
				</dd>
			</c:if>


			<c:if test="${admin.userType=='仓管员'||admin.userType=='管理员'}">
				<dd>
					<div class="title">
						<span><img src="images/leftico06.png" /> </span>仓储管理
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/goods?type=goodsKucun"
								target="rightFrame">库存查看</a><i></i>
						</li>
						<li>
							<cite></cite><a href="<%=path%>/chu?type=chuMana"
								target="rightFrame">出仓管理</a><i></i>
						</li>
						<li>
							<cite></cite><a href="<%=path%>/jin?type=jinMana"
								target="rightFrame">进仓管理</a><i></i>
						</li>
					</ul>
				</dd>
			</c:if>


			<c:if test="${admin.userType=='销售员'||admin.userType=='管理员'}">
				<dd>
					<div class="title">
						<span><img src="images/leftico04.png" /> </span>订单管理
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/order?type=orderMana"
								target="rightFrame">订单管理</a><i></i>
						</li>
					</ul>
				</dd>

				<!--<dd>
					<div class="title">
						<span><img src="images/leftico08.png" /> </span>销量统计
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/admin/xiao/xiao.jsp"
								target="rightFrame">统计报表</a><i></i>
						</li>
						<li>
							<cite></cite><a href="<%=path%>/admin/xiao/goodsxl.jsp"
								target="rightFrame">销量排行</a><i></i>
						</li>
					</ul>
				</dd>--!>

				<dd>
					<div class="title">
						<span><img src="images/leftico09.png" /> </span>账单管理
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/order?type=orderZhang"
								target="rightFrame">账单管理</a><i></i>
						</li>
					</ul>
				</dd>
			</c:if>

			<c:if test="${admin.userType=='管理员'}">

				<dd>
					<div class="title">
						<span><img src="images/leftico07.png" /> </span>会员管理
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/user?type=userMana"
								target="rightFrame">会员管理</a><i></i>
						</li>
					</ul>
				</dd>




				<dd>
					<div class="title">
						<span><img src="images/leftico10.png" /> </span>留言管理
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/admin/msg/list.jsp"
								target="rightFrame">留言管理</a><i></i>
						</li>
					</ul>
				</dd>


				<dd>
					<div class="title">
						<span><img src="images/leftico11.png" /> </span>管理员管理
					</div>
					<ul class="menuson">
						<li>
							<cite></cite><a href="<%=path%>/admin?type=adminMana"
								target="rightFrame">管理员管理</a><i></i>
						</li>
					</ul>
				</dd>
			</c:if>

		</dl>

	</body>
</html>

