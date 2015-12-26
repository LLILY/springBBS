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
</head>
  <body>
    <#include "/front/common/header.ftl">
<div class="container">
    <div class="row">
        <div class="col-md-9" style="padding-right: 5px;">
<div class="panel panel-default">
    <div class="panel-heading">
        <ol class="breadcrumb">
            <li><a href="">首页</a></li>
            <li class="active">设置</li>
        </ol>
    </div>
    <div class="panel-body">
        <div class="alert alert-success hidden" id="setSuccess" role="alert">保存成功。</div>
        <div class="alert alert-danger hidden" id="setFailure" role="alert">保存失败。<i id="setErrMsg"></i></div>
        <form class="form form-horizontal" id="form" method="post" style="margin-top: 20px;">
            <div class="form-group">
                <label class="control-label col-sm-2">昵称</label>

                <div class="col-sm-5">
                    <input type="text" class="form-control" name="nickname" id="nickname" value="记忆_淡忘">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">电子邮件</label>

                <div class="col-sm-5">
                    <input type="email" class="form-control" disabled value="942212309@qq.com">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">个人网站</label>

                <div class="col-sm-5">
                    <input type="text" class="form-control" name="url" id="url" value="">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">个性签名</label>

                <div class="col-sm-5">
                    <textarea name="signature" id="signature" class="form-control"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">&nbsp;</label>

                <div class="col-sm-4">
                    <button type="button" id="saveBtn" onclick="saveSetting()" class="btn btn-info btn-sm">保存设置</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">修改头像</div>
    <div class="panel-body">
        <form action="" id="uploadAvatar" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="avatar">选择图片</label>
                <input type="file" name="avatar" id="avatar">
                <p class="help-block">请选择正方形图片，否则会出现变形，支持格式：.gif.jpg.png.jpeg</p>
            </div>
            <button type="submit" class="btn btn-info btn-sm">上传</button>
        </form>
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
   </body>
   </html>