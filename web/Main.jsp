<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%@ page import="com.opensymphony.xwork2.ActionSupport" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/12/15
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<s:action name="main"></s:action>
<body>
  类别:<%
      Map mapSession = ActionContext.getContext().getSession();
      Set<String> setType = (Set) mapSession.get("type");
       for(String s: setType){
      %>
       <%=s%>
       <a href="http://localhost:8080/JiYing_war_exploded/addresslist.jsp?select=<%=s%>"><%=s%></a>&nbsp;
      <%
       }
      %>
  <hr><br>
  演员:<%
      Set<String> setActor = (Set) mapSession.get("actor");
      for(String s2: setActor){
      %>
      <a href="http://localhost:8080/JiYing_war_exploded/Movie.jsp?select=<%=s2%>"><%=s2%></a>&nbsp;
      <%
          }
      %>
    <hr><br>
  上映日期:<%
      Set<Date> setDate = (Set) mapSession.get("date");
      for(Date s3: setDate){
      %>
      <a href="http://localhost:8080/JiYing_war_exploded/Movie.jsp?select=<%=s3%>"><%=s3%></a>&nbsp;
      <%
        }
      %>
  <hr><br>
  <a href="http://localhost:8080/JiYing_war_exploded/AddMovie.jsp">添加电影信息</a>
</body>
</html>
