

$(function (){
	$("a.face").smohanfacebox({
		Event : "click",	//触发事件	
		divid : "Smohan_FaceBox", //外层DIV ID
		textid : "Smohan_text" //文本框 ID
	});
	//解析表情  $('#Zones').replaceface($('#Zones').html());
});

$(".replyOthers").click(function(){
	var ele=$(this),replyId=ele.attr("data-id"),name=ele.attr("data-name");
	$('#submitReply').attr("data",replyId);
	$("#replyContent").val("回复"+name+"：")
});

$('#submitReply').click(function() {
	var content=$("#replyContent").val(),postId=$("#postDiv").attr("data"),replyId=$.trim($("#submitReply").attr("data"));
	if(replyId!=undefined&&replyId.length>0){
		if(content.indexOf($("#replyOthers_"+replyId).attr("data-name"))==-1){
			replyId=null;
		}
	}
	$.ajax({
		url:"addReply",
		type:"post",
		data:{
			content:content,
			postId:postId,
			replyId:replyId
			
		},
		success:function(data){
			if(data=="true"){
				window.location.href=getRootPath()+"/post/view?postId="+postId;
			}
		}
	});
});

function getRootPath(){
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
    var curWwwPath=window.document.location.href;
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
    var pathName=window.document.location.pathname;
    var pos=curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8083
    var localhostPaht=curWwwPath.substring(0,pos);
    //获取带"/"的项目名，如：/uimcardprj
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
   // projectName = "//* AircrewHealth ;
    return(localhostPaht+"/springBBS");
};