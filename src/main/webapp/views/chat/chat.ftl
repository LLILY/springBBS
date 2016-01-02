<#import "../spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
   <script src="<@spring.url'/public/js/module/jquery-2.1.4.js'/>" type="text/javascript"></script>
<script type="text/javascript">
	var  ws;
	var url="ws://localhost:8080/springBBS/chatSocket";
	
	window.onload=connect;
	function connect(){
		 if ('WebSocket' in window) {
             ws = new WebSocket(url);
         } else if ('MozWebSocket' in window) {
             ws = new MozWebSocket(url);
         } else {
             alert('WebSocket is not supported by this browser.');
             return;
         }
		 ws.onmessage=function(event){
			eval("var result="+event.data);
			
			if(result.alert!=undefined){
				$("#content").append(result.alert+"<br/>");
			}
			
			if(result.names!=undefined){
				$("#userList").html("");
				$(result.names).each(function(){
					$("#userList").append(this+"<br/>");
				});
			}
			
			if(result.from!=undefined){
				$("#content").append(result.from+" "+result.date+
						" 说：<br/>"+result.sendMsg+"<br/>");
			}
			
		 };
	}
	
	function  send(){
		var value= $("#msg").val();
		ws.send(value);
	}


</script>
</head>
<body>

	<h3>欢迎  使用本系统！！</h3>

	<div  id="content"  style="
		border: 1px solid black; width: 400px; height: 300px;
		float: left;
	"  ></div>
	<div  id="userList"  style="
		border: 1px solid black; width: 100px; height: 300px;
		float:left;
	"  ></div>

	<div  style="clear: both;" >
		<input id="msg"  /><button  onclick="send();"  >send</button>
	</div>


</body>
</html>