<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý Hàng</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
    <style>
    input[readonly] {
        background-color: #e9ecef;
    }
    </style>
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
        <th><button type="button" onclick="openForm()">Thêm</button></th>
    </tr>
    <c:forEach var="h" items="${list}">
        <tr>
            <td>${h.maHang}</td>
            <td>${h.tenHang}</td>
            <td>${h.donGia}</td>
            <td>${h.soLuong}</td>
            <td>
                <button type="button" 
                        onclick="openForm('${h.maHang}','${h.tenHang}','${h.donGia}','${h.soLuong}')">Sửa</button>
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
    <form class="hangForm" action="${pageContext.request.contextPath}/hang" method="post" onsubmit="return validateForm()">
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

<script>
    // Danh sách mã hàng đã tồn tại
    var existingMaHang = [
        <c:forEach var="h" items="${list}" varStatus="st">
            "${h.maHang}"<c:if test="${!st.last}">,</c:if>
        </c:forEach>
    ];

    function openForm(maHang = "", tenHang = "", donGia = "", soLuong = "") {
        document.getElementById("popupForm").style.display = "block";

        var maHangInput = document.getElementById("maHang");
        var btnSave = document.getElementById("btnSave");

        if (maHang) {
            // Sửa
            maHangInput.value = maHang;
            maHangInput.readOnly = true;

            document.getElementById("tenHang").value = tenHang;
            document.getElementById("donGia").value = donGia;
            document.getElementById("soLuong").value = soLuong;

            btnSave.value = "update";
        } else {
            // Thêm
            maHangInput.value = "";
            maHangInput.readOnly = false;

            document.getElementById("tenHang").value = "";
            document.getElementById("donGia").value = "";
            document.getElementById("soLuong").value = "";

            btnSave.value = "add";
        }
    }

    function closeForm() {
        document.getElementById("popupForm").style.display = "none";
    }

    function validateForm() {
        var maHangInput = document.getElementById("maHang");
        var btnSave = document.getElementById("btnSave");

        if (btnSave.value === "add") {
            var val = maHangInput.value.trim();
            if (existingMaHang.includes(val)) {
                alert("❌ Mã hàng đã tồn tại, vui lòng nhập mã khác!");
                return false;
            }
        }
        return true;
    }
</script>
</body>
</html>
