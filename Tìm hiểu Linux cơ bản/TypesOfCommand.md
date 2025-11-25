# Câu lệnh được xây dựng sẵn bên trong linux (built-in command)
- Là câu lệnh được tích hợp trực tiếp bên trong Shell, cho phép thực hiện mà không cần tạo tiến trình mới
- Một số câu lệnh:
    * cd
    * pwd
    * exit
    * alias
    * export

# Câu lệnh chạy bằng các file thực thi
- Khi chạy một câu lệnh hệ thống sẽ tìm các file thực thi tương ứng trong các thư mục được liệt kê trong biến môi trường PATH
- Một số câu lệnh:
    * ls
    * touch
    * cp

# Câu lệnh để xác định loại câu lệnh (built-in hoặc executable file)
- Câu lệnh "which [command]": Hiển thị đường dẫn thư mục đến file thực thi của [command]
- Nếu câu lệnh không hiển thị đường dẫn thì [command] đó là một [command] built-in, ngược lại thì [command] đó được chạy bằng các file thực thi

# Câu lệnh quản lý tập tin
- Chức năng: Tạo, chỉnh sửa và xóa tập tin
- Một số câu lệnh:
    * touch: dùng để tạo những tệp tin chưa có hoặc cập nhật thời gian của các tệp tin hiện có
    * cp: sao chép thư mục hoặc tập tin
    * mv: dùng để sửa tên tệp tin hoặc di chuyển tệp tin đến một vị trí khác

# Câu lệnh điều hướng thư mục
- Chức năng: Dùng cho việc di chuyển qua hệ thống tập tin Linux
- Một số câu lệnh:
    * cd: Dùng để điều hướng đến thư mục
    * pwd: Hiển thị thư mục làm việc hiện tại
    * ls: Hiển thị danh sách tập tin và thư mục tại vị trị hiện tại

# Câu lệnh quản lý tiến trình
- Chức năng: Giám sát và điều khiển các tiến trình đang chạy
- Một số câu lênh:
    * ps: Cung cấp tầm nhìn chi tiết của tất cả các tiến trình
    * top: Trình bày hệ thống các tiến trình dựa trên thời gian thực
    * kill: Dùng để gửi 1 tín hiệu đến tiến trình dựa trên PID (ví dụ: ngắt tiến trình)

# Câu lệnh về mạng
- Chức năng: Quản lý các cài đặt mạng và giám sát lưu lượng mạng
- Một số câu lệnh:
    * ifconfig: Dùng để cấu hình card mạng hoặc hiển thị các cấu hình hiện tại
    * ping: kiểm thử kết nói giữa các thiết bị trên mạng
    * netstat: Cung cấp các chi tiết các kết nối đang hoạt động và port đang lắng nghe
    * traceroute: Cung các các điểm đi qua của gói tin trên mạng 

# Câu lệnh thông tin hệ thống
- Chức năng: Cung cấp các thông tin quan trọng về cấu hình phần cứng và phần mềm
- Một số câu lệnh:
    * df: Báo cáo bộ nhớ còn khả dụng
    * dpkg: Quản lý phần mềm, đảm bảo hệ thông cập nhật và chạy các ứng dụng được yêu cầu
    

