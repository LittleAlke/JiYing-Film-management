<%@ page import="java.util.Set" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/12/16
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        Map mapSession = ActionContext.getContext().getSession();
        if(mapSession.get("upSuccess")!=null&&mapSession.get("upSuccess").equals(1)) {
             mapSession.put("upSuccess",0);
    %>
    <script type="text/javascript" language="javascript">
        alert("添加成功,跳转到信息列表！");         // 弹出错误信息
        window.location='http://localhost:8080/JiYing_war_exploded/Main.jsp' ;        // 跳转到登录界面
    </script>
    <%
        }
    %>

    <title>电影界面</title>
</head>
<body>
<s:action name="showMovie"></s:action>
picture:<br>
<%
    List<String> pictures = (List<String>) mapSession.get("picturePath");
    List<String> names = (List<String>) mapSession.get("movieName");
    for (int i = 0; i<pictures.size();i++) {
     %>
    <img src=cloud/<%=pictures.get(i)%>><br>
    <%=names.get(i)%>
      <%
     }
      %>

</body>
</html>
