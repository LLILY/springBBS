<#import "../../spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>个人主页</title>
   <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/>
      <link href="<@spring.url'/public/bootstrap/css/bootstrap-theme.css'/>" rel="stylesheet" media="screen"/>
   <link href="<@spring.url'/public/css/index.css'/>" rel="stylesheet" media="screen"/>
   <link href="<@spring.url'/public/js/uploadify/uploadify.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body>
    <#include "/front/common/header.ftl">
<div class="container">
    <div class="row">
        <div class="col-md-9" style="padding-right: 5px;">
<div class="panel panel-default">
    <div class="panel-heading">
      <a href="">首页</a><span>  / </span><span>设置</span>
    </div>
    <div class="panel-body">
        <div class="alert alert-success hidden" id="setSuccess" role="alert">保存成功。</div>
        <div class="alert alert-danger hidden" id="setFailure" role="alert">保存失败。<i id="setErrMsg"></i></div>
        <form class="form form-horizontal" id="form" method="post" style="margin-top: 20px;"  action = '/springBBS/user/editMemberInfo'>
            <div class="form-group">
                <label class="control-label col-sm-2">昵称</label>
                <div class="col-sm-5">
                	 <input type="text" class="form-control hidden" name="memberId" id="nickname" value="${member.id}" >
                    <input type="text" class="form-control" name="displayName" id="nickname" value="${member.getDisPlayName()!""}">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">电子邮件</label>

                <div class="col-sm-5">
                    <input type="email" class="form-control" disabled value="${member.getEmail()!""}">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">个人网站</label>

                <div class="col-sm-5">
                    <input type="text" class="form-control" name="profileName" id="url" value="${member.getProfileName()!""}">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">个性签名</label>

                <div class="col-sm-5">
                    <textarea name="signature" id="signature" class="form-control">${member.getSignature()!""}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">&nbsp;</label>

                <div class="col-sm-4">
                    <button type="submit" id="saveBtn"  class="btn btn-info btn-sm">保存设置</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div id="avatarDiv" class="panel panel-default" data="${member.id}">
    <div class="panel-heading">修改头像</div>
    <div class="panel-body">
        <div class="form-group">
            <label for="avatar">选择图片</label>
            <p class="help-block">请选择正方形图片，否则会出现变形，支持格式：.gif.jpg.png.jpeg</p>
        </div>
        <button id="submitAvatar" type="button" class="btn btn-info btn-sm">上传</button>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">绑定第三方账号</div>
    <div class="panel-body">
        <div class="media">
                <img src=""/>
                腾讯QQ
            <div class="pull-right">
                    <a class="btn btn-info btn-xs" href="">立即绑定</a>
            </div>
        </div>
        <div class="spacer"></div>
        <div class="media">
                <img src=""/>
                新浪微博
            <div class="pull-right">
                    <a class="btn btn-info btn-xs" href="">立即绑定</a>
            </div>
        </div>
    </div>
</div>
</div>
  	  <#include "/front/common/sidebar.ftl">
</div>
    <script src="<@spring.url'/public/js/module/jquery-2.1.4.js'/>" type="text/javascript"></script>
    <script src="<@spring.url'/public/bootstrap/js/bootstrap.min.js'/>"></script>
    <script src="<@spring.url'/public/js/module/bootstrap-hover-dropdown.min.js'/>"></script>
    <script src="<@spring.url'/public/js/uploadify/jquery.uploadify.min.js'/>"></script>
    <script>
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
    	var  submitAvatar=function(){
    		var url=getRootPath()+'/public/js/uploadify/uploadify.swf';
    		var postUrl=getRootPath()+'/user/editMemberAvatar';
    		$("#submitAvatar").uploadify({
					multi : false,
					buttonClass : 'btn-book',
					checkExisting : false,
					fileObjName : 'qqfile',
					width : 95,
					height : 30,
					formData : {bucketName: "webooks", source: "WEBOOK"},
					buttonText : '上传图片',
					fileSizeLimit : '20MB',//上传文件大小限制
					fileTypeDesc : '语音文件',
					fileTypeExts : '*.jpg;*.jpeg;*.png;',//文件类型过滤
					swf :url,
					uploader:"http://oss.joy-read.com/formImage",
					queueID : "UploadQueue",
					onUploadSuccess : function(file,data,response){
						var jsonobj=eval('('+data+')');
						var avatar = jsonobj.html,fileName =file.name,memberId=$("#avatarDiv").attr("data");
						$.post("editMemberAvatar", {
							memberId : memberId,
							avatar : avatar,
						}, function(json) {
							if(json==true){
								$("#avatarUrl").attr("src",avatar);
								$("#avatarImg").attr("src",avatar);
							}else{
								alert("更改头像失败，请重新上传");
							}
						}, "json");
					}
    		});
    	}
    	submitAvatar();
    </script>
   </body>
   </html>