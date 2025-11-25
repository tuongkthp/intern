# Tạo một file không sử dụng sudo
1. Kiểm tra quyền của người dùng hiện tại:
    * Cần có quyền đọc và thực thi tại thư mục cần tạo file với tài khoản người dùng
2. Nếu chưa có quyền, cần thêm quyền cho người dùng:
    * chmod u+wx (với tài khoản người dùng là người sở hữu)
    * chmod g+wx (với tài khoản người dùng thuộc nhóm sở hữu)
    * chmod o+wx (với tài khoản người dùng thuộc người dùng khác)
3. Tạo tập tin

# Tạo một user có thể truy cập vào file đã tạo
1. Tạo user: "sudo useradd [username]
2. Kiểm tra quyền của user mới tạo:
    * Ít nhất có quyền thực thi để vào được thư mục chứa file đã tạo
    * Có quyền đọc với file đã tạo để có thể truy cập vào file
3. Nếu chưa có quyền, cần chỉnh sửa theo B2 để có thể truy cập vào file
4. Truy cập file
