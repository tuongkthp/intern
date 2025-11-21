# Group sudo
- Là một nhóm người dùng đặc biệt cho phép các thành viên trong nhóm chạy lệnh với quyền quản trị (root) với các đặc quyền năng cao bằng cách thêm "sudo" vào trước mỗi câu lệnh
- Vì nhóm này có khả năng thực hiện các quyền nâng cao nên cần cân nhắc kĩ trước khi thêm một người dùng vào nhóm này

# Thêm người dùng vào Group sudo
- Tệp tin /etc/sudoers chứa các nguyên tắc để xác định những người dùng hoặc nhóm nào có thể sử dụng "sudo" và nhưng câu lệnh nào mà họ có thể chạy
- Các bước thêm người dùng vào group sudo:
    1. Cần đăng nhập vào 1 tài khoản có quyền truy cập vào tệp tin /etc/sudoers hoặc sử dụng được "sudo"
    2. Dùng lệnh "sudo visudo" để vào trình chỉnh sửa cho tệp tin /etc/sudoers
    3. Kéo xuống để tìm dòng: "%sudo   ALL=(ALL:ALL) ALL"
    4. Để thêm một người dùng, cần thêm 1 dòng vào bên dưới theo dạng: "username host=(user:group) allowed_command"
    Ví dụ: client1 ALL=(ALL:ALL) ls,cd 
    5. Kiểm tra xem người dùng đã được thêm vào group sudo chưa, dùng câu lệnh: "groups [username]"