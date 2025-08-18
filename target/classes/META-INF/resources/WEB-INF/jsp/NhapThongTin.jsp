<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
    <title>Nhập thông tin</title>
</head>
<body>
<h2>Nhập thông tin</h2>
<form method="post" action="/xin-chao">
    Nhập tên: <input type="text" name="ten"/>
    <input type="submit" value="Gửi"/>
</form>
</body>
</html>
