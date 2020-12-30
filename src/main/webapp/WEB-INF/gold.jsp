<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>我的金币</title>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/nav.css" rel="stylesheet"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/geRen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/update_password.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/gold.css">

</head>
<body>
<section id="custom" class="example-box blue">
<%@ include file="nav_head.jsp"%>
	<!-- 以上是导航栏 	``````````````			-->
	
	<div id="big-div" class="row">
		<div class="vip-tennis-condition"style="padding: 15px;">
			<img id="avatar" src="${pageContext.request.contextPath }/image/nav/login_succuss.png"
					style="width: 90px; height: 90px; border-radius: 50%;float: left;">
			<div style="float: left;margin: 10px auto auto 15px;">
					<p style="margin: 8px auto;"><a>关注量:&nbsp;2392</a>&nbsp;</p>
					<p><a class="ls">签到+5积分</a></p>
			</div>
		</div>
		<div style="float: left;width:751px;height:139px;border:1px solid #ddd;">
			<div class="vt-btn"></div>
			<div class="vt-goldBtn"></div>
		</div>
		<div id="left-div">
				<div class="tle">
				<a class="link ls" href="../personal/my_space.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-leaf"></i>
					&nbsp;&nbsp;&nbsp;我的空间</span></a>
				</div>
				<div class="tle" style="background-color: #ddd;">
				<a class="link ls" href="../personal/about_me.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-print"></i>
					&nbsp;&nbsp;&nbsp;个人资料</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="../personal/update_password.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-cog"></i>
					&nbsp;&nbsp;&nbsp;修改密码</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="../personal/my_favorite.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-star-empty"></i>
					&nbsp;&nbsp;&nbsp;我的收藏</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="${pageContext.request.contextPath}/share/showUpload.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-book"></i>
					&nbsp;&nbsp;&nbsp;我要投稿</span></a>
				</div>
				<hr style="margin: 6px auto;">
				<div class="tle">
				<a class="link ls" href="../personal/recharge.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-send"></i>
					&nbsp;&nbsp;&nbsp;开通会员</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="../personal/gold.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-cd"></i>
					&nbsp;&nbsp;&nbsp;我的金币</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="../personal/history.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-time""></i>
					&nbsp;&nbsp;&nbsp;观看历史</span></a>
				</div>
				<hr style="margin: 6px auto;">
		</div>
		<div id="right-div" style="background-image: url('../image/personage/gold.jpg');background-repeat: no-repeat;overflow: hidden;">
			<center>
				 <div id="divmain" style="width:30%;height:30%;">
        <!--签到-->
        <div style="width:50%;">
            <div style="width:100%;text-align:center;vertical-align:middle;">
                <div style="margin-top:20px;">
                    <div class="circle" style="margin: 0 auto;">
                        <a class="btns radius5 darkcolor" style="line-height:100px;font-weight:bold;font-size:160%;" id="btnSign">签到</a>
                    </div>
                </div>
                <div style="padding:5px 0 10px 0;"><span style="color: rgba(230, 49, 49, 0.86);">已经连续签到 <strong id="spSignDays">3</strong> 天</span></div>
            </div>
        </div>

        <!--签到日历-->
        <div class="sign-cand" style="width:353px;height:334px;">
            <div>
                <table style="width:100%;">
                    <tbody>
                        <tr>
                            <td style="text-align:left;"><span class="darkcolor" id="spCurrentDay">2018年10月10日</span></td>
                            <td style="text-align:right;">
                                <a class="btns radius5 darkbcolor" id="btnHistory" style="color:white;font-size:120%;margin-right:10px;">我的签到</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div style="width:100%;">
                <table id="tblSign" class="radius5" style="width:100%;" border="0">
                    <thead>
                        <tr class="darkcolor trh" style="background-color:#FFF7EE;">
                            <th id="th0">周日</th>
                            <th>周一</th>
                            <th>周二</th>
                            <th>周三</th>
                            <th>周四</th>
                            <th>周五</th>
                            <th>周六</th>
                        </tr>
                    </thead>
                    <tbody id="signTable">
                        <tr class="darkcolor trb">
                            <td>
                                <div>1</div>
                            </td>
                            <td>
                                <div><span>2</span></div>
                            </td>
                            <td>
                                <div><span>3</span></div>
                            </td>
                            <td>
                                <div>
                                    <span>4</span><svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="sign_pin svg-triangle ">
                                        <polygon points="0,0 35,0 0,35" /></svg>
                                </div>
                            </td>
                            <td>
                                <div><span>5</span></div>
                            </td>
                            <td>
                                <div><span>6</span></div>
                            </td>
                            <td>
                                <div><span>7</span></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!--签到历史-->
        <div id="divHistory" class="sign-layer">
            <div class="sign-history-body">
                <div class="radius sign-history-bodymain">
                    <a id="btnPopClose" class="smallClose">&times;</a>
                    <ul class="sign-history-head clear">
                        <li>
                            <p>连续签到</p>
                            <h4>5</h4>
                        </li>
                        <li>
                            <p>本月签到</p>
                            <h4>17</h4>
                        </li>
                        <li>
                            <p>总共签到数</p>
                            <h4>28</h4>
                        </li>
                        <li>
                            <p>签到累计奖励</p>
                            <h4>30</h4>
                        </li>
                    </ul>
                    <div class="sign-history-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>签到日期</th>
                                    <th>奖励</th>
                                    <th>说明</th>
                                </tr>
                            </thead>
                        </table>
                        <table>
                            <tbody>
                                <tr>
                                    <td>2016-1-6 14:23:45</td>
                                    <td>0.20</td>
                                    <td>连续签到19天奖励</td>
                                </tr>
                                <tr>
                                    <td>2016-1-6 14:23:45</td>
                                    <td>0.20</td>
                                    <td>分享奖励</td>
                                </tr>
                                <tr>
                                    <td>2016-1-6 14:23:45</td>
                                    <td>0.20</td>
                                    <td>连续签到19天奖励</td>
                                </tr>
                                <tr>
                                    <td>2016-1-6 14:23:45</td>
                                    <td>0.20</td>
                                    <td>连续签到19天奖励</td>
                                </tr>
                                <tr>
                                    <td>2016-1-6 14:23:45</td>
                                    <td>0.20</td>
                                    <td>连续签到19天奖励</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
       
    </div>
				  </center>
		</div>
</div>
<!-- 外层最大容器 -->
    <div class="wrap-p">
        <!--包裹所有元素的容器-->
        <div class="cube">
            <!--小正方体 -->
            <span class="in_front">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_back">
                 <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_left">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_right">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_top">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_bottom">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
        </div>
    </div>
</section>
<script type="text/javascript">
//加载头像
function update(){
	var url = "../personal/show_about_data.do";
	$.ajax({
		"url" : url,
		"type" : "post",
		"dataType" : "json",
		"success" : function(json){
			if(json.state == 200){
				var user = json.data;
				if(user.avadar != null){
					$("#avatar").attr("src",user.avadar);
				}
				if(user.member != null){
					$(".vt-goldBtn").css("background-image","url('../image/personage/vip-A.jpg')");
					$(".in_pic").attr("src","../image/personage/timg.jpg");
				}
			}else{
				alert("更新失败!")
			}
		}
	});
}
update();	
</script>
<script type="text/javascript">
function verify(){
	var pwd1 = $("#password1").val();
	var pwd2 = $("#password2").val();
	console.log(!pwd1);
	if(!(pwd1==pwd2)){
		alert("重复密码错误!")
	}else{
	
	}
}

$("#ok").click(function(){
	var url = "../handle_update_password.do";
	var data = $("#form_password").serialize();
	$.ajax({
		"url" : url,
		"data" : data,
		"type" : "post",
		"dataType" : "json",
		"success" : function(json){
			if(json.state == 200){
				alert("修改成功!");
			}else if(json.state == 405){
				alert("重复密码不正确");
			}else{
				alert("修改失败!");
			}
		}
	});
});
</script>
<script type="text/javascript">
    var dataObjs = null;
    //Demo 参考了这个例子
    //https://frankgu2014.github.io/%E7%AD%BE%E5%88%B0/demo.html

    window.onload = function () {
        //构建日期数据
        var da = buildData();
        dataObjs = da;
        //控件初始化
        initControls(da);
        //渲染
        renderData(da);
        //通过接口获取数据，合并再重新渲染
        getData();
    }
    //控件
    function initControls(da) {
        $("#spCurrentDay").text(da.current);
        //$('td').height($('#th0').width());

        $("#btnHistory").on('click', function () { $('#divHistory').fadeIn(); })
        $("#btnPopClose").on('click', function () { $('#divHistory').fadeOut(); });

        $("#btnSign").on('click', function () {
            //if (dataObjs && dataObjs.isSigned) return;
            //调用服务器的签到方法
            var btn = $("#btnSign");
            btn.attr('disabled', 'disabled');
            btn.removeClass('actived');
            btn.text('已签到');
            //WH.getAjax(baseUrl + 'Sign').done(function (d) {
            //    if (!d.IsSuccess) {
            //        Msg.notifyWarn(d.ResultMessage);
            //        return;
            //    }
            //    dataObjs.signToday();
            //    var btn = $("#btnSign");
            //    btn.attr('disabled', 'disabled');
            //    btn.removeClass('actived');
            //    btn.text('已签到');
            //}).fail(ajaxError);
        });
    }

    //生成日期数据
    function buildData() {
        var da = {
            dates: [],//日期数据，从1号开始
            current: '',//当前日期
            monthFirst: 1,//获取当月的1日等于星期几
            month: 0,//当前月份
            days: 30,//当前月份共有多少天
            day: 0,//今天几号了
            isSigned: false,//今天是否已经签到
            signLastDays: 3,//连续签到日子

            signToday: function () {
                this.isSigned = true;
                this.dates[this.day].isSigned = true;
            },
        };
        var ds = [];
        //初始化日期数据
        var dt = new Date();
        da.current = dt.getFullYear() + '年' + (dt.getMonth() + 1) + '月' + dt.getDate() + '日'; //dt.ToString('yyyy年M月d日');
        da.monthFirst = new Date(dt.getFullYear(), dt.getMonth(), 1).getDay();
        da.month = dt.getMonth() + 1;
        da.days = new Date(dt.getFullYear(), parseInt(da.month), 0).getDate();//获取当前月的天数
        da.day = dt.getDate();

        for (var i = 1; i < da.days + 1; i++) {
            var o = {
                isSigned: false,//是否签到了
                num: i,//日期
                isToday: i == da.day,//是否今天
                isPass: i < da.day,//时间已过去
            };
            ds[i] = o;
        }
        da.dates = ds;
        return da;
    }

    //渲染数据
    function renderData(da) {
        var signDays = document.getElementById('spSignDays');
        signDays.innerText = da.signLastDays;

        var root = document.getElementById("signTable");
        root.innerHTML = '';

        var tr, td;
        var st = da.monthFirst;
        var dates = da.dates;

        var rowcount = 0;
        //最多6行
        for (var i = 0; i < 42; i++) {
            if (i % 7 == 0) {
                //如果没有日期了，中断
                if (i > (st + da.days))
                    break;

                tr = document.createElement('tr');
                tr.className = 'darkcolor trb';
                root.appendChild(tr);
                rowcount++;
            }
            //前面或后面的空白
            if (i < st || !dates[i - st + 1]) {
                td = document.createElement('td');
                td.innerHTML = '<div class="sign-blank"><span></span></div>';
                tr.appendChild(td);
                continue;
            }
            //填充数字部分
            var d = dates[i - st + 1];
            td = document.createElement('td');
            var tdcss = '';
            if (d.isToday)
                tdcss = 'sign-today';
            else if (d.isPass)
                tdcss = 'sign-pass';
            else
                tdcss = 'sign-future';

            if (d.isSigned) {
                tdcss = 'sign-signed ' + tdcss;
                td.innerHTML = '<div class="' + tdcss + '"><span>' + d.num + '</span><svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="sign-pin svg-triangle "><polygon points="0,0 35,0 0,35" /></svg></div>';
            } else {
                tdcss = 'sign-unsign ' + tdcss;
                td.innerHTML = '<div class="' + tdcss + '"><span>' + d.num + '</span></div>';
            }
            tr.appendChild(td);
        }
        //计算是否需要添加最后一行
        if ((st + da.days + 1) / 7 > rowcount)
            root.appendChild(tr);
    }

    //从服务器获取数据
    function getData() {
        //是否已经签到，签到日期
        var d = { IsSigned: true, SignDays: [1, 2, 3, 5, 8] };
        var da = dataObjs;
        if (!da) return;
        da.isSigned = d.IsSigned;
        for (var i = 1; i <= da.days; i++) {
            var dx = da.dates[i];
            dx.isSigned = d.SignDays.indexOf(dx.num) >= 0;
        }
        renderData(da);
    }
</script>
<script src="../mouse/js/jquery-1.11.0.min.js"></script>
<script src="../mouse/js/bootstrap-3.3.4.js"></script>
<script src="../mouse/js/highlight.min.js"></script>
<script type="text/javascript" src="../mouse/js/jquery-stars.js"></script>
<script type="text/javascript" src="../mouse/js/smothscrool.js"></script>
<script type="text/javascript" src="../mouse/js/jquery.main.js"></script>
</body>
</html>