<%@ page language="java" pageEncoding="utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title></title>
</head>
<body>
<form id="form1">
    <div style="width: auto; height: 700px;">
        <!-- *********************PageOffice组件客户端JS代码*************************** -->
        <script type="text/javascript">
            function Save() {
                document.getElementById("PageOfficeCtrl1").WebSave();
            }
        </script>
        <div style=" font-size:14px; line-height:20px;">演示说明：<br/>点击“保存”按钮，PageOffice会把文档中三个数据区域（PO_test1，PO_test2，PO_test3）中的内容保存为三个独立的子文件（new1.doc，new2.doc，new3.doc）到“doc/SplitWord/”
            目录下。
        </div>
        <div style="color: red;font-size:14px; line-height:20px;">
            Word拆分功能只有企业版支持，并且文档的打开模式必须是OpenModeType.docSubmitForm，需要设置数据区域的属性dataRegion1.setSubmitAsFile(true)
            。<br/><br/></div>

        <!-- *********************PageOffice组件的引用*************************** -->
        ${pageoffice}
    </div>
</form>
</body>
</html>
