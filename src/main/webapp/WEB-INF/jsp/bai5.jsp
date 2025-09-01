<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Nhập thông tin</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
    <h2>Nhập thông tin</h2>
    <form class="infoForm" method="post" action="/b5-xin-chao">
        Nhập tên: <input type="text" name="ten" />
        <input type="submit" value="Gửi" />
    </form>
    <form class="form-return" method="get" action="<c:url value='/' />">
        <button type="submit" class="styled-button">Trở về</button>
    </form>
</body>

</html>