<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menu Bài Tập JSP</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
<h2>Danh sách Bài Tập JSP</h2>

<table border="1" cellpadding="10" cellspacing="0" align="center">
    <tr>
        <th>Bài</th>
        <th>Mô tả</th>
        <th>Link</th>
    </tr>
    <tr>
        <td>1</td>
        <td>Bảng nhân với 2</td>
        <td><a href="/bai1">Xem</a></td>
    </tr>
    <tr>
        <td>2</td>
        <td>Bảng nhân 2 (có dấu ?)</td>
        <td><a href="/bai2">Xem</a></td>
    </tr>
    <tr>
        <td>3</td>
        <td>Bảng cửu chương</td>
        <td><a href="/bai3">Xem</a></td>
    </tr>
    <tr>
        <td>4</td>
        <td>Giai thừa</td>
        <td><a href="/bai4">Xem</a></td>
    </tr>
    <tr>
        <td>5</td>
        <td>Form Xin Chào</td>
        <td><a href="/bai5">Xem</a></td>
    </tr>
</table>

</body>
</html>
