# /etc/shadow
- Là một file mật khẩu dựa trên văn bản, lưu trữ cụm mật khẩu đã được hash
- Định dạng: "username:password:last_changed:min_age:max_age:warn:inactive:expire:reserved"
    - Trong đó:
        * username: tên tài khoản người dùng
        * password: mật khẩu đã mã hóa. Một "*" là tài khoản ko có mật khẩu
        * last_changed: Số ngày khi mật khẩu thay đổi lần cuối kể từ 1/1/1970
        * min_age: Số ngày ít nhất trước khi mật khẩu có thể thay đổi
        * max_age: Số ngày nhiều nhất trước khi mật khẩu có thể thay đổi
        * warn: số ngày trước khi đến "max_age" để nhắc người dùng thay đổi mật khẩu
        * inactive: Số ngày sau khi mật hết hạn thì tài khoản bị khóa
        * expire: Thời hạn kể từ 1/1/1970 tài khoản sẽ bị khóa
        * reserved: Trường sử dụng cho các mục đích tương lai
# chỉnh sửa password bằng file /etc/shadow
- Chỉnh sửa password:
    * Thay trường thứ 2 thành "!", tài khoản bị khóa
    * Thay trường thứ 2 thành "*", tài khoản đăng nhập không cần mật khẩu
    * Thay thế bằng các mật khẩu khác cần chuẩn bị mật khẩu đã được mã hóa theo các thuật toán (Ko chấp nhận các mật khẩu chưa được mã hóa)

