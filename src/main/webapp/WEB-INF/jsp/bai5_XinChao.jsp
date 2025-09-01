<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Xin Chào</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>

<body>
    <h2>Xin chào bạn: ${ten}</h2>
    <form class="form-return" action="<c:url value='/' />" method="get">
        <button type="submit" class="styled-button">Trở về</button>
    </form>
</body>

</html>