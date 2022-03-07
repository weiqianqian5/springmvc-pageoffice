<%@ page language="java" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>最简单的打开保存Word文件</title>
</head>
<body>
<script type="text/javascript">
    function Save() {
        document.getElementById("PageOfficeCtrl1").WebSave();
    }
</script>
<form id="form1">
    <div style=" width:auto; height:700px;">
        <div style="font-size:14px; line-height:20px; ">
            poCtrl.getRibbonBar().setTabVisible("TabHome",false);实现隐藏Ribbon栏中的“开始”命令分组.（"TabHome"为该命令分组的名称,false为隐藏，true为显示）
            <br/>
            poCtrl.getRibbonBar().setSharedVisible("FileSave",
            false);实现隐藏Ribbon快速工具栏中的“保存”按钮.（"FileSave"为按钮的名称,false为隐藏，true为显示）
            <br/>
            poCtrl.getRibbonBar().setGroupVisible("GroupClipboard",
            false);实现隐藏“开始”命令分组中的“剪切板”面板.（"GroupClipboard"为该面板的名称,false为隐藏，true为显示）
            <br/>
            <span style="color:red">注意：此控制是会同步影响到本地文件打开时Ribbon栏中的各个工具按钮的显示状态，当关闭在线编辑窗口时，本地Ribbon栏状态恢复正常。</span>
            <br/><br/>
        </div>
        ${pageoffice}
    </div>
</form>
</body>
</html>
