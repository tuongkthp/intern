# iptables là gì
- Là một giao diện dòng lệnh dùng để cài đặt và sửa chữa các bảng cho Netfilter firewall cho IPv4 

- Cho phép các quản trị viên cấu hình nguyên tắc giúp gói tin được lọc, dịch hoặc chuyển tiếp

- Có thể cài các chính sách để điều khiển lưu lượng vào và ra, định nghĩa cổng chuyển tiếp và thực hiện NAT (network address translation)

    * "Tables" là tên của một tập hợp các "chain"

    * Chain là một bộ các "rule"

    * "Rule" là điều kiện dùng để khớp gói tin

    * "Target" là hành động được thực hiện khi một "rule" có thể khớp

    * "Policy" là là hành động mặc định được thực hiện trong trường hợp không khớp với các chuỗi có sẵn và có thể là ACCEPT hoặc DROP

# Firewall là gì
- Là một hệ thống bảo mật mạng, có sẵn dưới dạng phần cứng hoặc phần mềm

- Nó giám sát và điều khiển lưu lượng vào và ra

- Nó hoạt động giống như một nhân viên bảo vệ, lọc các gói dữ liệu để:
    * Accept: Cho phép lưu lượng truy cập

    * Deny: Chặn bằng phản hồi lỗi

    * Drop: Chặn im lặng mà không có phản hồi




