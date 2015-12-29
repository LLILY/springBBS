

$(function (){
	$("a.face").smohanfacebox({
		Event : "click",	//触发事件	
		divid : "Smohan_FaceBox", //外层DIV ID
		textid : "Smohan_text" //文本框 ID
	});
	//解析表情  $('#Zones').replaceface($('#Zones').html());
});
//Demo测试
$('#Smohan_Showface').click(function() {
	//.replace('<emt>'+ (i+1) +'</emt>','<img src="../public/img/face/'+(i+1)+'.gif">');字符替换成图片
	 console.log($('#Smohan_text').val());
});