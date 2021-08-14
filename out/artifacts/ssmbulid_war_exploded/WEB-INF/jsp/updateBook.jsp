<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--BootStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--隐藏域  回转id--%>
        <input type="hidden" name="bookID" value="${book.bookID}">
        <div class="form-group">
            <label for="bkname">书籍名称:</label>
            <input type="text" name="bookName" value="${book.bookName}" class="form-control" id="bkname" required>
        </div>
        <div class="form-group">
            <label for="bkname1">书籍数量:</label>
            <input type="text" name="bookCounts" value="${book.bookCounts}" class="form-control" id="bkname1" required>
        </div>
        <div class="form-group">
            <label for="bkname2">书籍描述:</label>
            <input type="text" name="detail" value="${book.detail}" class="form-control" id="bkname2" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>

    </form>
</div>

</body>
</html>
