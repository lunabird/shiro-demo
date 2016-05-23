<#assign base=request.contextPath />
<html>
<head>
    <title></title>
    <script type="text/javascript">
        <!--
        function reloadVerifyCode(){
            document.getElementById('verifyCodeImage').setAttribute('src', '${base}/mydemo/getVerifyCodeImage');
        }
        //-->
    </script>
</head>
<body>
<div style="color:red; font-size:22px;">${message_login}</div>

<form action="${base}/mydemo/login" method="POST">
    姓名：<input type="text" name="username"/><br/>
    密码：<input type="text" name="password"/><br/>
    验证：<input type="text" name="verifyCode"/>
    &nbsp;&nbsp;
    <img id="verifyCodeImage" onclick="reloadVerifyCode()" src="${base}/mydemo/getVerifyCodeImage"/><br/>
    <input type="submit" value="确认"/>
</form>
</body>
</html>