<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/12/18
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="layuiadmin/layui/css/layui.css" media="all">
</head>
<body>
<fieldset class="layui-elem-field layui-field-title">
    <legend>添加电影信息</legend>
</fieldset>

    <s:form class="layui-form layui-form-pane" action="addMovie" enctype="multipart/form-data">
        <div class="layui-form-item">
            <label class="layui-form-label">电影名</label>
            <div class="layui-input-block">
                <input type="text" name="movieName" required="true"  lay-verify="required" placeholder="请输入电影名" autocomplete="off" class="layui-input"/>
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">电影种类</label>
            <div class="layui-input-block">
                <select name="type" lay-verify="required">
                    <option value=""></option>
                    <option value="恐怖片">恐怖片</option>
                    <option value="喜剧片">喜剧片</option>
                    <option value="爱情片">爱情片</option>
                    <option value="科幻片">科幻片</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">上映日期</label>
            <div class="layui-input-block">
                <input type="date" name="date"><br>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">选择封面文件</label>

                <s:file name ="uploadPic"  /><br>

        </div>



        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </s:form>


    <script src="layuiadmin/layui/layui.js"></script>
    <script>
        //一般直接写在一个js文件中
        layui.use(['layer', 'form'], function(){
            var layer = layui.layer
                ,form = layui.form;
        });
    </script>
</body>
</html>
