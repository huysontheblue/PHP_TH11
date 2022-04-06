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
    $sql = " INSERT INTO khoa_dao_tao VALUES('$mk','$tk','$dt')";
    if (mysqli_query($conn,$sql))// nếu thành công chuyển đến trang index.php
    {
        header('location: Index.php');
    }
    else {//lỗi
        $result = "Lỗi thêm mới" . mysqli_error($conn);
    }
?>