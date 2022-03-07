﻿<%@ page language="java" pageEncoding="utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>无标题页</title>
    <!--pageoffice.js文件一定要引用-->
    <script type="text/javascript" src="../pageoffice.js"></script>
</head>
<body style="text-align: center">
<script type="text/javascript">
    // JS方式生成试卷
    function button1Click() {
        var ids = "";
        for (var i = 1; i < 11; i++) {
            if (document.getElementById("check" + i.toString()).checked) {
                ids += i.toString() + ",";
            }
        }
        if (ids == "")
            alert("请先选择要生成的试题");
        else
            location.href = "javascript:POBrowser.openWindowModeless('Compose?ids=" + ids.substr(0, ids.length - 1) + "', 'width=1200px;height=800px;');";
    }

    // 后台编程生成试卷
    function button2Click() {
        var ids = "";
        for (var i = 1; i < 11; i++) {
            if (document.getElementById("check" + i.toString()).checked) {
                ids += i.toString() + ",";
            }
        }
        if (ids == "")
            alert("请先选择要生成的试题");
        else
            location.href = "javascript:POBrowser.openWindowModeless('Compose2?ids=" + ids.substr(0, ids.length - 1) + "', 'width=1200px;height=800px;');";
    }
</script>
<div>
    <table align="center" style="color:red;">
        <tr>
            <td>1.可以点"操作"栏中的"编辑"来编辑各个试题</td>
        </tr>
        <tr>
            <td>2.可以选择多个试题，点"生成试卷"按钮，生成试卷</td>
        </tr>
    </table>
</div>
<div style="text-align: center;">
    <form id="form1" name="form1" method="post" action="Compose">
        <table style="background-color: #999; width: 600px; margin-left:28%; align:center;">
            ${strHtmls}
        </table>
        <br/>
        <input type="button" onclick="button1Click();" id="Button1" value="JS方式生成试卷"/><span>（所有版本）</span>
        <input type="button" onclick="button2Click();" id="Button2" value="后台编程生成试卷"/><span
            style="color:Red;">（专业版、企业版）</span>
    </form>
</div>
</body>
</html>
