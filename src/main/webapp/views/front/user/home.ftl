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
      <a href="">首页</a><span>  / </span><span>记忆_淡忘</span>
    </div>
    <div class="panel-body">
        <a href="">
            <img src="" title="记忆_淡忘" width="48">
        </a>&nbsp;
        <span><a href="">记忆_淡忘</a></span>
        <div>
        </div>
        <div style="margin-top: 10px;">
            <span>积分: 16 </span>
        </div>
        <div>
            <span>
                <span class="glyphicon glyphicon-bookmark"></span>
                <a class="dark" href="">
                    0话题收藏
                </a>
            </span>
        </div>
        <span class="glyphicon glyphicon-log-in"></span>
        注册时间
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <span class="glyphicon glyphicon-th-list"></span>
        最近创建的话题
    </div>
    <table class="table table-hover">
    </table>
    <div style="padding: 10px;">
        <a class="dark" href="">查看更多&gt;&gt;</a>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <span class="glyphicon glyphicon-th-list"></span>
        最近参与的话题
    </div>
    <table class="table table-hover">
    </table>
    <div style="padding: 10px;">
        <a class="dark" href="">查看更多&gt;&gt;</a>
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