<?php
if (isset($_POST["submit"])) {
    // Thư mục lưu file CSV đã tải lên
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["file"]["name"]);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Chỉ cho phép file CSV
    if ($fileType != "csv") {
        echo "Chỉ cho phép file CSV.";
        $uploadOk = 0;
    }

    // Kiểm tra nếu file hợp lệ và tải lên thành công
    if ($uploadOk && move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
        echo "File ". htmlspecialchars(basename($_FILES["file"]["name"])). " đã được tải lên thành công.<br>";

        // Mở file CSV và đọc nội dung
        if (($handle = fopen($target_file, "r")) !== FALSE) {
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "qlbanhang";
            // Kết nối với MySQL
            $conn = new mysqli($servername, $username, $password, $dbname);
            if ($conn->connect_error) {
                die("Kết nối thất bại: " . $conn->connect_error);
            }

            // Xử lý từng dòng CSV
            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                $fullname = $data[0];  // Lấy giá trị từ cột 'fullname'
                $email = $data[1];     // Lấy giá trị từ cột 'email'
                $birthday = $data[2];  // Lấy giá trị từ cột 'Birthday'
                $reg_date = $data[3];  // Lấy giá trị từ cột 'reg_date'
                $password = md5($data[4]);  // Hash mật khẩu
                $img_profile = $data[5];    // Hình ảnh (có thể là NULL)

                // Câu lệnh SQL để chèn dữ liệu vào bảng `customers`
                $sql = "INSERT INTO customers (fullname, email, Birthday, reg_date, password, img_profile)
                        VALUES ('$fullname', '$email', '$birthday', '$reg_date', '$password', '$img_profile')";


                if ($conn->query($sql) === TRUE) {
                    echo "Đã chèn dữ liệu cho khách hàng: $fullname<br>";
                } else {
                    echo "Lỗi: " . $sql . "<br>" . $conn->error;
                }
            }

            // Đóng kết nối
            fclose($handle);
            $conn->close();
        } else {
            echo "Không thể mở file CSV.";
        }
    } else {
        echo "Lỗi khi tải file.";
    }
}
?>
