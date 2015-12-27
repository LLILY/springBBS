<#import "../../spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>发布博客</title>
   <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/>
      <link href="<@spring.url'/public/bootstrap/css/bootstrap-theme.css'/>" rel="stylesheet" media="screen"/>
   <link href="<@spring.url'/public/css/index.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body>
    <#include "/front/common/header.ftl">
    <div class="container"> 
   <div class="row"> 
    <div class="col-md-9" style="padding-right: 5px;"> 
     <div class="panel panel-default"> 
      <div class="panel-heading"> 
       <ol class="breadcrumb"> 
        <li><a href="/">首页</a></li> 
        <li class="active">发布话题</li> 
       </ol> 
      </div> 
      <div class="panel-body"> 
       <form id="create_form" action="" method="post"> 
        <select name="sid" id="sid" class="form-control" style="width: 20%; margin-bottom: 5px;"> 
        	<option value="8">灌水</option> 
        	<option value="7">资讯</option> 
        	<option value="9">分享</option> 
        	<option value="1">问答</option>
        	 <option value="2">博客</option> 
        	 <option value="10">二手</option> 
        	 <option value="11">招聘</option> 
        	 <option value="12">私活</option> 
       </select> 
       <div>
          <select name="sid" id="sid" class="form-control" style="float:left;width: 20%; margin-bottom: 5px;margin-right:0.5%"> 
        	<option value="8">原创</option> 
        	<option value="7">转载</option> 
        	<option value="9">翻译</option> 
       </select> 
        <input type="text" placeholder="标题字数10字以上" id="title" name="title" class="form-control" style="width: 79.5%;margin-bottom: 5px;" /> 
       </div>
        <input type="text" placeholder="原文地址（原创可不写）" id="original_url" name="original_url" class="form-control" style="margin-bottom: 5px;" /> 
        <div style="margin-bottom: 5px;"> 
         <textarea id="content" name="content" class="form-control" style="height: 400px;"></textarea> 
        </div> 
        <input type="button"  value="提  交" class="btn btn-primary btn-sm" /> 
        <input type="button"  value="预  览" class="btn btn-primary btn-sm pull-right" /> 
        <div id="preview_content" class="hidden"></div> 
       </form> 
      </div> 
     </div> 
  
    </div> 
    <div class="col-md-3" style="padding-left: 5px;"> 
     <div id="jf_sidebar"> 
      <div class="panel panel-default"> 
       <div class="panel-heading"> 
        <span class="glyphicon glyphicon-paperclip"></span> Markdown 语法参考 
       </div> 
       <div class="panel-body">
       <p  style="color:red">MarkDown暂时未实现，以后定要实现</p>
         ### 单行的标题
        <br /> **粗体**
        <br /> `console.log('行内代码')`
        <br /> ```js\n code \n``` 标记代码块
        <br /> [内容](链接)
        <br /> ![文字说明](图片链接)
        <br /> 
        <a href="http://www.jianshu.com/p/1e402922ee32" target="_blank">还不会怎么办?</a> 
       </div> 
      </div> 
      <div class="panel panel-default"> 
       <div class="panel-heading"> 
        <span class="glyphicon glyphicon-paperclip"></span> 话题发布指南 
       </div> 
       <div class="panel-body">
         发布话题 
        <b style="color: red; font-size: 16px;">奖励3</b> 积分，但是被管理员删除话题将会扣除作者5积分
        <br /> 尽量把话题要点浓缩到标题里
        <br /> 给话题选择合适的板块方便查找浏览
        <br /> 
       </div> 
      </div> 
     </div> 
    </div> 
   </div> 
  </div> 
<script src="<@spring.url'/public/xheditor-1.1.14/jquery/jquery-1.4.4.min.js'/>" type="text/javascript"></script>
<script src="<@spring.url'/public/xheditor-1.1.14/xheditor-1.1.14-zh-cn.min.js'/>" type="text/javascript"></script>
<style type="text/css">  
     /* 增加插入代码工具图标 */  
    .btnCode {  
        background: transparent url("<@spring.url'/public/img/code.png'/>") no-repeat 0px 0px;  margin-top:3px;
        background-position: 3px 2px;  
    }  
</style> 
<script type="text/javascript">
  $(function(){  
	 var plugins={  
        Code:{c:'btnCode',t:'插入代码',h:1,e:function(){  
            var _this=this;  
            var htmlCode="<div>编程语言<select id='xheCodeType'>";  
                htmlCode+="<option value='html'>HTML/XML</option>";  
                htmlCode+="<option value='js'>Javascript</option>";  
                htmlCode+="<option value='css'>CSS</option>";  
                htmlCode+="<option value='php'>PHP</option>";  
                htmlCode+="<option value='java'>Java</option>";  
                htmlCode+="<option value='py'>Python</option>";  
                htmlCode+="<option value='pl'>Perl</option>";  
                htmlCode+="<option value='rb'>Ruby</option>";  
                htmlCode+="<option value='cs'>C#</option>";  
                htmlCode+="<option value='c'>C++/C</option>";  
                htmlCode+="<option value='vb'>VB/ASP</option>";  
                htmlCode+="<option value=''>其它</option>";  
                htmlCode+="</select></div><div>";  
                htmlCode+="<textarea id='xheCodeValue' wrap='soft' spellcheck='false' style='width:300px;height:100px;' />";  
                htmlCode+="</div><div style='text-align:right;'><input type='button' id='xheSave' value='确定' /></div>";           
            var jCode=$(htmlCode),jType=$('#xheCodeType',jCode),jValue=$('#xheCodeValue',jCode),jSave=$('#xheSave',jCode);  
            jSave.click(function(){  
                _this.loadBookmark();  
                _this.pasteHTML('<pre class="brush: '+jType.val()+'">'+_this.domEncode(jValue.val())+'</pre> ');  
                _this.hidePanel();  
                return false;     
            });  
            _this.saveBookmark();  
            _this.showDialog(jCode);  
        }},  
              
        };  
	  $('#content').xheditor({  
            plugins:plugins,//使用我们定义的插件    
            loadCSS:'<style>pre{margin-left:2em;border-left:3px solid #CCC;padding:0 1em;}</style>',  
        });  
    }) 
function submitForm(){$('#frmDemo').submit();}
</script>
  </body>
  </html>