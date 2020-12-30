<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<!-- 隐藏部分 -->
	<nav class="navbar navbar-inverse navbar-fixed-top hidden-lg hidden-md"
		id="nav_div">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse"
					data-target="#navbarHideen">
					<!-- 
                                		时间：2018-09-28
                                       	描述：当切换的时候有就显示出现,显示三行横杆
                        -->
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="/xiaodaicomic/index.do" class="navbar-brand"
					style="font-weight: bold;" class="active">小呆动漫网</a>
			</div>

			<div class="collapse navbar-collapse" id="navbarHideen">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/area.do?place=中国">国产漫画</a></li>
					<li><a href="${pageContext.request.contextPath}/area.do?place=日本">日本漫画</a></li>
					<li><a href="${pageContext.request.contextPath}/area.do?place=欧美">欧美漫画</a></li>
					<li><a href="${pageContext.request.contextPath}/area.do?place=今日">今日更新</a></li>
					<li><a href="${pageContext.request.contextPath}/area.do?place=VIP">VIP专区</a></li>
					<li><a href="${pageContext.request.contextPath}/share/share.do">分享区</a></li>
				</ul>

				<form action="${pageContext.request.contextPath}/selectBook.do" class="form-inline navbar-right" id="from_1">
					<input name="likename" type="text" class="form-control" placeholder="请输入搜索内容"
						id="text_1">
					<button type="submit" class="btn btn-default btn-primary">搜索</button>
					<a href="${pageContext.request.contextPath}/personal/my_space.do"> <img
						src="${pageContext.request.contextPath}/image/nav/user-photo.png" />
					</a>
				</form>
			</div>
		</div>
	</nav>

	<!-- 顶部默认显示部分 -->

	<!-- navbar-inverse    navbar-fixed-top-->
	<div id="btn_2" class="hidden-sm hidden-xs">
		<nav class="navbar nav-default" id="nav_3">
			<div class="container" id="dmw">
				<a href="/xiaodaicomic/index.do" class="navbar-brand"><strong
					style="font-size: 40px">小呆漫画网.cn</strong></a>
				<form action="selectBook.do" class="navbar-form" id="for">
					<input type="text" name="likename" placeholder="请输入搜索内容" id="text"
						size="40px">
					<button type="submit" class="btnss">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</form>

			</div>

			<div id="btn_bt1">
				<span style="color: red">热搜:</span> <a href="${pageContext.request.contextPath}/selectBook.do?likename=进击的巨人"><input type="button"
					value="进击的巨人" class="btn_bt2"></a> <a href="${pageContext.request.contextPath}/selectBook.do?likename=斗破苍穹"><input type="button"
					value="斗破苍穹" class="btn_bt2"></a> <a href="${pageContext.request.contextPath}/selectBook.do?likename=航海王"><input type="button"
					value="航海王" class="btn_bt2"></a> <a href="${pageContext.request.contextPath}/selectBook.do?likename=火影忍者"><input type="button"
					value="火影忍者" class="btn_bt2"></a>
			</div>
			<ul class="nav nav-pills" id="btn_bt3">
				<li class="li_1"><a href="${pageContext.request.contextPath}/index.do">首页</a></li>
				<li class="li_1"><a href="${pageContext.request.contextPath}/area.do?place=China">国产漫画</a></li>
				<li class="li_1"><a href="${pageContext.request.contextPath}/area.do?place=Japan">日本漫画</a></li>
				<li class="li_1"><a href="${pageContext.request.contextPath}/area.do?place=Occident">欧美漫画</a></li>
				<li class="li_1"><a href="${pageContext.request.contextPath}/area.do?place=今日">今日更新</a></li>
				<li class="li_1"><a href="${pageContext.request.contextPath}/area.do?place=VIP">VIP专区</a></li>
				<li class="li_1"><a href="${pageContext.request.contextPath}/share/share.do">分享区</a></li>
			</ul>
			<c:choose>
				<c:when test="${sessionScope.user==null}">
					<a href="#" data-toggle="modal" data-target="#login"> <img
						src="${pageContext.request.contextPath}/image/nav/user-photo.png" />
					</a>
				</c:when>
				<c:when test="${sessionScope.user!=null}">
					<a href="${pageContext.request.contextPath}/personal/my_space.do">
						<input class="btn btn-info" type="button" value="个人中心" id="myinfo">
					</a>
				</c:when>
			</c:choose>
		</nav>
	</div>
</header>