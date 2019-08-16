<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>UserList</title>
</head>
<body style="margin: 50px;">

<form action="/insert.do" class="form-horizontal">
    <div class="form-group"><!--div.row-->
        <div class="col-sm-1"><label class="control-label">用户名</label></div>
        <div class="col-sm-3"> <input type="text" class="form-control" name="username"></div>
    </div>
    <div class="form-group"><!--div.row-->
        <div class="col-sm-1"><label class="control-label">密码</label></div>
        <div class="col-sm-3"> <input type="password" class="form-control" name="password"></div>
    </div>
    <div class="form-group"><!--div.row-->
        <div class="col-sm-1"> <input type="submit" class="btn btn-success" value="插入"></div>
    </div>
</form>
<br>
<table style="margin: auto" width="300px" class="table table-striped" style="text-align:center;">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>密码</th>
        <th>操作</th>
    </tr>
    <tbody>
    <c:forEach items="${user}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.username}</td>
            <td>${item.password}</td>
            <td> <a href="/delete.do?id=${item.id}" class="btn btn-primary btn-mini active" role="button">删除</a>
                <a href="/change_before.do?id=${item.id}" class="btn btn-primary btn-mini active" role="button">更新</a>
        </tr>
    </c:forEach>
    </tbody>

</table>
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
