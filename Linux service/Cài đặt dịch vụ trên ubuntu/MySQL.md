# MySQL server
- Kết nối đến MySQL:
    * Câu lệnh: "mysql -h [host] -u [user] -p"
        + Nhập password cho [user] để truy cập vào CSDL
    
    * Truy cập từ xa:
        + Cần cấu hình mysql server cho phép các địa chỉ ip có thể truy cập

        + Mở port trên firewall

- Thao tác với MySQL:
    * Tạo CSDL: "CREATE DATABASE IF NOT EXISTS database_name;"

    * Tạo bảng: "CREATE TABLE table_name (
                    column1 datatype,
                    column2 datatype,
                    ...
                )"
    
    * Hiển thị bảng: "USE database_name;
                      SHOW TABLES;"

    * Chèn dữ liệu vào bảng: "INSERT INTO table_name (column_name1,column_name2,...) VALUES (Value_column_name1,Value_column_name2,...)"

    * Truy vấn CSDL: "SELECT column1, column2, ...
                      FROM table_name
                      WHERE condition
                      ..."

# Người dùng và phân quyền
- Tạo người dùng: "CREATE USER 'username'@'host' IDENTIFIED WITH authentication_plugin BY 'password';"

- Hiển thị các người dùng: 
    * Người dụng hiện tại: "SELECT user();"

    * Toàn bộ người dùng: "SELECT user FROM mysql.user;"

- Phân quyền cho người dùng: "GRANT [PRIVILEGE] ON database.table TO 'username'@'host';"
    * Một số quyền:
        * ALL: Tất cả các đặc quyền

        * INSERT: Chèn dữ liệu vào bảng

        * DELETE: Xóa bảng

        * SELECT: Truy vấn dữ liệu

        * CREATE: Tạo cơ sở dữ liệu hoặc bảng

- Hiển thị quyền của 1 user: "SHOW GRANTS FOR 'username'@'host';

# So sánh MySQL và MariaDB
- Là 2 hệ quản trị cơ sở dữ liệu quan hệ phổ biến

- Hiệu suất của MariaDB tốt hơn nhiều so với MySQL

- MariaDB cung cập một sự thay thế thả vào MySQL

- MySQL cho phép truy cập mã nguồn độc quyền trong phiên bản MySQL doanh nghiệp, còn MariaDB thì không

- MariaDB xử lý dữ liệu lớn dễ dàng hơn MySQL

- MariaDB kiểm tra đặc quyền được thực hiện nhanh hơn 