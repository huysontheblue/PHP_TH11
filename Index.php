<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Khoa Đào Tạo</title>
</head>
<body>
    <?php
        // kết nối đến csdl
        $conn = mysqli_connect("localhost","root","","quanlyhoc_db");
        // truy vấn dữ liệu
        if(isset($_GET["search"]) && !empty($_GET["search"]))
        {
            $key = $_GET["search"];
            $sql = "select * from khoa_dao_tao where MaKHoa like '%$key%' or TenKhoa like '%$key%' or DienThoai like '%$key%'";
        }
        else {
            $sql = "select * from khoa_dao_tao";
        }
        $result = mysqli_query($conn,$sql);
    ?>
    <h1 style="text-align: center">Quản lý khoa đào tạo</h1>
    <div style="margin: 20px 560px; ">
        <form action="" method="GET">
            <label>Tìm kiếm: </label>
            <input type="text" name="search" placeholder ="Nhập nội dung tìm kiếm" value="<?php if(isset($_GET["search"])) { echo $_GET["search"]; } ?>">
            <input type="submit" value="Tìm kiếm">
            <input type="button" value="Tất cả" onclick ="window.location.href = '/PHP_TH9/Index.php'">
        </form>
    </div>
    <table border = "1" align="center" cellspacing = "0" cellspadding = "0" width = "500px">
        <tr>
            <th>Mã khoa</th>
            <th>Tên khoa</th>
            <th>Điện thoại</th>
            <th>Sửa</th>
            <th>Xóa</th>
        </tr>
        <?php
            //kết nối đến csdl
            //$conn = mysqli_connect("localhost","root","","quanlyhoc_db");
            //truy vấn dữ liệu
            //$sql = "SELECT * FROM khoa_dao_tao";
            //$result = mysqli_query($conn, $sql);
            //in danh sách dữ liệu
            while($row = mysqli_fetch_assoc($result))
            {
                $mk = $row["MaKhoa"];
                $tk = $row["TenKhoa"];
                $dt = $row["DienThoai"];
        ?>
        <tr>
            <td><?php echo $mk ?></td>
            <td><?php echo $tk ?></td>
            <td><?php echo $dt ?></td>
            <td>
                <a href="suakhoadaotao.php?MaKhoa=<?php echo $mk; ?>"> Sửa</a>
            </td>
            <td>
                <a href="xoakdt.php?MaKhoa=<?php echo $mk; ?>"onclick="return confirm('Bạn có muốn xoá không?')"> Xóa </a> 
            </td>
        </tr>
        <?php
            }
        ?>
        <?php
            mysqli_close($conn);
        ?>
        <tr>
            <td colspan = "5" align = "center">
                <Button type="button" onclick="myFunction()">Thêm mới</Button>
            </td>
        </tr>
    </table>
</body>
</html>
<script>
    function myFunction(){
        location.replace("themkhoadaotao.php");
    }
</script>