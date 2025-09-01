<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý Hàng</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
<h2>Danh sách Hàng</h2>

<!-- Danh sách -->
<table cellpadding="5">
    <tr>
        <th>Mã hàng</th>
        <th>Tên hàng</th>
        <th>Đơn giá</th>
        <th>Số lượng</th>
        <th><button onclick="openForm()">Thêm</button></th>
    </tr>
    <c:forEach var="h" items="${list}">
        <tr>
            <td>${h.maHang}</td>
            <td>${h.tenHang}</td>
            <td>${h.donGia}</td>
            <td>${h.soLuong}</td>
            <td>
                <button onclick="openForm('${h.maHang}','${h.tenHang}','${h.donGia}','${h.soLuong}')">Sửa</button>
                <form action="${pageContext.request.contextPath}/hang" method="post" style="display:inline;" 
                      onsubmit="return confirm('Bạn có chắc muốn xóa?');">
                    <input type="hidden" name="maHang" value="${h.maHang}"/>
                    <button type="submit" name="action" value="delete">Xóa</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form class="form-return" action="<c:url value='/' />" method="get">
    <button type="submit" class="styled-button">Trở về</button>
</form>
<!-- Popup form -->
<div id="popupForm" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeForm()">&times;</span>
    <form class="hangForm" action="${pageContext.request.contextPath}/hang" method="post">
        <label>Mã hàng:</label>
        <input type="text" id="maHang" name="maHang" required>

        <label>Tên hàng:</label>
        <input type="text" id="tenHang" name="tenHang" required>

        <label>Đơn giá:</label>
        <input type="number" id="donGia" name="donGia" required>

        <label>Số lượng:</label>
        <input type="number" id="soLuong" name="soLuong" required>

        <button type="submit" id="btnSave" name="action" value="add">Lưu</button>
    </form>
  </div>
</div>

<script src="<c:url value='/js/app.js'/>"></script>
</body>
</html>
