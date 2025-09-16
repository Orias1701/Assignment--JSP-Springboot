<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Kết quả đăng kí</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
    <h2>Thông tin User</h2>
    <div class="content">
        <p><strong>Mã:</strong> ${ma}</p>
        <p><strong>Họ tên:</strong> ${hoten}</p>
        <p><strong>Ngày sinh:</strong> ${ngaysinh}</p>
        <p>Cảm ơn <b>${danhxung}</b> đã sử dụng dịch vụ của chúng tôi</p>
    </div>
    <form class="form-return" action="<c:url value='/bai6' />" method="get">
        <button type="submit" class="styled-button">Form</button>
    </form>
    <form class="form-return" action="<c:url value='/' />" method="get">
        <button type="submit" class="styled-button">Trở về</button>
    </form>
</body>

</html>