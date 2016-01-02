<#import "../spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登陆页面</title>
   <!-- <link href="<@spring.url'/public/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" media="screen"/> -->
   <link href="<@spring.url'/public/css/chat.css'/>" rel="stylesheet" media="screen"/>
</head>
  <body>
  	   <div class="content">
        <div class="chatBox">
            <div class="chatLeft">
                <div class="chat01">
                    <div class="chat01_title">
                        <ul class="talkTo">
                            <li><a href="javascript:;">王旭</a></li></ul>
                        <a class="close_btn" href="javascript:;"></a>
                    </div>
                    <div class="chat01_content">
                        <div class="message_box mes1">
                        </div>
                        <div class="message_box mes2">
                        </div>
                        <div class="message_box mes3" style="display: block;">
                        </div>
                        <div class="message_box mes4">
                        </div>
                        <div class="message_box mes5">
                        </div>
                        <div class="message_box mes6">
                        </div>
                        <div class="message_box mes7">
                        </div>
                        <div class="message_box mes8">
                        </div>
                        <div class="message_box mes9">
                        </div>
                        <div class="message_box mes10">
                        </div>
                    </div>
                </div>
                <div class="chat02">
                    <div class="chat02_title">
                        <a class="chat02_title_btn ctb01" href="javascript:;"></a><a class="chat02_title_btn ctb02"
                            href="javascript:;" title="选择文件">
                            <embed width="15" height="16" flashvars="swfid=2556975203&amp;maxSumSize=50&amp;maxFileSize=50&amp;maxFileNum=1&amp;multiSelect=0&amp;uploadAPI=http%3A%2F%2Fupload.api.weibo.com%2F2%2Fmss%2Fupload.json%3Fsource%3D209678993%26tuid%3D1887188824&amp;initFun=STK.webim.ui.chatWindow.msgToolBar.upload.initFun&amp;sucFun=STK.webim.ui.chatWindow.msgToolBar.upload.sucFun&amp;errFun=STK.webim.ui.chatWindow.msgToolBar.upload.errFun&amp;beginFun=STK.webim.ui.chatWindow.msgToolBar.upload.beginFun&amp;showTipFun=STK.webim.ui.chatWindow.msgToolBar.upload.showTipFun&amp;hiddenTipFun=STK.webim.ui.chatWindow.msgToolBar.upload.hiddenTipFun&amp;areaInfo=0-16|12-16&amp;fExt=*.jpg;*.gif;*.jpeg;*.png|*&amp;fExtDec=选择图片|选择文件"
                                data="upload.swf" wmode="transparent" bgcolor="" allowscriptaccess="always" allowfullscreen="true"
                                scale="noScale" menu="false" type="application/x-shockwave-flash" src="http://service.weibo.com/staticjs/tools/upload.swf?v=36c9997f1313d1c4"
                                id="swf_3140">
                        </a><a class="chat02_title_btn ctb03" href="javascript:;" title="选择附件">
                            <embed width="15" height="16" flashvars="swfid=2556975203&amp;maxSumSize=50&amp;maxFileSize=50&amp;maxFileNum=1&amp;multiSelect=0&amp;uploadAPI=http%3A%2F%2Fupload.api.weibo.com%2F2%2Fmss%2Fupload.json%3Fsource%3D209678993%26tuid%3D1887188824&amp;initFun=STK.webim.ui.chatWindow.msgToolBar.upload.initFun&amp;sucFun=STK.webim.ui.chatWindow.msgToolBar.upload.sucFun&amp;errFun=STK.webim.ui.chatWindow.msgToolBar.upload.errFun&amp;beginFun=STK.webim.ui.chatWindow.msgToolBar.upload.beginFun&amp;showTipFun=STK.webim.ui.chatWindow.msgToolBar.upload.showTipFun&amp;hiddenTipFun=STK.webim.ui.chatWindow.msgToolBar.upload.hiddenTipFun&amp;areaInfo=0-16|12-16&amp;fExt=*.jpg;*.gif;*.jpeg;*.png|*&amp;fExtDec=选择图片|选择文件"
                                data="upload.swf" wmode="transparent" bgcolor="" allowscriptaccess="always" allowfullscreen="true"
                                scale="noScale" menu="false" type="application/x-shockwave-flash" src="http://service.weibo.com/staticjs/tools/upload.swf?v=36c9997f1313d1c4"
                                id="swf_3140">
                        </a>
                        <label class="chat02_title_t">
                            <a href="chat.htm" target="_blank">聊天记录</a></label>
                        <div class="wl_faces_box">
                            <div class="wl_faces_content">
                                <div class="title">
                                    <ul>
                                        <li class="title_name">常用表情</li><li class="wl_faces_close"><span>&nbsp;</span></li></ul>
                                </div>
                                <div class="wl_faces_main">
                                    <ul>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_01.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_02.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_03.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_04.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_05.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_06.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_07.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_08.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_09.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_10.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_11.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_12.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_13.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_14.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_15.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_16.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_17.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_18.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_19.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_20.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_21.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_22.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_23.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_24.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_25.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_26.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_27.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_28.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_29.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_30.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_31.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_32.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_33.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_34.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_35.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_36.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_37.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_38.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_39.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_40.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_41.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_42.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_43.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_44.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_45.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_46.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_47.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_48.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_49.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_50.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_51.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_52.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_53.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_54.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_55.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_56.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_57.gif" /></a></li>
                                        <li><a href="javascript:;">
                                            <img src="../public/img/chat/emo_58.gif" /></a></li><li><a href="javascript:;">
                                                <img src="../public/img/chat/emo_59.gif" /></a></li><li><a href="javascript:;">
                                                    <img src="../public/img/chat/emo_60.gif" /></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="wlf_icon">
                            </div>
                        </div>
                    </div>
                    <div class="chat02_content">
                        <textarea id="textarea"></textarea>
                    </div>
                    <div class="chat02_bar">
                        <ul>
                            <li style="right: 5px; top: 5px;"><a href="javascript:;">
                                <img src="../public/img/chat/send_btn.jpg"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="chatRight">
                <div class="chat03">
                    <div class="chat03_title">
                        <label class="chat03_title_t">
                            成员列表</label>
                    </div>
                    <div class="chat03_content">
                        <ul>
                            <li>
                                <label class="online">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2013.jpg"></a><a href="javascript:;" class="chat03_name">刘秀</a>
                            </li>
                            <li>
                                <label class="offline">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2014.jpg"></a><a href="javascript:;" class="chat03_name">陈诚</a>
                            </li>
                            <li class="choosed">
                                <label class="offline">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2015.jpg"></a><a href="javascript:;" class="chat03_name">王旭</a>
                            </li>
                            <li>
                                <label class="offline">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2016.jpg"></a><a href="javascript:;" class="chat03_name">张灵</a>
                            </li>
                            <li>
                                <label class="online">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2017.jpg"></a><a href="javascript:;" class="chat03_name">吴敬</a>
                            </li>
                            <li>
                                <label class="offline">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2018.jpg"></a><a href="javascript:;" class="chat03_name">王海东</a>
                            </li>
                            <li>
                                <label class="offline">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2019.jpg"></a><a href="javascript:;" class="chat03_name">郑小勇</a>
                            </li>
                            <li>
                                <label class="online">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2020.jpg"></a><a href="javascript:;" class="chat03_name">张珊珊</a>
                            </li>
                            <li>
                                <label class="offline">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2021.jpg"></a><a href="javascript:;" class="chat03_name">刘强</a>
                            </li>
                            <li>
                                <label class="offline">
                                </label>
                                <a href="javascript:;">
                                    <img src="../public/img/chat/head/2022.jpg"></a><a href="javascript:;" class="chat03_name">程海斌</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div style="clear: both;">
            </div>
        </div>
    </div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p></p>
<p></p>
</div>

  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/strophe.js/1.2.3/strophe.js"></script>
    <script src="<@spring.url'/public/js/module/jquery-2.1.4.js'/>" type="text/javascript"></script>
    <script src="<@spring.url'/public/bootstrap/js/bootstrap.min.js'/>"></script>
    <script src="<@spring.url'/public/js/chat/chat.js'/>" type="text/javascript"></script>
  </body>
</html>