<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
  </head>
  <style>
    a{
      text-decoration: none;
      color: pink;
      font-size: 26px;
    }
    h3{
      width: 180px;
      height: 60px;
      margin: 100px auto;
      text-align: center;
      line-height: 60px;
      background: deepskyblue;
      border-radius: 5px;

    }
  </style>
  <body>

  <h3>
    <a href="${pageContext.request.contextPath}/book/allBook">进入书籍页面</a>
  </h3>

  </body>
</html>
