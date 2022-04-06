<?php
    // kết nối cơ sở dữ liệu
    $conn = mysqli_connect("localhost","root","","quanlyhoc_db");
    $mk = $_GET["MaKhoa"];
    // câu sql để xóa
    $sql = "DELETE FROM khoa_dao_tao where MaKhoa = '$mk'";
    if (mysqli_query($conn,$sql)) // thành công chuyển qua Index.php
    {
        header('location:  Index.php');
    }
    else {
        $result = "Xóa không thành công" . mysqli_error($conn);
    }
    // ngắt kết nối 
    mysqli_close($conn);
    //<script>alert('Bạn có muốn xóa không?');</script>
?>