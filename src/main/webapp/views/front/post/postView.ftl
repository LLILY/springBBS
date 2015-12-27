<#import "../../spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>发布博客</title>
   <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/>
      <link href="<@spring.url'/public/bootstrap/css/bootstrap-theme.css'/>" rel="stylesheet" media="screen"/>
   <link href="<@spring.url'/public/css/bbs.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body>
    <#include "/front/common/header.ftl">
    <div class="container-fluid main-container" id="J_main-container">
    	<div class="row">
			   <div class="col-md-12 post-container">
			    <h2 class="post-title"><a href="" rel="bookmark">天下武功，唯快不破</a></h2>
			    <div class="meta-box">
			     <span class="m-post-date"><i class="fa fa-calendar-o"></i> 2015年1月10日</span>
			     <span class="comments-link"><a href="" class="ds-thread-count" data-thread-key="9378" title="Comment on 天下武功，唯快不破" target="_self">27条评论</a></span>
			    </div>
			    <div class="post-content">
			    	<p>不知道从什么时候开始，不管是写独立博客，还是网络应用，甚至写托管博客的人都会朝着“大”网站看齐，去追求网站的响应速度，通俗点说，就是白屏时间，因为据各种报告说，网站打开速度更快一些，带来的用户体验就更好一些，从而带来更多的附加利益。但是对于用户来说，快，并不是简简单单请求数目尽可能少，和服务器吞吐能力尽可能大。那么，怎么快？</p>
			    
			    </div>
			    <div class="meta-box">
			     <span class="cat-links"><i class="fa fa-navicon"></i><b>分类:</b><a href="" rel="category tag" target="_self">WEB</a>, <a href="" rel="category tag" target="_self">我的总结</a></span>
			     <span class="tag-links"><i class="fa fa-tags"></i><b>标签:</b><a href="" rel="tag" target="_self">前端优化</a>, <a href="" rel="tag" target="_self">服务器优化</a>, <a href="" rel="tag" target="_self">网站速度</a></span>
			    </div>
			   </div>
		</div>
		
		
		 <div class="row page-comments-container">
			   <div class="col-md-12">
			   
			    </div>
   		</div>
    
    </div>
    </body>
    </html>