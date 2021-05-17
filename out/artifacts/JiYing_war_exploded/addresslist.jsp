<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>通讯录</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" href="layuiadmin/style/template.css" media="all">

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

</head>
<body>

<s:action name="showMovie"></s:action>

<div class="layui-fluid layadmin-maillist-fluid">
  <div class="layui-row layui-col-space15">
  <%
    List<String> pictures = (List<String>) mapSession.get("picturePath");
    List<String> names = (List<String>) mapSession.get("movieName");
    for (int i = 0; i<pictures.size();i++) {
  %>
    <div class="layui-col-md4 layui-col-sm6">
      <div class="layadmin-contact-box" > 
          <div class="layui-col-md4 layui-col-sm6">
            <a href="javascript:;" >
              <div class="layadmin-text-center">
                <img src=cloud/<%=pictures.get(i)%>><br>
                <div class="layadmin-maillist-img layadmin-font-blod"></div>
              </div>
            </a>
          </div>
        <div class="layui-col-md8 layadmin-padding-left20 layui-col-sm6">
          <a href="javascript:;">
            <h3 class="layadmin-title">
              <strong><%=names.get(i)%></strong>
            </h3>
            <p class="layadmin-textimg">
              <i class="layui-icon layui-icon-location"></i>
              上海
            </p>
          </a>
          <div class="layadmin-address">
            <a href="javascript:;" >
              <strong>Hu Ge studio</strong>
              <br>
              E-mail:xxx@baidu.com
              <br>
              Weibo: https://weibo.com/hu_ge 
              <br>
              <addr title="phone">Tel:</addr>
              (123) 456-7890
              <a href="Delete.jsp?selectOne=<%=names.get(i)%>">删除</a>
            </a>
          </div>
        </div>
      </div>
    </div>
  <%
    }
  %>
  </div>
</div>


  <script src="../../layuiadmin/layui/layui.js"></script>  
  <script>
  layui.config({
    base: '../../layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index']);
  </script>
</body>
</html>