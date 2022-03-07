<%@ page language="java" pageEncoding="utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>输入部门名称</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <script type="text/javascript">
        function setValue() {
            document.getElementById("deptName").value = window.external.DialogArgs;
        }

        function getValue() {
            var deptName = document.getElementById("deptName").value;
            if (deptName != null && deptName != "") {
                window.external.DialogResult = deptName;
            }
            window.external.close();
            return;
        }

        function closeWindow() {
            window.external.close();
        }
    </script>
</head>
<body>
<div>
    <form id="inputForm" action="">
        <div style=" margin:0; padding:0; height:25px; background-color:lightGreen; line-height:25px; border: solid 1px blue; text-align:right; padding:0 10px;">
            <a href="#" onclick="window.opener=null;window.open('','_self');window.close();"
               style=" font-size:18px; text-decoration:none;">×</a>
        </div>
        <div id="rect1" style=" margin:0; padding:0; height:200px; border: solid 1px blue;">
            <br/>
            请输入部门名称：<input type="text" value="" id="deptName"/>
            <br/><br/>
            <input type="submit" value="确定" onclick="getValue();"/>
            <input type="submit" value="取消" onclick="closeWindow();"/>
        </div>
    </form>
</div>
<script type="text/javascript">
    setValue();
</script>
<script language="javascript" type="text/javascript">
    document.getElementById("rect1").style.height = document.body.clientHeight - 90;
</script>
</body>
</html>
