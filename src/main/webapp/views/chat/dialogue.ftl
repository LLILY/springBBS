



<div class='message clearfix'>
	<div class='user-logo'><img src="${(message.sender.avatarUrl)!"" } "></div>
	<div class='wrap-text'>
		<h5 class='clearfix'>\u5f20\u98de</h5>
		<div>${message.sendMsg }</div>
	</div>
	<div class='wrap-ri'>
		<div clsss='clearfix'><span> ${message.createTime?string("yyyy-MM-dd HH:mm:ss")} </span></div>
	</div>
	<div style='clear:both;'></div>
</div>
