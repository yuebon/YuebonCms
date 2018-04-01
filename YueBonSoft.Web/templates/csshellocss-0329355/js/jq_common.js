$(function(){ 
	/*
	var w140 = $(".nav li").eq(2).width();
    var w121 = $(".nav li").eq(4).width();
    $(".nav li:eq(2)").width(w140);
    $(".nav li:eq(5)").width(w121)
	*/
	$(".m_list").hover(function(){
		$(this).find(".box1").stop().animate({top:0},300);
		$(this).find(".box2").stop().animate({bottom:0},300);

	},function(){
		$(this).find(".box1").stop().animate({top:-320},300);
		$(this).find(".box2").stop().animate({bottom:-163},300);
	});
	
	$("#nTab .con li.none:first").show();	
	$("#nTab .tit li").click(function(){
		var i = $("#nTab .tit li").index(this);
		$("#nTab .con li.none").hide();
		$("#nTab .con li.none").eq(i).show();
		$("#nTab .tit li").removeClass("hover");
		$(this).addClass("hover");
	});
	
	var sumWidth =0;
	$(".ntab1%20.tit").find("li").each(function(){
		sumWidth += $(this).innerWidth();
	});
	sumWidth=sumWidth + parseInt(2);
	$(".ntab1%20.tit").width(sumWidth);
	
	$(".m_box2 .list:odd").css({"background":"#f7f7f7"});
});

/*input提示*/
function getAttributeValue(o, key) {
if (!o.attributes) return null;
var attr = o.attributes;
for (var i = 0; i < attr.length; i++){
if (key.toLowerCase() == attr[i].name.toLowerCase())
return attr[i].value;
}
return null;
}
function focusInputEle(o) {
if (o.value == getAttributeValue(o, 'defaultVal')){
o.value = '';
o.style.color = "#3b8dd0";
}
}
function blurInputEle(o) {
if (o.value == '') {
o.value = getAttributeValue(o, 'defaultVal');
o.style.color = "#3b8dd0";
}
}
/*input提示*/
/*setTimeout(function(){
alert(msg);
},1000);*/

/*function change(){

   
}*/