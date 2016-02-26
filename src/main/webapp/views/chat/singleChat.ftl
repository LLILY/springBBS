<#import "../spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>聊天界面</title>
    <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/> 
   <link href="<@spring.url'/public/css/chat.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body >
  <div class="modal-shiftfix">
  <div class="container-fluid main-content">
        <div class="page-title">
          <h1>聊天窗口</h1>
        </div>
        <div class="row">
          <!-- Conversation -->
          <div class="col-lg-12">
            <div class="widget-container scrollable chat chat-page">
              <div class="contact-list">
                <div class="heading">
                      联系人(15)<i class="icon-plus pull-right"></i>
                </div>
                <ul>
                	<#list friends as myfriend>
	                               <li >
	                               		<#if  member.id == ((myfriend.friend.id)!0)>
	                               			  <a href="#"  class="nav_on" data-id="${(myfriend.friend.id)!0}">
	                               		<#else>
	                               				  <a href="#"  class="" data-id="${(myfriend.friend.id)!0}">
	                               		</#if>
					                  	<img width="30" height="30" src="${(myfriend.friend.avatarUrl)!"http://jfbbs.tomoya.cn/static/img/default_avatar.png" }"">${(myfriend.friend.getDisplayName())!"" } <i class="icon-circle text-danger"></i></a>
					                </li>
                       	</#list>
              
               
                </ul>
              </div>
              <div class="heading">
                <i class="icon-comments"></i>与 <a href="#">${(member.displayName)!"" }</a> 的聊天<i class="icon-cog pull-right"></i><i class="icon-smile pull-right"></i>
              </div>
              <div class="widget-content padded">
                <ul id="messgaBox">
                <#list messageList as message >
                	<#if message.sender.id!=memberId>
						<li>
		                    <img width="30" height="30" src="${(message.sender.avatarUrl)!"http://jfbbs.tomoya.cn/static/img/default_avatar.png" } ">
		                    <div class="bubble">
		                      <a class="user-name" href="#">${(message.sender.getDisplayName())!""}</a>
		                      <p class="message">
		                      		${message.sendMsg }
		                      </p>
		                      <p class="time">
		                        ${message.createTime?string("yyyy-MM-dd HH:mm:ss")}
		                      </p>
		                    </div>
		                  </li>
					<#else >
							<li class="current-user">
			                    <img width="30" height="30" src="${(message.sender.avatarUrl)!"http://jfbbs.tomoya.cn/static/img/default_avatar.png" } ">
			                    <div class="bubble">
			                      <a class="user-name" href="#">${(message.sender.getDisplayName())!""}</a>
			                      <p class="message">
			                      	${message.sendMsg }
			                      </p>
			                      <p class="time">
			                      ${message.createTime?string("yyyy-MM-dd HH:mm:ss")}
			                      </p>
			                    </div>
			                  </li>
					</#if>
                </#list>
                 

                </ul>
              </div>
              <div id="Smohan_FaceBox">
              </div>
              <div class="post-message" id="Smohan_FaceBox">
              		<a href="javascript:void(0)" class="face" title="表情"></a>
                	<input class="form-control" placeholder="输入需要发送的信息…" type="text" id="msgContent">
               		 <input type="submit" value="发送" id="sendBtn">
              </div>
            </div>
          </div>
        </div>
      </div>
   </div>

    <script src="<@spring.url'/public/js/module/jquery-2.1.4.js'/>" type="text/javascript"></script>
    <script src="<@spring.url'/public/js/chat/chat.js'/>" type="text/javascript"></script>
    <script type="text/javascript">
	var  ws;
	var url="ws://localhost:8080/springBBS/chatSocket/"+${memberId};
	
	window.onload=connect;
	function connect(){
		 if ('WebSocket' in window) {
             ws = new WebSocket(url);
             console.log("连接成功");
         } else if ('MozWebSocket' in window) {
             ws = new MozWebSocket(url);
         } else {
             alert('WebSocket is not supported by this browser.');
             return;
         }
		 ws.onmessage=function(event){
			var result=JSON.parse(event.data);
			if(result !=undefined){
				if(messageBox.find(".message").length>0){
					messageBox.children().last().after(appendMessage(result));
        		}else{
        			messageBox.append(appendMessage(result,false));
        			message();
        		}
        		$(".chat01_content").scrollTop(messageBox.height());
        		$("#textarea").val(""), message();
			}
			
			
		 };
	}

</script>
  </body>
</html>