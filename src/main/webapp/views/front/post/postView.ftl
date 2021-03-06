<#import "../../spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>博客</title>
   <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/>
      <link href="<@spring.url'/public/bootstrap/css/bootstrap-theme.css'/>" rel="stylesheet" media="screen"/>
   <link href="<@spring.url'/public/css/bbs.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body>
    <#include "/front/common/header.ftl">
    <div class="container-fluid main-container" id="J_main-container">
    	<div class="row">
    			<#include "/front/common/rightSide.ftl">
			   <div id="postDiv" class="col-md-9 post-container" data="${post.id}">
			    	<h2 class="post-title"><a href="" rel="bookmark">${post.title}</a></h2>
				    <div class="meta-box">
				     	 <span class="m-post-date"><i class="fa fa-calendar-o"></i> 2015年1月10日</span>
				    	 <span class="comments-link"><a href="" class="ds-thread-count" data-thread-key="9378" title="Comment on 天下武功，唯快不破" target="_self">27条评论</a></span>
				    </div>
				    <div class="post-content">
				    	<p>${(post.content)!""}</p>
				    </div>
				    <div class="meta-box">
				     <span class="cat-links"><i class="fa fa-navicon"></i><b>分类:</b><a href="" rel="category tag" target="_self">WEB</a>, <a href="" rel="category tag" target="_self">我的总结</a></span>
				     <span class="tag-links"><i class="fa fa-tags"></i><b>标签:</b>${post.tag}</span>
				    </div>
				    <div class="row page-comments-container">
				   <div class="col-md-12">
				   		<#include "/front/common/comment.ftl">
				    </div>
	   			</div>
			</div>
	 </div>
	
   </div>
    </body>
    </html>