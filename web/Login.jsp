<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/12/15
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <s:form action="login">
       <label>用户名</label>
       <input type="text" name="userName">
       <label>密码</label>
       <input type="password" name="passWord">
       <s:submit>提交</s:submit>
   </s:form>
</body>
</html>
