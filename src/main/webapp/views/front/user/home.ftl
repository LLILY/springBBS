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
            <img src="${(member.avatarUrl)!""}" width="48">
        </a>&nbsp;
        <span><a href="">${(member.displayName)!""}</a></span>
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
<ul id="myTab" class="nav nav-tabs">
   <li class="active"><a href="#bbs" data-toggle="tab">博客</a></li>
   <li><a href="#post" data-toggle="tab">帖子</a></li>
</ul>
<div id="myTabContent" class="tab-content" style="border:#e8e8e8 1px solid"> 
	  <div class="tab-pane fade in active" id="bbs" >
     			<div class="panel panel-default mt5" >
				    <div class="panel-heading">
				        <span class="glyphicon glyphicon-th-list"></span>
				        最近创建的博客
				    </div>
				    <table class="table table-hover">
				    <#list postList as post>
				    		<tr>
				                <td style="padding-left: 10px; width: 45px;">
				                    <a href="/springBBS/user/home">
				                        <img src="http://jfbbs.tomoya.cn/static/img/default_avatar.png" onerror="this.src='http://jfbbs.tomoya.cn/static/img/default_avatar.png'" title="" width="30">
				                    </a>
				                </td>
				                <td style="width: 70px;text-align: center;">
				                    <span title="回复数">0</span>/<span title="点击数">1</span>
				                </td>
				                <td style="width: 40px;">
				                        <span class="label label-default">
				                        ${post.tag!""}
				                        </span>
				                </td>
				                <td><a href="/springBBS/post/view?postId=${post.id}">${(post.title)!""}</a></td>
				                <td align="right">
				                </td>
				                <td style="width: 70px;">
				                    <script></script>刚刚
				                </td>
				            </tr>
				       </#list>
				    </table>
				    <div style="padding: 10px;">
				        <a class="dark" href="">查看更多&gt;&gt;</a>
				    </div>
				</div>
				<div class="panel panel-default">
				    <div class="panel-heading">
				        <span class="glyphicon glyphicon-th-list"></span>
				        最近参与的博客
				    </div>
				    <table class="table table-hover">
				    </table>
				    <div style="padding: 10px;">
				        <a class="dark" href="">查看更多&gt;&gt;</a>
				    </div>
				</div>
  	 </div>
   <div class="tab-pane fade" id="post">
     		<div class="panel panel-default mt5" >
				    <div class="panel-heading">
				        <span class="glyphicon glyphicon-th-list"></span>
				        最近创建的博客
				    </div>
				    <table class="table table-hover">
				    		<tr>
				                <td style="padding-left: 10px; width: 45px;">
				                    <a href="http://jfbbs.tomoya.cn/user/e45d7fe8e45849149a045f592efa0ba4">
				                        <img src="http://jfbbs.tomoya.cn/static/img/default_avatar.png" onerror="this.src='http://jfbbs.tomoya.cn/static/img/default_avatar.png'" title="" width="30">
				                    </a>
				                </td>
				                <td style="width: 70px;text-align: center;">
				                    <span title="回复数">0</span>/<span title="点击数">1</span>
				                </td>
				                <td style="width: 40px;">
				                        <span class="label label-default">
				                        灌水
				                        </span>
				                </td>
				                <td><a href="http://jfbbs.tomoya.cn/topic/e17bab4c4597418eba48227585c84c7a.html">markdown 是用的插件还是自己模拟实现的？</a></td>
				                <td align="right">
				                </td>
				                <td style="width: 70px;">
				                    <script>document.write(formatDateTime('2015-12-28 21:18:42'))</script>刚刚
				                </td>
				               </tr>
				    </table>
				    <div style="padding: 10px;">
				        <a class="dark" href="">查看更多&gt;&gt;</a>
				    </div>
				</div>
				<div class="panel panel-default">
				    <div class="panel-heading">
				        <span class="glyphicon glyphicon-th-list"></span>
				        最近参与的博客
				    </div>
				    <table class="table table-hover">
				    </table>
				    <div style="padding: 10px;">
				        <a class="dark" href="">查看更多&gt;&gt;</a>
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