<%@ page language="java"  pageEncoding="utf-8" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>保存Word首页为图片</title>
</head>
<body>
<script type="text/javascript">
    function Save() {
        document.getElementById("PageOfficeCtrl1").WebSave();
        if (document.getElementById("PageOfficeCtrl1").CustomSaveResult == "ok") {
            document.getElementById("PageOfficeCtrl1").Alert("文档保存成功!");
        }
    }

    function SaveFirstAsImg() {
        document.getElementById("PageOfficeCtrl1").WebSaveAsImage();
        if (document.getElementById("PageOfficeCtrl1").CustomSaveResult == "ok") {
            document.getElementById("PageOfficeCtrl1").Alert("图片保存成功!");
            document.getElementById("img1").src = "../images/SaveFirstPageAsImg/test.jpg";
            document.getElementById("img1").style.width = "200px";
            document.getElementById("img1").style.height = "290px";
        }
    }
</script>
<div><img id="img1"/></div>
<div style="width:auto; height:700px;">
    ${pageoffice}
</div>
</body>
</html>
