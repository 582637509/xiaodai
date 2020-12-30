<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>个人资料</title>
<meta name="viewport"
	content="width=device-width user-scalable=no initial-scale=1.0 maximum-scale=1.0 minimum-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/nav.css" rel="stylesheet"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/geRen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/style.css">
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=eF8o0K3gnUAtUcv688cRy9UZUKXRDR8t"></script>
<!-- 时间插件导入css和js -->
<link href="../fa/css/bootstrap-datetimepicker.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="../fa/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<style type="text/css">
#right-div>table>tbody>tr>td>input{
	margin: 10px auto 10px;
}
#allmap{
			width: 1000px;
			height: 1000px;
			display: none;
		}
#allmapup{
			display:none;
}
</style>
</head>
<body>
<section id="custom" class="example-box blue">
	<div style="text-align:center;clear:both;">
</div>
	<%@ include file="nav_head.jsp"%>
	<!-- 以上是导航栏 	``````````````			-->
	
	<div id="big-div" class="row">
		<div class="vip-tennis-condition"style="padding: 15px;">
			<img id="result" src="${pageContext.request.contextPath}/image/nav/login_succuss.png"
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
		<div id="right-div" style="background-image: url('../image/personage/entries.jpg');background-repeat: no-repeat;">
			<form id="form_about">
			<div style="width: 90px; height: 140px;float: left;overflow: hidden;">
				<img id="avatar" src="${pageContext.request.contextPath }/image/nav/login_succuss.png" style="width: 90px; height: 90px; border-radius: 50%;">
				<input id="pic" type="file" name="avatarFile"  style="margin:6px 0 0 9px;width:73px;" onchange = "selectFile()">
				<p  id="show" style="color: green;margin-left: 15px;display: none;">需要保存</p>
			</div>
			<div class="prepr">
						<p>&nbsp;UID<b>:</b>&nbsp;&nbsp;<span id="uid"> 1206885029</span></p>
						<p>用户名<b>:</b>&nbsp;&nbsp;<span id="username"> 152****6564_m1783</span></p>
						<p style="width:527px;">信息完整度<b>:</b></p>
				<div class="progress">
   					 <div class="progress-bar" role="progressbar" aria-valuenow="60" 
   				    	id="index-top" aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
  				 	 </div>
				</div>
    				    <div id="index-botton" style="position: absolute;left:248px;top:95px"><b>70% 完成</b></div>
			</div>
				<table style="margin-left: 111px;">
					<tr>
						<td class="tex">昵称：</td>
						<td id="nickname" style="width: 139px;">无</td>
						<td class="qst"><i class="glyphicon glyphicon-pencil" title="修改"></i></td>
						<td>
							<input  name="nickname" type="text" class="yin form-control con" placeholder="您的昵称">
						</td>
					</tr>
					<tr>
						<td class="tex">邮箱：</td>
						<td id="email" style="width: 139px;">无</td>
						<td class="qst"><i class="glyphicon glyphicon-pencil" title="修改"></i></td>
						<td>
							<input name="email" type="text" class="yin form-control con" placeholder="您的邮箱">
						</td>
					</tr>
					<tr>
						<td class="tex">性别：</td>
						<td><input id="gender_inp_male" type="radio" name="gender" value="1" checked="checked">男&nbsp;
							<input id="gender_inp_female" type="radio" name="gender" value="0">女</td>
					</tr>
					<tr>
						<td class="tex">QQ：</td>
						<td id="qq" style="width: 139px;">无</td>
						<td class="qst"><i class="glyphicon glyphicon-pencil" title="修改"></i></td>
						<td>
							<input name="qq"  type="text" class="yin form-control con" placeholder="您的QQ">
						</td>
					</tr>
					<tr>
						<td class="tex">生日：</td>
						<td  class="-td">
							<input id="birthday" name="bday" class="form-control  date form_datetime" size="16"  type="text"   data-date="2000-09-16" data-date-format="yyyy-mm-dd" data-link-field="dtp_input1">
						</td>
					</tr>
					<tr>
						<td class="tex">地址：</td>
						<td id="email" style="width: 139px;"><input id="t1" name="address" class="form-control" size="16"  type="text"></td>
						<td class="qst"><i class="glyphicon glyphicon-pencil" title="修改" onclick="fn3()"></i></td>
						<td>
							
						</td>	
					</tr>
					
					<tr>
						<td class="tex">电话号码：</td>
						<td id="phone" style="width: 139px;">13000138000</td>
						<td class="qst"><i class="glyphicon glyphicon-pencil" title="修改"></i></td>
						<td>
							<input name="phone"  type="text" class="yin form-control con" placeholder="您的电话">
						</td>
					</tr>
					<tr>
						<td class="tex"style="vertical-align: top;">个性签名：</td>
						<td colspan="3">
							<textarea id="signature"  name="signature" rows="3" cols="28">写点什么呢。。</textarea>
						</td>
					</tr>
					<tr style="text-align: center;">
						<td colspan="2"><input id="baocun" type="button" value="保 存 设 置" class="btn btn-info"></td>
					</tr>
				</table>
			</form>
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
<div id="allmapup"><input type="button" value="搜索" id="btn" onclick="fn1()" ><input type="text" id="t"></div>
<div id="allmap">

</div>
<script type="text/javascript">
// 及时更新头像但并未保存  
var form = new FormData();//通过HTML表单创建FormData对象
var url = '127.0.0.1:8080/'
function selectFile(){
    var files = document.getElementById('pic').files;
    console.log(files[0]);
    if(files.length == 0){
        return;
    }
    var file = files[0];
    //把上传的图片显示出来
    var reader = new FileReader();
    // 将文件以Data URL形式进行读入页面
    console.log(reader);
    reader.readAsBinaryString(file);
    reader.onload = function(f){
        var src = "data:" + file.type + ";base64," + window.btoa(this.result);
        $("#avatar").attr("src",src);
    }
    console.log('file',file);
    ///////////////////
    form.append('file',file);
    console.log(form.get('file'));
    $("#show").css("display","inline");
}
</script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
    	language:"zh-CN",    //语言选择中文
        format:"yyyy-mm-dd",    //格式化日期
        timepicker:true,     //关闭时间选项
        yearEnd:2018,        //设置最大年份
        todayButton:false,    //关闭选择今天按钮
        autoclose: 1,        //选择完日期后，弹出框自动关闭
        startView:4,         //打开弹出框时，显示到什么格式,3代表月
        minView: 2,          //能选择到的最小日期格式
        endDate : new Date() //设置日期最大值为今天

    });
    // 控制修改图标点击事件  
    $(".glyphicon").click(function(){
    	var obj = $(this).parent().next().children();
    	console.log($(this));
	    	obj.css("display","inline");
    })
</script>
<script type="text/javascript">
function update(){
	var url = "../personal/show_about_data.do";
	$.ajax({
		"url" : url,
		"type" : "post",
		"dataType" : "json",
		"success" : function(json){
			if(json.state == 200){
				var user = json.data;
				var date = new Date(user.birthday);	
				var index = 50;
				if(user.nickname != null && user.nickname != ""){
					$("#nickname").text(user.nickname);
					index += 10;
				}
				if(user.qq != null && user.qq != ""){
					$("#qq").text(user.qq);
					index += 10;
				}
				if(user.avadar != null && user.avadar != ""){
					$("#result").attr("src",user.avadar);
					$("#avatar").attr("src",user.avadar);
					index += 10;
				}
				if(user.signature != null && user.signature != ""){
					$("#signature").text(user.signature);
					index += 10;
				}
				if(user.address!=null&&user.address!=""){
					$("#t1").val(user.address);
					index+=10;
				}
				$("#email").text(user.email);
				$("#phone").text(user.phone);
				$("#uid").text(user.id);
				$("#username").text(user.username);
				$("#birthday").val(date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate());				
				if(user.gender == null || user.gender == 1){
					$('#gender_inp_male').attr("checked","checked");
				}else{
					$('#gender_inp_female').attr("checked","checked");
				}
				$("#index-top").css("width",index + "%");
				if(index == 100){
					$("#index-top").css("background-color","#CDF1A7");
				}
				$("#index-botton").text(index + "%完成");
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
$("#baocun").click(function(){
	var url = "../personal/handle_update_data.do";
	var data = new FormData($("#form_about")[0]);
	$.ajax({
		"url" : url,
		"data" : data,
		"type" : "post",
		"dataType" : "json",
		"contentType": false,
		"processData": false,
		"success" : function(json){
			if(json.state == 200){
				alert("提交成功!");
				$("#show").css("display","none");
				$(".yin").css("display","none");
				$(".yin").val("");
				update();
			}else if(json.state == 408){
				alert("修改资料失败");
			}else{
				alert("提交失败!");
			}
		}
	});
});
</script>
<script src="../mouse/js/jquery-1.11.0.min.js"></script>
<script src="../mouse/js/bootstrap-3.3.4.js"></script>
<script src="../mouse/js/highlight.min.js"></script>
<script type="text/javascript" src="../mouse/js/jquery-stars.js"></script>
<script type="text/javascript" src="../mouse/js/smothscrool.js"></script>
<script type="text/javascript" src="../mouse/js/jquery.main.js"></script>
</body>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 50);  // 初始化地图,设置中心点坐标和地图级别
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	map.setCurrentCity("珠海");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	var geoc = new BMap.Geocoder();
	map.addEventListener("click", function(e){        
		var pt = e.point;
		geoc.getLocation(pt, function(rs){
			var addComp = rs.addressComponents;
			alert(addComp.province + ", " + addComp.city + ", " + addComp.district+", " + addComp.street + ", " + addComp.streetNumber);
			t1.value=addComp.province + ", " + addComp.city + ", " + addComp.district+", " + addComp.street + ", " + addComp.streetNumber;
		});        
	});
	var local = new BMap.LocalSearch(map, {
		renderOptions:{map: map}
	});
	local.search("珠海");
	function fn1(){
		local.search(t.value);
	}
	function fn2(){
		var map=document.getElementById("allmap");
			map.style.display="none";

	}
	function fn3(){
		var map=document.getElementById("allmap");
			map.style.display="block";
		var mapup=document.getElementById("allmapup");
			mapup.style.display="block";
			$('html,body').animate({scrollTop:$('#allmapup').offset().top}, 500);
	}
</script>
</html>