function appendMessage(message,flag){
	  var messageHtml='<li class="'+(flag?"current-user":"") +'"> <img width="30" height="30" src="'+message.senderImg+' ">'+
		                    	'<div class="bubble"><a class="user-name" href="#">'+message.senderName+'</a>'+
		                    	'<p class="message">'+message.sendMsg +'</p>'+
		                    	'<p class="time">' + message.createTime +'</p>'+
		                    '</div> </li>';
	  return messageHtml;
}

function message() {
}
	var messageBox = 	 $("#messgaBox" );
	var receiverId=$(".contact-list").find("li .nav_on").attr("data-id");
	$(".modal-shiftfix").on('click',"#sendBtn",function(){
	    var mssage= $("#msgContent").val();
	    if(message==""){
	    	alert("发送的内容不能为空!");
	    	return;
	    }
	    $.ajax({
	    	url:'http://localhost:8080/springBBS/chat/sendMessage',
	    	data:{
	    		personId:receiverId,
	    		sendMsg:mssage
	    	},
	    	success:function(json){
	    		var result=JSON.parse(json);
	    		if(messageBox.find("li").length>0){
					messageBox.children().last().after(appendMessage(result,true));
	    		}else{
	    			messageBox.append(appendMessage(result,true));
	    		}
	    		$(".chat01_content").scrollTop(messageBox.height());
	    		$("#msgContent").val(""); 
	    	}
	    })
	})

     document.onkeydown=function(event){
            var e = event || window.event || arguments.callee.caller.arguments[0];
             if(e && e.keyCode==13){ // enter 键
            	$("#sendBtn").click();
            }
        };  
      

