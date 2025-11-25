# Soft link
- Soft link (symbolic link/symlink) là một loại đặc biệt của file, nó trỏ đến một file hoặc một thư mục

- Hoạt động như một phím tắt, cho phép truy cập đến file hoặc thư mục đích từ vị trí khác mà ko cần tạo một bản sao chép của nó

- Đặc điểm:
    * Số inode khác với tệp gốc
    * Có thể liên kết qua các hệ thống tập tin hoặc thư mục khác nhau
    * Tập tin gốc bị xóa, soft link sẽ không khả dụng
    * Chậm hơn hard link và tốn bộ nhớ hơn

- Cú pháp: ln  -s [original filename] [link name] 

- Dùng lệnh "ls -l" tập tin có soft link sẽ hiển thị dưới dạng "l#########"

# Hard link
- Hard link là một mục nhập thư mục trỏ trực tiếp đến inode của một file, thay vì tên tập tin

- Hard link và file gốc chia sẻ chung một inode, do đó các khối dữ liệu giống nhau trên ổ cứng

- Đặc điểm:
    * Số inode giống với tệp gốc
    * Không thể mở rộng qua các hệ thống tập tin và liên kết thư mục
    * Những thay đổi trên hard link được phản ánh trong tệp gốc và ngược lại
    * Tập tin gốc bị xóa, hard link vân giữ lại kết nối với dữ liệu
    * Nhanh hơn soft link và ít tốn bộ nhớ hơn

