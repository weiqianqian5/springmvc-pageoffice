<%@ page language="java" pageEncoding="utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>演示：js获取word选中的文字</title>
    <script type="text/javascript">
        function getSelectionText() {
            if (document.getElementById("PageOfficeCtrl1").Document.Application.Selection.Range.Text != "") {
                document.getElementById("PageOfficeCtrl1").Alert(document.getElementById("PageOfficeCtrl1").Document.Application.Selection.Range.Text);
            }
            else {
                document.getElementById("PageOfficeCtrl1").Alert("您没有选择任何文本。");
            }
        }
    </script>
</head>
<body>
<div style="font-size: 12px; line-height: 20px; border-bottom: dotted 1px #ccc; border-top: dotted 1px #ccc;
        padding: 5px;">
    <span style="color: red;">操作说明：</span>选中word文件中的一段文字，然后点“获取选中文字”按钮。<br/>
    关键代码：点右键，选择“查看源文件”，看js函数<span style="background-color: Yellow;">getSelectionText()</span></div>

<input id="Button1" type="button" onclick="getSelectionText();" value="js获取word选中的文字"/><br/>
<form id="form1">
    <div style=" width:auto; height:700px;">
        <!--**************   PageOffice 客户端代码开始    ************************-->
        ${pageoffice}
        <!--**************   PageOffice 客户端代码结束    ************************-->
    </div>
</form>
</body>
</html>

