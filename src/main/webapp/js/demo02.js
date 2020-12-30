var bool1 = true;

$(function() {
	$("#button_2").click(function() {
		if (bool1) {
			var num = $("#strong_2")[0].innerText;
			num = parseInt(num) + 1;
			$("#strong_2")[0].innerText = num;
			$.ajax({
				"url" : "../details/UpdateTicket.do",
				"data" : "id=" + data + "&ticket=黑票",
				"type" : "post",
				"dataType" : "json"
			});
			bool1 = false;
		}
	});
});

$(function() {
	$("#button_1").click(function() {
		if (bool1) {
			var num = $("#strong_1")[0].innerText;
			num = parseInt(num) + 1;
			$("#strong_1")[0].innerText = num;
			$.ajax({
				"type" : 'POST',
				"data" : "id=" + data + "&ticket=红票",
				"url" : '../details/UpdateTicket.do',
				"dataType" : "json",
			});
			bool1 = false;
		}
	});
});

var bol = true;
function button_1_over() {

	if (bol && bool1) {
		$("#button_1")[0].className = "button_1_over";
	}
}

function button_1_out() {
	if (bol && bool1) {
		$("#button_1")[0].className = "button_1_out";
	}
}

function fn2() {
	bol = false;
}

var bol1 = true;
function button_2_over() {

	if (bol1 && bool1) {
		$("#button_2")[0].className = "button_2_over";
	}
}

function button_2_out() {
	if (bol1 && bool1) {
		$("#button_2")[0].className = "button_2_out";
	}
}

function fn3() {
	bol1 = false;
}
// 获取当前浏览器
var browser = navigator.appCodeName == "Mozilla" ? "谷歌" : navigator.appCodeName;
// 获取电脑操作系统版本
var userAgentInfor = navigator.userAgent.toLowerCase(), windowsVersion = userAgentInfor
		.substr(userAgentInfor.indexOf('windows nt ') + 11, 4), nameVersion;
switch (windowsVersion) {
case '5.1;':
	nameVersion = 'window xp';
	break;
case '6.1;':
	nameVersion = 'window 7';
	break;
case '6.3;':
	nameVersion = 'window 8';
	break;
case '10.0;':
	nameVersion = 'window 10';
	break;

default:
	nameVersion = '其他';
}

$(function() {
	if (collect == 1) {
		$("#input_3").val("已收藏");
	}else if(collect == 0){
		$("#input_3").val("收藏");
	}

	$("#collect").click(function() {
		$.ajax({
			"url" : "../details/collect.do",
			"data" : "bookid=" + data,
			"type" : "post",
			"dataType" : "json",
			"success" : function(json) {
				if (json.data == 1) {
					$("#input_3").val("已收藏");
				}else if(json.data == 0){
					$("#input_3").val("收藏");
				}
			}
		});
		location.href = "../details/details.do?bookname=" + bookname;
	});
})

$(function() {
	$("#comment").click(function() {
		var message = $("#context").val();
		if (message != "") {
			alert("评论成功!!")
			$.ajax({
				"url" : "../details/leaveMessage.do",
				"data" : "book_id=" + data + "&message=" + message+"&browser="+browser+"&nameVersion="+nameVersion,
				"type" : "post",
				"dataType" : "json",
				"success" : function(json) {
					var message = $("#context").val("");
				}
			});
		} else {
			alert("评论内容不能为空!!");
		}
		location.href = "../details/details.do?bookname=" + bookname;
	})
	
	
	$("#words").click(function(){
		var words = $("#texterea").val();
		$.ajax({
			"url":"../details/insertWords.do",
			"data":"words="+words+"&UB_id="+UB_id+"&bookid="+data,
			"type":"post",
			"dataType":"json",
		})
		$("#texterea").val("");
		alert("留言成功!!");
	})
})
