/*own.js*/
/*
 * M['weburl'] 		//网站网址
 * M['lang']  		//网站语言
 * M['tem']  		//模板目录路径
 * M['classnow']  	//当前栏目ID
 * M['id']  		//当前页面ID
 * M['module']  	//当前页面所属模块
 * lazyloadbg       //延迟加载背景图片,base64：默认灰色
 * deviceType       //设备判断（p：PC,t：平板，m：手机）
 */
$(document).ready(function () {
    /*导航处理*/
    if (deviceType != 'p') {
        $('body').wrapInner('<div class="cover"></div>');
        $('.met-nav .nav>li>.dropdown-menu .visible-xs').removeClass('visible-xs');
    }
    $('.met-nav .dropdown a.link').click(function () {
        if (deviceType == 'p' && !Breakpoints.is('xs') && $(this).data("hover")) window.location.href = $(this).attr('href');
    });

    /*顶部固定边框阴影处理*/
    if ($(".navbar-fixed-top").length) {
        $(window).scroll(function () {
            if ($(".navbar-fixed-top").offset().top > 1) {
                $(".navbar-fixed-top").addClass("navbar-shadow");
            } else {
                $(".navbar-fixed-top").removeClass("navbar-shadow");
            }
        });
    }

    /*下拉菜单动画修复*/
    $(".navlist .dropdown-submenu").hover(
        function () {
            $(this).parent('.dropdown-menu').addClass('overflow-visible');
        },
        function () {
            $(this).parent('.dropdown-menu').removeClass('overflow-visible');
        }
    );
    var nav_li = $(".navlist .dropdown");
    (function ($) {
        $.fn.hoverDelay = function (options) {
            var defaults = {
                // 鼠标经过的延时时间
                hoverDuring: 200,
                // 鼠标移出的延时时间
                outDuring: 0,
                // 鼠标经过执行的方法
                hoverEvent: function () {
                    // 设置为空函数，绑定的时候由使用者定义
                    $.noop();
                },
                // 鼠标移出执行的方法
                outEvent: function () {
                    $.noop();
                }
            };
            var sets = $.extend(defaults, options || {});
            var hoverTimer, outTimer;
            return $(this).each(function () {
                // 保存当前上下文的this对象
                var $this = $(this)
                $this.hover(function () {
                    clearTimeout(outTimer);
                    hoverTimer = setTimeout(function () {
                        // 调用替换
                        sets.hoverEvent.apply($this);
                    }, sets.hoverDuring);
                }, function () {
                    clearTimeout(hoverTimer);
                    outTimer = setTimeout(function () {
                        sets.outEvent.apply($this);
                    }, sets.outDuring);
                });
            });
        }
    })(jQuery);
});