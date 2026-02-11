# Biến môi trường
- Là những giá trị được đặt tên động ảnh hưởng đến hành vi của chương trình và tiến trình

# Các loại biến môi trường
- Biến môi trường Global:
    * Biến được định nghĩa tại một thiết bị và dễ dang truy cấp từ mọi nơi
    * Cách định nghĩa
        + export NAME=Value
        + set NAME=Value

- Biến môi trường Local:
    * Biến được định nghĩa tại một thiết bị cụ thể, được cô lập với chương trình và tiến trình bên ngoài
    * Cách định nghĩa
        + NAME=Value

# Cách sử dụng
- "$VARIABLE_NAME": để dùng biến môi trường có tên "VARIABLE_NAME"

# Một số biến môi trường có sẵn
- PATH: Chỉ định các thư mục nơi hệ thống tìm kiếm các file thực thi
- PWD: Thư mục làm việc hiện tại
- HOME: Vị trí thư mục chính của người dùng
- SHELL: Shell mặc định cho người dùng
- USER: 
- UID: Giá trị nhận dạng duy nhất của người dùng