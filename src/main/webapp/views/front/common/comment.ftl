<#import "../../spring.ftl" as spring/>
 <link href="<@spring.url'/public/css/face.css'/>" rel="stylesheet" media="screen"/>
 
 <#macro showReply replys>
 	<ul class="ds-children">
 		<#list replys as r>
		   	<li class="ds-post" >
		   		 <div class="ds-post-self" >
			     	<div class="ds-avatar" data-user-id="218196">
			      		<a rel="nofollow author" target="_blank" ><img src="http://tp2.sinaimg.cn/1220149481/50/5651248165/1" alt="苏洋" /></a>
			     	</div>
			     	<div class="ds-comment-body">
				      	<div class="ds-comment-header">
				       		<a class="ds-user-name ds-highlight" >${r.creator.displayName}</a>
				      	</div>
				      	<p>${r.content}</p>
					    <div class="ds-comment-footer ds-comment-actions">
							<span class="ds-time" datetime="2015-12-25T19:25:48+08:00" title="2015年12月25日 下午7:25:48">12月25日</span>
							<a id="replyOthers_${r.id}" class="replyOthers ds-post-reply" href="javascript:void(0);" data-id="${r.id}"  data-name="${r.creator.displayName}"><span class="ds-icon ds-icon-reply"></span>回复</a>
							<a class="ds-post-likes" href="javascript:void(0);"><span class="ds-icon ds-icon-like"></span>顶</a>
							<a class="ds-post-repost" href="javascript:void(0);"><span class="ds-icon ds-icon-share"></span>转发</a>
							<a class="ds-post-report" href="javascript:void(0);"><span class="ds-icon ds-icon-report"></span>举报</a>
						</div>
		     		</div>
		    	</div>
		   </li>
		   <@showReply replys=r.children/>
	   </#list>
	</ul>
 </#macro>
 <ul class="ds-comments">
	 <#list replyVOList as replyVO>
	 	<li class="ds-post" >
			<div class="ds-post-self" >
				<div class="ds-avatar" data-user-id="">
					<a rel="nofollow author" target="_blank" href="http://t.qq.com/llk124042" onclick="this.href='http://soulteary.duoshuo.com/user-url/?user_id=10814355';" title="llk">
						<img src="http://q.qlogo.cn/qqapp/100229475/C06132BEBE4E938F60D73E9EC0955CE4/100" alt="llk">
					</a>
				</div>
				<div class="ds-comment-body">
					<div class="ds-comment-header">
						<a class="ds-user-name ds-highlight" >${replyVO.creator.displayName}</a>
					</div>
					<p>${replyVO.content}</p>
					<div class="ds-comment-footer ds-comment-actions">
						<span class="ds-time" datetime="2015-12-25T19:25:48+08:00" title="2015年12月25日 下午7:25:48">12月25日</span>
						<a id="replyOthers_${replyVO.id}" class="replyOthers ds-post-reply" href="javascript:void(0);" data-id="${replyVO.id}"  data-name="${replyVO.creator.displayName}"><span class="ds-icon ds-icon-reply"></span>回复</a>
						<a class="ds-post-likes" href="javascript:void(0);"><span class="ds-icon ds-icon-like"></span>顶</a>
						<a class="ds-post-repost" href="javascript:void(0);"><span class="ds-icon ds-icon-share"></span>转发</a>
						<a class="ds-post-report" href="javascript:void(0);"><span class="ds-icon ds-icon-report"></span>举报</a>
					</div>
				</div>
			</div>
		</li>
		<@showReply replys=replyVO.children/>
   	</#list>
</ul>
<div class="ds-post-self" >
  </div>
<div id="Smohan_FaceBox">
   <textarea name="text" id="replyContent" class="smohan_text "></textarea>
   <p>
   <a href="javascript:void(0)" class="face" title="表情"></a>
   <button class="button" id="submitReply" data="">发布</button>
   </p>
</div>
<!--/表情盒子-->
<!--解析表情-->
<div id="Zones"></div>

<script src="<@spring.url'/public/js/jquery-1.8.2.min.js'/>" type="text/javascript"></script>
<script src="<@spring.url'/public/js/face.js'/>"></script>
<script src="<@spring.url'/public/js/comment.js'/>"></script>