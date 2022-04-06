<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm khoa đào tạo</title>
</head>
<body>
    <h1 style="text-align:center">Thêm Khoa Đào Tạo</h1>
    <form action="themkdt.php" method="POST">
    <table style="margin-left: 600px">
        <tr>
            <td>Mã khoa:</td>
            <td><input type="text" name="txtMaKhoa" id="txtMaKhoa"> </td>
        </tr>
        <tr>
            <td>Tên khoa:</td>
            <td><input type="text" name="txtTenKhoa" id="txtTenKhoa"> </td>
        </tr>
        <tr>
            <td>Điện thoại:</td>
            <td><input type="text" name="txtDienThoai" id="txtDienThoai"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Save" id="btn" name="btnSave">
            </td>
        </tr>
    </table>
    </form>
</body>
</html>