<%@ page language="java"
         import="com.zhuozhengsoft.pageoffice.OpenModeType, com.zhuozhengsoft.pageoffice.PageOfficeCtrl"
         pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Word文件转换成PDF格式</title>
    <script type="text/javascript">
        //保存
        function Save() {
            document.getElementById("PageOfficeCtrl1").WebSave();
        }

        //另存为PDF文件
        function SaveAsPDF() {
            document.getElementById("PageOfficeCtrl1").WebSaveAsPDF();
            document.getElementById("PageOfficeCtrl1").Alert("PDF文件已经保存到 SaveAsPDF\\doc目录下。");
            document.getElementById("div1").innerHTML = "<a href='OpenPDF?fileName=${pdfName}'> 查看另存的 pdf 文件<a><br><br>";
        }
    </script>
</head>
<body>
<form id="form1">
    <div id="div1"></div>
    <div style="width: auto; height: 700px;">
        ${pageoffice}
    </div>
</form>
</body>
</html>

