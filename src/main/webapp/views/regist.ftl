<#import "spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>注册页面</title>
   <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/>
   <link href="<@spring.url'/public/css/regist.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body>
  
  <div class="header">
        <div class="container">
            <div class="row">
                <div class="logo col-md-4">
                    <h1><a href="">注册 <span class="red">.</span></a></h1>
                </div>
                <div class="links col-md-8">
                    <a class="home" href="" rel="tooltip" data-placement="bottom" data-original-title="Home"></a>
                    <a class="blog" href="" rel="tooltip" data-placement="bottom" data-original-title="Blog"></a>
                </div>
            </div>
        </div>
    </div>

    <div class="register-container container">
        <div class="row">
            <div class="iphone col-md-5">
                <img src="/Content/Images/iphone.png" alt="">
            </div>
            <div class="register col-md-6">
                <form id="RegisterForm" novalidate="novalidate" method="post"  action = '/springBBS/user/regist' onsubmit = "return checkUser();">
                    <h2>Register To <span class="red"><strong>springBBS</strong></span></h2>
                    <label for="Email">邮箱&nbsp;&nbsp;&nbsp;<span id="loginTip" class="login-tip">${errorMsg!""}</span></label>
                    <input type="text" id="Email" name="email" required="" placeholder="键入你的邮箱地址..." value="${email!""}">
                    <label for="UserName">登录用户名</label>
                    <input type="text" id="UserName" name="username" placeholder="键入你的登录用户名..." value="${username!""}">
                    <label for="displayname">昵称</label>
                    <input type="text" id="displayname" name="displayName" placeholder="键入你的显示名称..." value="${displayName!""}">
                    <label for="Password">密码</label>
                    <input type="password" id="Password" name="password" placeholder="键入你的密码..." value="${password!""}">
                    <label for="ConfirmPassword">确认密码</label>
                    <input type="password" id="ConfirmPassword" name="confirmPassword" placeholder="请再次键入你的密码..." value="${password!""}">
                    <button type="submit">注册</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn-link" href="/springBBS/user/loginPage">返回登录</a>
                </form>
            </div>
        </div>
    </div>
    
  	<script src="<@spring.url'/public/js/regist.js'/>" type="text/javascript"></script>
    <script src="<@spring.url'/public/js/module/jquery-2.1.4.js'/>" type="text/javascript"></script>
    <script src="<@spring.url'/public/bootstrap/js/bootstrap.min.js'/>"></script>
  </body>
</html>