$("#categorySwitch").change(function(){
	var category=$("#categorySwitch").val();
	if(category=="1"){
		$("#sourceSwitch").hide();
		$("#original_url").hide();
	}else{
		$("#sourceSwitch").show();
		$("#original_url").show();
	}
});

$("#submitPost").click(function(){
	var category=$("#categorySwitch").val(),source="",title=$("#title").val(),
		tag=$("#tagInput").val(),originalUrl="",content=$("#content").val();
	if(category==2){
		source=$("#sourceSwitch").val();
		originalUrl=$("#original_url").val();
	}
	$.ajax({
		url:"addPost",
		type:"post",
		data:{
			title:title,
			content:content,
			tag:tag,
			category:category,
			source:source,
			originalUrl:originalUrl
			
		},
		success:function(data){
			if(data=="true"){
				window.location.href=getRootPath()+"/user/home";
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