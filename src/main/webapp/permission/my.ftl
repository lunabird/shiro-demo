<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
当前登录的用户为${Session["currentUser"].userName}
<br/>
<br/>
<#list model["bookList"] as books>
      <tr>
        <td>${books}</td>
      </tr>
</#list>
<br/>
饮料为：${model["drink"]}
</body>
</html>