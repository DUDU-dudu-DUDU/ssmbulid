<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <%--BootStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —————— 显示所有书籍</small>
                </h1>
            </div>
        </div>

        <%--增加书籍--%>
        <div class="row">
             <div class="col-md-4 column">
                 <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">添加书籍</a>
             </div>
            <div class="col-md-8 column">
                <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
                    <span style="color:chartreuse;font-weight: bold">${error}</span>
                    <input type="text" name="queryBookName" class="form-control" placeholder="请输入书籍名称">
                    <input type="submit" value="查询" class="bt btn-primary">
                </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                </thead>

                <%--书籍从数据库查询  list遍历--%>
                <tbody>
                    <c:forEach items="${list}" var="book">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">更改</a>
                                &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/book/delBook/${book.bookID}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>

    </div>

</div>

</body>
</html>