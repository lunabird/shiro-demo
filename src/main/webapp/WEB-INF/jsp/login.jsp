<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
   <title>Login</title>
  <%--  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" /> --%>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"  type="text/css" media="all"/>
</head>
<body>
    <h1>HP test with Apache Shiro & spring-mvc</h1>
    <div>
       <h2>Login--${errorMessage}</h2>
       
	    <c:if test="${errorMessage != null}">
	       <b class="error">${errorMessage}</b>
	    </c:if>
       
       <form name="login" method="post">
       <div class="table">
           <div class="table_row">
              <div>Username:</div><div><input name="username" value="" type="text"/></div>
           </div>
           <div class="table_row">
              <div>Password:</div><div><input name="password" value="" type="password"/></div>
           </div>
           
           <div class="table_row">
              <div>验证码:</div>
              <div> <input name="verifyCode" value="" type="text"/></div>
              <img id="verifyCodeImage" onclick="reloadVerifyCode()" src="${pageContext.request.contextPath}/getVerifyCodeImage"/>
           </div>
    
    
    
           <div class="table_row">
              <div>
                  <input name="submit" value="Login" type="submit"/>
              </div>
           </div>
           
           
       </div>
       </form>   
    </div>
</body>
</html>