<#macro html title description page_tab="" sidebar_user_info="" sidebar_topic_user="" sidebar_checkin="" sidebar_create=""
    sidebar_scoretop="" sidebar_md_help="" sidebar_create_info="" sidebar_about="" sidebar_other_topic="" sidebar_not_reply_topic=""
    sidebar_jfbbs_run_status="">
<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
    <title>${title!"JFinal社区"}</title>
    <meta name="description" content="${description!} - ${siteTitle!}">
    <meta name="keywords" content="java,社区,jfinal,jfinal社区,JFinal社区,java社区,java论坛,论坛,bootstrap,flatui"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=0.1">
    <meta name="baidu-site-verification" content="bpIBr3OKJ6"/>
    <meta property="qc:admins" content="100353765161422364117051246375"/>
    <meta property="wb:webmaster" content="e8873adac5bd1ad8"/>
    <meta name="google-site-verification" content="CJIBvG4L5-mV4jvuRXv6irwZ4dL4HuHfWbEbuLcJWmo"/>

    <script type="text/javascript" name="baidu-tc-cerfication" data-appid="6362443" src="http://apps.bdimg.com/cloudaapi/lightapp.js"></script>

    <link href="/static/bootstrap/css/bootstrap.min.css?v=20150604" rel="stylesheet">
    <link href="/static/bootstrap/css/flat-ui.css?v=20150604" rel="stylesheet">
    <link href="/static/css/style.css?v=20150604" rel="stylesheet">
    <script type="text/javascript" src="/static/bootstrap/js/jquery.min.js?v=20150604"></script>
    <script type="text/javascript" src="/static/bootstrap/js/jquery.caret.min.js?v=20150604"></script>
    <script type="text/javascript" src="/static/bootstrap/js/bootstrap.min.js?v=20150604"></script>
    <script type="text/javascript" src="/static/bootstrap/js/bootstrap-paginator.js?v=20150604"></script>
    <script type="text/javascript" src="/static/bootstrap/js/bootstrap-hover-dropdown.min.js"></script>

    <script type="text/javascript" src="/static/js/jfinalbbs.js?v=20150604"></script>
    <style>
        body {
            background: url("http://sass-lang.com/assets/img/textures/grey-prism-63478a91.svg") center;
        }
        /*让网站变灰色*/
        /*html {
            filter: grayscale(100%);
            -webkit-filter: grayscale(100%);
            -moz-filter: grayscale(100%);
            -ms-filter: grayscale(100%);
            -o-filter: grayscale(100%);
            filter: url("data:image/svg+xml;utf8,<svg xmlns=\"http://www.w3.org/2000/svg\"><filter id=\"grayscale\"><feColorMatrix type=\"matrix\" values=\"0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\"/></filter></svg>#grayscale");
            filter: progid:DXImageTransform.Microsoft.BasicImage(grayscale=1);
            filter: gray;
            -webkit-filter: grayscale(1)
        }*/
        #backtotop {
            width: 24px;
            color: gray;
            padding: 12px 0 12px 5px;
            display: none;
            position: fixed;
            cursor: pointer;
            text-align: center;
            z-index: 20;
            background-color: #fff;
            display: none;
            top: 502px;
            right: 0px;
        }
    </style>
</head>
<body style="background-color: #e1e1e1;">
<#--页面头部信息-->
    <#include "/views/front/commom/header.ftl"/>
    <@header page_tab=page_tab/>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <#nested>
        </div>
        <div class="col-md-3">
            <div id="jf_sidebar">
                <#include "/ftl/front/common/sidebar.html"/>
                <@sidebar sidebar_user_info=sidebar_user_info sidebar_topic_user=sidebar_topic_user sidebar_checkin=sidebar_checkin
                    sidebar_create=sidebar_create sidebar_scoretop=sidebar_scoretop sidebar_md_help=sidebar_md_help
                    sidebar_create_info=sidebar_create_info sidebar_about=sidebar_about sidebar_other_topic=sidebar_other_topic
                    sidebar_not_reply_topic=sidebar_not_reply_topic sidebar_jfbbs_run_status=sidebar_jfbbs_run_status/>
            </div>
        </div>
    </div>
</div>
<div id="backtotop">回到顶部</div>
<script type="text/javascript">
    $(document).ready(function () {
        var n = $("#backtotop");
        n.click(function () {
            return $("html,body").animate({
                scrollTop: 0
            });
        });
        $(window).scroll(function () {
            var t = $(window).scrollTop();
            t > 200 ? n.fadeIn() : n.fadeOut()
        });
        <#if session.user??>
            // 定时取未读消息
            var htmlTitle = document.title;
            getCountnotread(htmlTitle);
            setInterval(function () {
                getCountnotread(htmlTitle);
            }, 3 * 60 * 1000);
        </#if>

        function getCountnotread(_htmlTitle) {
            $.ajax({
                url: "/notification/countnotread",
                async: false,
                cache: false,
                type: 'post',
                dataType: "json",
                data: {},
                success: function (data) {
                    if (data.code == '200') {
                        if (data.detail > 0) {
                            $("#badge").html(data.detail);
                            if (data.detail == 0) {
                                document.title = _htmlTitle;
                            } else if (data.detail > 0) {
                                document.title = "(" + data.detail + ") " + _htmlTitle;
                            }
                        }
                    }
                }
            });
        }
    });
</script>
<#--footer-->
    <#include "/views/front/commom/footer.ftl"/>
    <@footer/>
</body>
</html>
</#macro>