<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài 3</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
<h2>Bài 3: Bảng cửu chương 2 đến 9</h2>

<c:forEach var="entry" items="${tables}">
    <h3>Cửu chương ${entry.key}</h3>
    <table border="1" cellpadding="5">
        <tr>
            <th>Phép nhân</th>
            <th>Kết quả</th>
        </tr>
        <c:forEach var="row" items="${entry.value}">
            <tr>
                <td>${row[0]}</td>
                <td>${row[1]}</td>
            </tr>
        </c:forEach>
    </table>
    <br/>
</c:forEach>
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
