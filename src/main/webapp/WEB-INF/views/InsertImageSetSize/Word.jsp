﻿<%@ page language="java" pageEncoding="utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>演示：后台编程插入图片到数据区域(专业版、企业版)</title>
</head>
<body>
<div style="font-size: 12px; line-height: 20px; border-bottom: dotted 1px #ccc; border-top: dotted 1px #ccc;
        padding: 5px;">
    关键代码：<span style="background-color: Yellow;"> <br/>DataRegion dataRegion
            = worddoc.openDataRegion("PO_开头的书签名称");
            <br/>
		dataRegion.setValue("[image width=200.2 height=200]doc/1.jpg[/image]");//[image]标签中的width和height属性的单位是：英磅</span><br/>
</div>
<br/>
<form id="form1" style="height: 100%;">
    <div style="height: 700px; width: auto;">
        <!--**************   PageOffice 客户端代码开始    ************************-->
        ${pageoffice}
        <!--**************   PageOffice 客户端代码结束    ************************-->
    </div>
</form>
</body>
</html>
