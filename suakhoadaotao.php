<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa sinh viên</title>
</head>
<body>
    <?php
        // kết nối csdl
        $conn = mysqli_connect("localhost","root","","quanlyhoc_db");
        $mk = $_GET["MaKhoa"];
        $sql = "SELECT * FROM khoa_dao_tao WHERE MaKhoa= '$mk'";
        $result = mysqli_query($conn,$sql);
        // in danh sách dữ liệu
        while($row = mysqli_fetch_assoc($result))
        {
            $mk = $row["MaKhoa"];
            $tk = $row["TenKhoa"];
            $dt = $row["DienThoai"];
        }
    ?>
    <form action="suakdt.php" method = "POST">
        <table style="margin-left: 600px">
            <tr>
                <td colspan = "2">
                    <h1>Sửa sinh viên</h1>
                </td>
            </tr>
            <tr>
                <td>Mã khoa</td>
                <td><input type="text" name="txtMaKhoa" readonly = "readonly" id="" value = "<?php echo $mk ?>"></td>
            </tr>
            <tr>
                <td>Tên khoa</td>
                <td><input type="text" name="txtTenKhoa" id="" value="<?php echo $tk ?>"></td>
            </tr>
            <tr>
                <td>Điện thoại</td>
                <td><input type="text" name="txtDienThoai" id="" value="<?php echo $dt ?>"></td>
            </tr>
            <tr>
                <td colspan = "2" align="center">
                    <input type="submit" value="Save" name="btnSave">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>