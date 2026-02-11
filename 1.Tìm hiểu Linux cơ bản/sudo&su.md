# sudo
- sudo (Superuser Do) là một tiền tố để thêm vào những câu lệnh để chạy lệnh đó với quyền quản trị cho những người dùng khác (mặc định, nó có sẵn với người dùng "root")
- Lợi ích bảo mật:
    * Ko cần đăng nhập như vào người dùng root cho các nhiệm vụ đơn giản, chỉ mượn quyền cho 1 câu lệnh
    * Tạo dấu vết kiểm soát xem ai chạy câu lệnh và thời điểm chạy
    * Cho phép chính xác người dùng nào có thể sử dụng câu lệnh nào bằng file "sudoers"
- Cú pháp: sudo [option] command
    ### [option]:
        -l: liệt kê ra những câu lệnh đc cho phép (hoặc bị cấm) với người dụng hiện tại
        -h: hiển thị thông tin hỗ trợ
        -b: chạy câu lệnh dưới nền

# su
- "su" là câu lệnh cho phép chuyển phiên đăng nhập hiện tại sang 1 tài khoản người dùng khác
- Mục đích:
 * Chuyển qua người dùng "root" để nhận quyền thực hiện các câu lệnh toàn hệ thống
 * Có thể kiểm tra các quyền của tài khoản người dùng thông thường
- Cú pháp: su [OPTION] [USER]
    ### Lựa chọn có sẵn:
        su -: Chuyển đến tài khoản root với đầy đủ shell 
        su [user]: Chuyển đến tài khoản [user] nhưng vẫn dữ nguyên môi trường
        su -c "cmd": Chạy một câu lệnh đơn với môi trường của "root"
