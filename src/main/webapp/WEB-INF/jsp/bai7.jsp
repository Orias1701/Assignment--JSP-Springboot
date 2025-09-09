<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Nhân 2 số</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
    <h2>Nhập 2 số để tính tích</h2>
    <form class="infoForm" action="bai7" method="post">
        A: <input type="text" name="a">
        B: <input type="text" name="b">
        <input type="submit" value="=">
    </form>
    <div class="content">
        <c:if test="${not empty kq}">
            <h2>Kết quả: ${kq}</h2>
        </c:if>
    </div>
    <form class="form-return" action="<c:url value='/' />" method="get">
        <button type="submit" class="styled-button">Trở về</button>
    </form>
</body>

</html>