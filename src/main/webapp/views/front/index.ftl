<#import "../spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>注册页面</title>
   <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/>
   <link href="<@spring.url'/public/css/index.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body>
  <#include "/front/common/header.ftl">
   <div class="container" style="margin-top:55px; text-align:left;"> 
   
 <div class="col-md-9" style="padding-right: 5px;">
   <font color="white">
    <div class="dayTitle"> 
     <!-- <a id="homepage1_HomePageDays_ctl00_ImageLink" href="http://www.cnblogs.com/aehyok/">置顶随笔</a> -->
    </div></font> 
     <#list postList as post>
          <article class="panel post tag-ghost-post tag-bae tag-sqlite" data-scroll-reveal="enter bottom"> 
		    <div class="postTitle"> 
		    	<a id="homepage1_HomePageDays_ctl00_DayList_TitleUrl_0" class="postTitle2" href="http://www.cnblogs.com/aehyok/p/4122201.html">${(post.title)!""}</a> 
		    </div> 
		    <h5>
		    	<div class="postCon">
		        	<div class="c_b_p_desc">
	     	  	    	${(post.content)!""}
		            	<a href="/springBBS/post/view?postId=${post.id}"" class="c_b_p_desc_readmore">阅读全文</a>
		      		</div>
		     	</div>
	     	</h5> 
		    <h5>
			    <div class="postDesc">
			    	发布于 @ ${post.createTime} aehyok 阅读(6188) 评论(93) 
			    	 <#if memberId?exists && post.creator.id==memberId>
				    	<a href="/springBBS/post/edit?postId=${post.id}" rel="nofollow">编辑</a>
			    	 </#if>
			   	</div>
		   	</h5> 
		 </article> 
     </#list>
  </div> 
  	  <#include "/front/common/sidebar.ftl">
   </div>
    <script src="<@spring.url'/public/js/module/jquery-2.1.4.js'/>" type="text/javascript"></script>
    <script src="<@spring.url'/public/bootstrap/js/bootstrap.min.js'/>"></script>
    <script src="<@spring.url'/public/js/module/bootstrap-hover-dropdown.min.js'/>"></script>
  </body>
</html>