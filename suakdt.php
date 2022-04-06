<?php
    // kết nối csdl
    $conn = mysqli_connect("localhost","root","","quanlyhoc_db");
    // kiểm tra khi người dùng sumbit form
    if (isset($_POST["btnSave"]))
    {
        // lấy dữ liệu trên form => lưu vào biến
        $mk =  $_POST["txtMaKhoa"];
        $tk = $_POST["txtTenKhoa"];
        $dt = $_POST["txtDienThoai"];
    }
    // truy vấn dữ liệu
    $sql = "UPDATE khoa_dao_tao SET TenKhoa = '$tk', DienThoai = '$dt' WHERE MaKhoa = '$mk'";
    if (mysqli_query($conn,$sql)) // nếu thành công chuyển tới index.php
    {
        header('location: Index.php');
    }
    else { // lỗi
        $result = "Cập nhật chưa thành công" . mysqli_error($conn);
    }
?>