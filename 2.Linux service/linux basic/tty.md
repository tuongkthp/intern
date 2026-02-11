# TTY
- Là một thiết bị cung cấp 1 giao diện cho người dùng tương tác với hệ thống

- Mỗi TTY có các luồng vào và ra riêng biệt, cho phép nhiều người dùng hoặc process tương tác với hệ thống đồng thời

- Cú pháp: tty [OPTION]....
    ### [option]:
        -s, ––silent, ––quiet: chạy im lặng, không in gì ngoài việc trả về trạng thái thoát cho biết đó có phải là thiết bị đầu cuối hay không

        ---help: Hiển thị thông tin hướng dẫn

        --version: Hiển thị thông tin phiên bản
# Type of TTY
### Physical TTY:
    - Được liên kết tới thiết bị vật lý cuối hoặc cổng nối tiếp

### Virtual TTY (VT)
    - Là bảng điều khiển ảo (virtual console) có thể truy cập bằng cách nhấn vào "Ctrl + Alt + F1" đến "Ctrl + Alt + F6"

    - Mỗi VT cung cấp 1 giao diện dòng lệnh riêng biệt, chho phép người dùng chạy đồng thời nhiều phiên Shell

### Pseudoterminal (PTY)
    - Là một cặp thiết bị ảo: một "master" và một "slave"

    - Dùng để tạo một môi trường giống như thiết bị đầu cuối cho các ứng dụng

    - Bên "Master" thường dùng bởi ứng dụng

    - Bên "Slave" hoạt động như thiết bị đầu cuối

# Phương pháp phổ biến
- Sử dụng TTY cho bảo trì hệ thống:
    * Trên một TTY có thể chạy các câu lệnh để thực thi các nhiệm vụ bảo trì

- Chạy các process chạy lâu dài trên TTY:
    * Sao lưu dữ liệu hoặc biên dịch phần mềm, có thể chạy trên TTY



