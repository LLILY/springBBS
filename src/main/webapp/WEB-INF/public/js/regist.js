function checkUser(){
   var email =$("#Email").val(),username=$("#UserName").val(),displayname=$("#displayname").val(),
   	password=$("#Password").val(),confirmPassword=$("#ConfirmPassword").val();
   if(email.length==0 ){
	   alert("邮箱不能为空");
	   return false;
   }
   var filter  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
   if (!filter.test(email)){ 
	   alert('您的电子邮件格式不正确');
	   return false;
   }
   if(username.length==0 ){
	   alert("用户名不能为空");
	   return false;
   }
   if(displayname.length==0 ){
	   alert("显示名称不能为空");
	   return false;
   }
   if(password.length==0 ){
	   alert("密码不能为空");
	   return false;
   }
   if(confirmPassword.length==0 ){
	   alert("确认密码不能为空");
	   return false;
   }
   if(password!=confirmPassword ){
	   alert("两次密码不一致");
	   return false;
   }else{
	   return true;
   }
}
