﻿<%@ page language="java"
         pageEncoding="utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>XX文档系统</title>
    <style>
        #main {
            width: 768px;
            height: 887px;
            border: #83b3d9 2px solid;
            background: #f2f7fb;

        }

        #shut {
            width: 45px;
            height: 30px;
            float: right;
            margin-right: -1px;
        }

        #shut:hover {
        }
    </style>
</head>
<body style="overflow:hidden">
<script type="text/javascript">
    function Save() {
        document.getElementById("PageOfficeCtrl1").WebSave();
    }

    function Close() {
        window.external.close();
    }
</script>
<form id="form1">
    <div id="main">
        <div id="shut"><img src="../../images/close.png" onclick="Close()" title="关闭"/></div>
        <div id="content" style="height:850px;width:768px;overflow-y:hidden;">
            ${pageoffice}
        </div>
    </div>
</form>
</body>
</html>
