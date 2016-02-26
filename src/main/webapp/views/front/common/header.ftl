  <div class="navbar navbar-collapse navbar-inverse" > 
   <ul class="nav navbar-nav"> 
    <li><a href="">博客</a></li> 
    <li><a href="">帖子</a></li> 
    <li><a href="">Blog</a></li> 
    <li><a href="/Log/UpdateLog">日志</a></li> 
    <li><a href="/Video" target=" _blank">资源</a></li> 
   </ul> 
   <form class="navbar-form navbar-left" id="search_form" role="search" method="get" action="http://jfbbs.tomoya.cn/">
                <div class="form-group has-feedback">
                    <input type="text" name="q" class="form-control" style="width: 240px" value="" placeholder="回车搜索" onkeypress="enterSearch(event)">
                    <span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true"></span>
                </div>
            </form>
     <#if !memberId?exists>  
	   <ul class="nav navbar-nav navbar-right"> 
	    <li><a class="btn" href="/springBBS/user/loginPage">登录</a></li> 
	    <li><a class="btn" href="/springBBS/user/registPage">注册</a></li> 
	  </ul> 
   	<#else>  
     	 <ul class="nav navbar-nav navbar-right">
                    <li ><a href="">通知 <span class="badge" id="badge"></span></a></li>
                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                            <img id="avatarImg" src="${(member.getAvatarUrl())!'http://jfbbs.tomoya.cn/static/img/default_avatar.png'}" width="20" style="border-radius: 20px;"/>
                             ${memberName!""}
                            <span class="caret"></span>
                        </a>
                        <span class="dropdown-arrow"></span>
                        <ul class="dropdown-menu">
                            <li><a href="/springBBS/user/home"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;我的</a></li>
                            <li><a href="/springBBS/user/profile?memberId=${memberId}"><span class="glyphicon glyphicon-cog"></span>&nbsp;&nbsp;设置</a></li>
                            <li><a href=""><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;退出</a></li>
                        </ul>
                    </li>
            </ul>
       </#if> 
  </div>
