<#assign base=request.contextPath />
<html>
<head>
    <title></title>

</head>
<body>
当前登录的用户为${Session["currentUser"].userName}
<br/>
<br/>
create权限<a href="${base}/create.html" target="_blank">访问</a>
<br/>
<br/>
delete权限<a href="${base}/delete.html" target="_blank">访问</a>
<br/>
<br/>
query权限<a href="${base}/query.html" target="_blank">访问</a>
<br/>
<br/>
update权限<a href="${base}/update.html" target="_blank">访问</a>
<br/>
<br/>
<a href="${base}/mydemo/logout" target="_blank">Logout</a>
</body>
</html>