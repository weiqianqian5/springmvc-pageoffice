﻿<%@ page language="java" pageEncoding="utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title></title>
    <link href="../../css/CreateWord/csstg.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        function Save() {
            document.getElementById("PageOfficeCtrl1").WebSave();
        }

    </script>
</head>
<body>
<form id="form2">
    <div id="header">
        <div style="float: left; margin-left: 20px;">
            <img src="../../css/CreateWord/logo.jpg" height="30"/></div>
        <ul>
            <li><a href="#">卓正网站</a></li>
            <li><a href="#">客户问吧</a></li>
            <li><a href="#">在线帮助</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
    </div>
    <div id="content">
        <div id="textcontent" style="width: 1000px; height: 800px;">
            <div class="flow4">
                <a href="#" onclick="window.external.close();">
                    <img alt="返回" src="../../css/CreateWord/return.gif" border="0"/>文件列表</a>&nbsp;&nbsp;<strong>文档主题：</strong>
                <span style="color: Red;">
                        ${subject}
                        </span> <span style="width: 100px;">
                        </span>
            </div>
            <!-- ****************************PageOffice 组件客户端编程************************************* -->
            <script type="text/javascript">
                function Save() {
                    document.getElementById("PageOfficeCtrl1").WebSave();
                }
            </script>
            <!-- ****************************PageOffice 组件客户端编程结束************************************* -->
            ${pageoffice}
        </div>
    </div>
    <div id="footer">
        <hr width="1000"/>
        <div>
            Copyright (c) 2019 北京卓正志远软件有限公司
        </div>
    </div>
</form>
</body>
</html>
