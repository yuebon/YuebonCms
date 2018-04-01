qipn_side = function(){
	var n = this;
	n.s   = document.querySelector('#qipn_side').getAttribute('data-siteurl');
	n.l   = document.querySelector('#qipn_side').getAttribute('data-lang');
	n.t   = n.s + "app/app/qipn_side/";
	n.v   = '1.2.1';
	//手机端
	n.xs  = function(){
		n.json(function(j){
			var pc = j.pc;
			if(pc['ok'] == 1&&pc['md']==1){
				$("<link>").attr({ rel: "stylesheet",type: "text/css",href: n.t + "web/css/side.css?"+n.v}).appendTo("head");
				$("<link>").attr({ rel: "stylesheet",type: "text/css",href: n.t + "web/Font-Awesome/css/font-awesome.min.css"}).appendTo("head");
				var get 	= n.colorRgb(pc['bg']),
					to  	= n.colorRgb(pc['bgto']),
					opacity = pc['opacity'];
				var style = '<style>';
					style+= '.qipn_side_mb{';
					style+= '	background: linear-gradient(left,rgba('+get+','+opacity+'), rgba('+to+','+opacity+'));';
					style+= '	background: -moz-linear-gradient(left,rgba('+get+','+opacity+'), rgba('+to+','+opacity+'));';
					style+= '	background: -o-linear-gradient(left,rgba('+get+','+opacity+'), rgba('+to+','+opacity+'));';
					style+= '	background: -webkit-linear-gradient(left,rgba('+get+','+opacity+'), rgba('+to+','+opacity+'));';
					style+= '}';
					style+= '</style>';
				$("head").append(style);
				var html 	= '<div class=\"qipn_side_mb animation-slide-bottom '+pc['size']+'\">',script = '';
				var count   = j.count>6?6:j.count;
					html   += '<ul class="blocks-'+count+'">';
					$.each(j, function(i, item){ 
						switch(item.type){
							case '1':
							html+= "<li><a href=\"http://wpa.qq.com/msgrd?v=3&uin="+item.value+"&site=qq&menu=yes\" rel=\"nofollow\" target=\"_blank\"><i class=\"fa "+item.icon+"\"></i></a></li>";
							break;
							case '2':
							html+= "<li><a href=\"http://crm2.qq.com/page/portalpage/wpa.php?uin="+item.value+"&aty=0&a=0&curl=&ty=1\" rel=\"nofollow\" target=\"_blank\"><i class=\"fa "+item.icon+"\"></i></a></li>";
							break;
							case '3':
							html+= "<li><a href=\"tel:"+item.value+"\"><i class=\"fa "+item.icon+"\"></i></a></li>";
							break;
							case '4':
							html+= "<li><a href=\""+item.value+"\" target=\"_blank\"><i class=\"fa "+item.icon+"\"></i></a></li>";
							break;
							case '5':
							html+= "<li><a href=\"javascript:void(0);\" onclick=\"_MEIQIA._SHOWPANEL()\"><i class=\"fa "+item.icon+"\"></i></a></li>";
							if(item.value!='')script += item.value+"<script type=\"text/javascript\">_MEIQIA('withoutBtn', true);</script>";
							break;
							case '6':
							html+= "<li><a href=\"javascript:qipn_side.p();\" class=\"sidebox\" data-wno=\"true\" title=\""+item.name+"\"><i class=\"fa "+item.icon+"\"></i></a></li>";
							break;
							case '7':
							html+= "<li><a href=\"javascript:void(0);\" class=\"md-trigger\" data-modal=\"qipn_side_somedialog\" data-value=\""+item.value+"\"><i class=\"fa "+item.icon+"\"></i></a></li>";
							break;
						}
						if(i>=5)return false; 
					});
					html+= '</ul>';
					html+= '</div>';
					if(pc['size']!='')$("body").addClass(pc['size']);
					$("body").addClass('qipn_side_mb_body').append(html);
				$('.qipn_side').show().removeClass('qipn_side_hide');
				n.w(1);//微信弹框
			}
		});
	}
	//
	n.smmdlg  = function(){
		n.json(function(j){
			var pc = j.pc;
			if(pc['ok'] == 1&&pc['pc']==1){
				$("<link>").attr({ rel: "stylesheet",type: "text/css",href: n.t + "web/css/side.css?"+n.v}).appendTo("head");
				$("<link>").attr({ rel: "stylesheet",type: "text/css",href: n.t + "web/Font-Awesome/css/font-awesome.min.css"}).appendTo("head");
				var get 	= n.colorRgb(pc['bg']),
					to  	= n.colorRgb(pc['bgto']),
					opacity = pc['opacity'];
				var style = '<style>';
					style+= '.qipn_side{';
					style+= '	top: '+pc['top']+'px;';
					style+= '	background: rgba('+to+','+opacity+');';
					style+= '	background: linear-gradient(rgba('+get+','+opacity+'), rgba('+to+','+opacity+'));';
					style+= '	background: -moz-linear-gradient(rgba('+get+','+opacity+'), rgba('+to+','+opacity+'));';
					style+= '	background: -o-linear-gradient(rgba('+get+','+opacity+'), rgba('+to+','+opacity+'));';
					style+= '	background: -webkit-linear-gradient(rgba('+get+','+opacity+'), rgba('+to+','+opacity+'));';
					style+= '}';
					style+= '.qipn_side ul li .sidebox:hover{';
					style+= '	background:'+ pc['hvbg'] +';';
					style+= '}';
					style+= '</style>';
				$("head").append(style);
				$("body").append(n.h(j,pc));
				$('.qipn_side').show().removeClass('qipn_side_hide');
				n.w();//微信弹框
				n.b();//鼠标经过事件绑定
			}
		});
	}
	//获取数据
	n.json = function(fun){
		$.ajax({
		   type: "get",
		   dataType:"jsonp",
		   url: n.t + "plugin/qipn_side.php?lang=" + n.l,
		   success: function(json){
				fun(json);
		   }
		});
	}
	//媒体查询
	n.z = function(){
		if($("body.no_qipn_side").length==0){
			n.e(function(){
				Breakpoints();
				if(Breakpoints.is('xs')){
					n.xs();
				}else{
					n.smmdlg();
				}
			});
		}
	}
	//终端类型
	n.e = function(fun){
		if(typeof(Breakpoints)=='function'){
			fun();
		}else{
			n.q(n.t + "web/js/breakpoints.min.js",function(){
				fun();
			});
		}
	}
	//鼠标经过处理
	n.b = function(){
		var dw = 54;
		if($(".qipn_side").hasClass('qipn_side_sm'))dw = 44;
		if($(".qipn_side").hasClass('qipn_side_lg'))dw = 64;
		$(document).on('mouseover mouseout','.qipn_side ul li .sidebox',function(event){
			if(!$(this).data("wno")){
				if (event.type == 'mouseover') {
					$(this).find("span").addClass("qipn_side_whitespace");
					var wd = $(this).find("span").width() + dw + 12;
					$(this).find("span").removeClass("qipn_side_whitespace");
					$(this).width(wd);
				} else {
					$(this).width(dw);
				}
			}
		});
	}
	//判断JQ加载
	n.side = function(){
		if (typeof jQuery == "undefined") {
			n.qok = true;
			n.q(n.t + "web/js/jquery.min.js",function(){
				if(n.qok){
					n.z();
					n.qok = false;
				}
			});
		} else {
		   n.z();
		}
	}
	//Jquery加载
	n.q = function(src, fun){
		var script = null; 
		script = document.createElement("script"); 
		script.type = "text/javascript"; 
		script.src = src; 
		if(typeof fun === "function"){ 
			script.onload = script.onreadystatechange = function() { 
				var r = script.readyState; 
				if (!r || r === 'loaded' || r === 'complete') { 
					script.onload = script.onreadystatechange = null; 
					fun();
				} 
			}; 
		}
		document.getElementsByTagName("head")[0].appendChild(script);
	}
	//处理数据
	n.h = function(j,pc){
		var pt 		= pc['pt'] == 'left'?'qipn_side_left':'';
		var html 	= '<div class=\"qipn_side qipn_side_hide animation-slide-'+pc['pt']+' ' + pc['size']+' ' +pt + '\">',script = '';
			html   += '<ul>';
			$.each(j, function(i, item){ 
				switch(item.type){
					case '1':
					html+= "<li><a href=\"http://wpa.qq.com/msgrd?v=3&uin="+item.value+"&site=qq&menu=yes\" rel=\"nofollow\" target=\"_blank\"><div class=\"sidebox\"><i class=\"fa "+item.icon+"\"></i><span>"+item.name+"</span></div></a></li>";
					break;
					case '2':
					html+= "<li><a href=\"http://crm2.qq.com/page/portalpage/wpa.php?uin="+item.value+"&aty=0&a=0&curl=&ty=1\" rel=\"nofollow\" target=\"_blank\"><div class=\"sidebox\"><i class=\"fa "+item.icon+"\"></i><span>"+item.name+"</span></div></a></li>";
					break;
					case '3':
					html+= "<li><a href=\"tel:"+item.value+"\"><div class=\"sidebox\"><i class=\"fa "+item.icon+"\"></i><span>"+item.name+"</span></div></a></li>";
					break;
					case '4':
					html+= "<li><a href=\""+item.value+"\" target=\"_blank\"><div class=\"sidebox\"><i class=\"fa "+item.icon+"\"></i><span>"+item.name+"</span></div></a></li>";
					break;
					case '5':
					html+= "<li><a href=\"javascript:void(0);\" onclick=\"_MEIQIA._SHOWPANEL()\"><div class=\"sidebox\"><i class=\"fa "+item.icon+"\"></i><span>"+item.name+"</span></div></a></li>";
					if(item.value!='')script += item.value+"<script type=\"text/javascript\">_MEIQIA('withoutBtn', true);</script>";
					break;
					case '6':
					html+= "<li><a href=\"javascript:qipn_side.p();\" class=\"sidebox\" data-wno=\"true\" title=\""+item.name+"\"><i class=\"fa "+item.icon+"\"></i></a></li>";
					break;
					case '7':
					html+= "<li><a href=\"javascript:void(0);\" class=\"md-trigger\" data-modal=\"qipn_side_somedialog\" data-value=\""+item.value+"\"><div class=\"sidebox\"><i class=\"fa "+item.icon+"\"></i><span>"+item.name+"</span></div></a></li>";
					break;
				}
			});
			html+= '</ul>';
			html+= '</div>';
		return html+script;
	}
	//微信弹框
	n.w = function(mb){
		var ger = $(".qipn_side [data-modal],.qipn_side_mb [data-modal]");
		if(ger.length){
			if($.support.leadingWhitespace||mb){
				$("<link>").attr({ rel: "stylesheet",type: "text/css",href: n.t + "web/Modal/css/component.css?"+n.v}).appendTo("head");
				$.getScript( n.t + "web/Modal/js/modernizr.custom.js",function(){
					$.getScript( n.t + "web/Modal/js/classie.js",function(){
						$.getScript( n.t + "web/Modal/js/modalEffects.js",function(){
						});
					});
				});
				n.f(ger);
			}else{//IE8
				$("<link>").attr({ rel: "stylesheet",type: "text/css",href: n.t + "web/AlertBox/AlertBox.css?"+n.v}).appendTo("head");
				$.getScript( n.t + "web/AlertBox/CJL.0.1.min.js",function(){
					$.getScript( n.t + "web/AlertBox/AlertBox.js",function(){
						n.f(ger);
						$("#qipn_side_somedialog").css({'top':'30%','left':'50%'});
						var ab = new AlertBox($("#qipn_side_somedialog")[0]);
						$(document).on('click','.qipn_side [data-modal]',function(event){
							ab.show();
							OverLay.show();
						});
						$(document).on('click','.qipn_side_close',function(event){
							ab.close();
							OverLay.close();
						});
					});
				});
			}
		}
	}
	n.f = function(ger){
		var i = ger.attr("data-value");
		var h = '<div id="qipn_side_somedialog" class="md-modal">';
		i = i.replace("../", n.s );
		h += '<div class="md-content">';
		h += '<img src="' + i + '" />';
		h += '<a class="qipn_side_close md-close"><i class="fa fa-times"></i></a>';
		h += '</div>';
		h += '</div>';
		h += '<div class="md-overlay"></div>';
		$("body").append(h);
	}
	//返回顶部
	n.p = function(){
		$('html,body').animate({'scrollTop':0},600);
	}
	//颜色转换
	n.colorRgb = function(color){
		var sColor = color.toLowerCase();
		var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
		if(sColor && reg.test(sColor)){
			if(sColor.length === 4){
				var sColorNew = "#";
				for(var i=1; i<4; i+=1){
					sColorNew += sColor.slice(i,i+1).concat(sColor.slice(i,i+1));	
				}
				sColor = sColorNew;
			}
			var sColorChange = [];
			for(var i=1; i<7; i+=2){
				sColorChange.push(parseInt("0x"+sColor.slice(i,i+2)));	
			}
			return sColorChange.join(",");
		}else{
			return sColor;	
		}
	};
}
var qipn_side = new qipn_side();
window.onload = function(){
	qipn_side.side();
}