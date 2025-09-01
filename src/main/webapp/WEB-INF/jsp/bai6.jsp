<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Nhập thông tin</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
    <h2>Nhập thông tin sinh viên</h2>
    <form method="post" action="b6-result">
        Họ tên: <input type="text" name="hoten">
        Quê quán: <input type="text" name="quequan">
        Điểm: <input type="text" name="diem">
        <input type="submit" value="Gửi">
    </form>
    <form class="form-return" action="<c:url value='/' />" method="get">
        <button type="submit" class="styled-button">Trở về</button>
    </form>
</body>

</html>