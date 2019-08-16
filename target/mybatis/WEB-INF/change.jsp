<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>UserList</title>
</head>
<body style="margin: 50px;">
<h2>Update id:${id}</h2>
<form action="/change_after.do" class="form-horizontal">
    <div class="form-group"><!--div.row-->
        <div class="col-sm-1"><label class="control-label">ID</label></div>
        <div class="col-sm-3"> <input type="text" class="form-control" name="id" content="${id}"></div>
    </div>
    <div class="form-group"><!--div.row-->
        <div class="col-sm-1"><label class="control-label">用户名</label></div>
        <div class="col-sm-3"> <input type="text" class="form-control" name="username"></div>
    </div>
    <div class="form-group"><!--div.row-->
        <div class="col-sm-1"><label class="control-label">密码</label></div>
        <div class="col-sm-3"> <input type="password" class="form-control" name="password"></div>
    </div>
    <div class="form-group"><!--div.row-->
        <div class="col-sm-1"> <input type="submit" class="btn btn-success" value="Update"></div>
    </div>
</form>

<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>