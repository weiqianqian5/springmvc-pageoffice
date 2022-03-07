<%@ page language="java" pageEncoding="utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <script type="text/javascript">
        //获取后台定义的Tag 字符串
        function getTagNames() {
            var tagNames = document.getElementById("PageOfficeCtrl1").DefineTagNames;
            return tagNames;
        }

        //定位Tag
        function locateTag(tagName) {
            var appSlt = document.getElementById("PageOfficeCtrl1").Document.Application.Selection;
            var bFind = false;
            //appSlt.HomeKey(6);
            appSlt.Find.ClearFormatting();
            appSlt.Find.Replacement.ClearFormatting();

            bFind = appSlt.Find.Execute(tagName);
            if (!bFind) {
                document.getElementById("PageOfficeCtrl1").Alert("已搜索到文档末尾。");
                appSlt.HomeKey(6);
            }
            window.focus();
        }

        //添加Tag
        function addTag(tagName) {
            try {
                var tmpRange = document.getElementById("PageOfficeCtrl1").Document.Application.Selection.Range;
                tmpRange.Text = tagName;
                tmpRange.Select();
                return "true";
            } catch (e) {
                return "false";
            }
        }

        //删除Tag
        function delTag(tagName) {
            var tmpRange = document.getElementById("PageOfficeCtrl1").Document.Application.Selection.Range;
            if (tagName == tmpRange.Text) {
                tmpRange.Text = "";
                return "true";
            }
            else
                return "false";
        }
    </script>
    <script type="text/javascript">
        function Save() {
            document.getElementById("PageOfficeCtrl1").WebSave();
        }

        function ShowDefineDataTags() {
            document.getElementById("PageOfficeCtrl1").ShowHtmlModelessDialog("DataTagDlg", "parameter=xx", "left=300px;top=390px;width=430px;height=410px;frame:no;");
        }
    </script>
</head>
<body>
<form action="">
    <div style="width: auto; height: 600px;">
        ${pageoffice}
    </div>
</form>
</body>
</html>