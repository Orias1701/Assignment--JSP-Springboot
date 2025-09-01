<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Kết quả</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
    <h2>Thông tin bạn vừa nhập:</h2>
    <div class="content">
        <p>Họ tên: ${hoten}</p>
        <p>Quê quán: ${quequan}</p>
        <p>Điểm: ${diem}</p>
    </div>
    <form class="form-return" action="<c:url value='/' />" method="get">
        <button type="submit" class="styled-button">Trở về</button>
    </form>
</body>

</html>