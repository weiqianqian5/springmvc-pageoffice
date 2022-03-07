<%@ page language="java"
         import="com.zhuozhengsoft.pageoffice.OpenModeType,com.zhuozhengsoft.pageoffice.PageOfficeCtrl,com.zhuozhengsoft.pageoffice.wordwriter.DataRegion,com.zhuozhengsoft.pageoffice.wordwriter.WordDocument"
         pageEncoding="utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>保存文档中指定位置的数据的同时也保存该文档</title>
    <script type="text/javascript">
        function Save() {
            document.getElementById("PageOfficeCtrl1").WebSave();
        }
    </script>
    <script type="text/javascript">
        //文档关闭前先提示用户是否保存
        function BeforeBrowserClosed() {
            if (document.getElementById("PageOfficeCtrl1").IsDirty) {
                if (confirm("提示：文档已被修改，是否继续关闭放弃保存 ？")) {
                    return true;

                } else {

                    return false;
                }

            }

        }
    </script>
</head>
<body>
<form id="form1">
    <div>
        <span style="color: Red; font-size: 14px;">请输入公司名称、年龄、部门等信息后，单击工具栏上的保存按钮</span>
        <br/>
        <span style="color: Red; font-size: 14px;">请输入公司名称：</span>
        <input id="txtCompany" name="txtCompany" type="text"/>
        <br/>
    </div>
    <div style="width: auto; height: 700px;">
        ${pageoffice}
    </div>
</form>
</body>
</html>
