<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Bài 1</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
    <h2>Bài 1: Bảng nhân với 2</h2>
    <table>
        <tr>
            <th>Phép nhân</th>
            <th>Kết quả</th>
        </tr>
        <c:forEach var="row" items="${result}">
            <tr>
                <td>${row[0]} x 2</td>
                <td>${row[1]}</td>
            </tr>
        </c:forEach>
    </table>
    <form class="form-return" action="<c:url value='/' />" method="get">
        <button type="submit" class="styled-button">Trở về</button>
    </form>
</body>

</html>