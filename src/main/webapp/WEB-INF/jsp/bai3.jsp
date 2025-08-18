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

</body>
</html>
