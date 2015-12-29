<#import "../../spring.ftl" as spring/>
 <link href="<@spring.url'/public/css/face.css'/>" rel="stylesheet" media="screen"/>
 
<div id="Smohan_FaceBox">
   <textarea name="text" id="Smohan_text" class="smohan_text"></textarea>
   <p>
   <a href="javascript:void(0)" class="face" title="表情"></a>
   <button class="button" id="Smohan_Showface">显示表情</button>
   </p>
</div>

<script src="<@spring.url'/public/js/module/jquery-2.1.4.js'/>" type="text/javascript"></script>
<script src="<@spring.url'/public/js/face.js'/>"></script>