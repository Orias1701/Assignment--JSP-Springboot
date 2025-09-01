function openForm(maHang, tenHang, donGia, soLuong) {
    document.getElementById("popupForm").style.display = "block";

    if (maHang) {
        // Chế độ sửa
        document.getElementById("maHang").value = maHang;
        document.getElementById("maHang").readOnly = true;
        document.getElementById("tenHang").value = tenHang;
        document.getElementById("donGia").value = donGia;
        document.getElementById("soLuong").value = soLuong;

        document.getElementById("btnSave").value = "update";
        document.getElementById("btnSave").innerText = "Sửa";
    } else {
        // Chế độ thêm mới
        document.getElementById("maHang").value = "";
        document.getElementById("maHang").readOnly = false;
        document.getElementById("tenHang").value = "";
        document.getElementById("donGia").value = "";
        document.getElementById("soLuong").value = "";

        document.getElementById("btnSave").value = "add";
        document.getElementById("btnSave").innerText = "Thêm";
    }
}
function closeForm() {
    document.getElementById("popupForm").style.display = "none";
}