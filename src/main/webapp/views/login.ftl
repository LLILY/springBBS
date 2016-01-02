<#import "spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登陆页面</title>
   <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/>
   <link href="<@spring.url'/public/css/signIn.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body>
   <div class="container" style="width:450px;border:1px solid black">
      <form id="userInfoForm" name="userInfoForm" class="form-signin" autocomplete="off" method="get"  action = '/springBBS/user/memberLogin'>
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" name="email" class="form-control" value="${email}" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" value="${password}" placeholder="Password" required>
        <p id="loginTip" class="login-tip">${errorMsg}</p>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
		<h2 class="lineH2"></h2>
		<div class="row">
                <div class="col-md-3">
                    <a class="btn-link btn btn-block" href="/springBBS/user/registPage">立即注册</a>
                </div>
                <div class="col-md-3">
                    <a class="btn btn-block " href="../Account/ThirdLoginAuthorize?platformCode=qq">
                        <i class="fa fa-qq"></i>QQ
                    </a>
                </div>
                <div class="col-md-3">
                    <a class="btn btn-block ">
                        <i class="fa fa-weixin"></i>微信
                    </a>
                </div>
                <div class="col-md-3">
                    <a class="btn btn-block">
                        <i class="fa fa-weibo"></i>微博
                    </a>
                </div>
            </div>
    </div> <!-- /container -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<@spring.url'/public/js/module/jquery-2.1.4.js'/>" type="text/javascript"></script>
    <script src="<@spring.url'/public/bootstrap/js/bootstrap.min.js'/>"></script>
    <script src="<@spring.url'/public/js/login.js'/>" type="text/javascript"></script>
  </body>
</html>