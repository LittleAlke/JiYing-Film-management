<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/12/18
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查找电影</title>
</head>
<body>
    <label>删除电影</label>
    <s:form action="loadMovie" method="POST">
        <input type="text" name = movieName 请输入电影名/>
        <s:submit>查找</s:submit>
    </s:form>
</body>
</html>
