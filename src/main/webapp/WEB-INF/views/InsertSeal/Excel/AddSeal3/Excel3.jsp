﻿<%@ page language="java" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>3.无需输入用户名密码，加盖指定印章到文档任意位置。</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<script type="text/javascript">
    function Save() {
        document.getElementById("PageOfficeCtrl1").WebSave();
    }

    var strSealName = "测试公章";//加盖的指定印章名称
    function InsertSeal() {
        try {
            //第一个参数，必填项，标识印章名称（当存在重名的印章时，默认选取第一个印章），且该印章签章人的签章类型方式必须为用户名+密码；第二个参数，可选项，标识是否保护文档，为null时保护文档，为空字符串时不保护文档；第三个参数，可选项，标识盖章指定位置名称，须为英文或数字，不区分大小写
            document.getElementById("PageOfficeCtrl1").ZoomSeal.AddSealByName(strSealName, null);
        } catch (e) {
        }
    }

    function DeleteSeal() {
        var iCount = document.getElementById("PageOfficeCtrl1").ZoomSeal.Count;//获取加盖的印章数量
        var strTempSealName = "";
        if (iCount > 0) {
            for (var i = 0; i < iCount; i++) {
                strTempSealName = document.getElementById("PageOfficeCtrl1").ZoomSeal.Item(i).SealName;//获取加盖的印章名称
                if (strTempSealName == strSealName) {
                    document.getElementById("PageOfficeCtrl1").ZoomSeal.Item(i).DeleteSeal();//删除印章
                    alert("成功删除了“" + strSealName + "”");
                    break;
                }
            }
        } else {
            alert("请先在文档中加盖印章后，再执行删除操作。");
        }
    }

    function ChangePsw() {
        document.getElementById("PageOfficeCtrl1").ZoomSeal.ShowSettingsBox();
    }
</script>
<div style="width: auto; height: 700px;">
    ${pageoffice}
</div>
</body>

</html>