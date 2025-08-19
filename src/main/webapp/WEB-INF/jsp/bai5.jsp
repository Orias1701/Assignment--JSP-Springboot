<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nhập thông tin</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
<h2>Nhập thông tin</h2>
<form method="post" action="/b5-xin-chao">
    Nhập tên: <input type="text" name="ten"/>
    <input type="submit" value="Gửi"/>
</form>
<form class = "form-return" action="<c:url value='/' />" method="get">
    <button type="submit" class="styled-button">Trở về</button>
</form>
<style>
form.form-return {
    width: 100px;
    border: none;
    box-shadow: none;
    background-color: transparent;
}

button.styled-button {
    width: 100px;
    background-color: transparent;
    border: 1px solid #2c92e6;
    color: #2c92e6;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: background-color 0.3s;
}

button.styled-button:hover {
    border: 1px solid #f11b5b;
    color: #f11b5b;
}
</style>
</body>
</html>
