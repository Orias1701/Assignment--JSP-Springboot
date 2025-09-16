<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Đăng kí thông tin</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
    <h2>Đăng kí thông tin</h2>
    <form class="infoForm" method="post" action="bai6-result">
        Mã: <input type="text" name="ma">
        Họ và tên: <input type="text" name="hoten">
        Ngày sinh: <input type="date" name="ngaysinh" placeholder="mm/dd/yyyy">
        Giới tính: <input type="checkbox" name="gioitinh" value="Nam"> Nam
        <input type="submit" value="Gửi" class="styled-button">
    </form>
    <form class="form-return" action="<c:url value='/' />" method="get">
        <button type="submit" class="styled-button">Trở về</button>
    </form>
</body>

</html>