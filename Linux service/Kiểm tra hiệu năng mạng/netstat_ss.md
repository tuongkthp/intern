# netstat
- Là một công cụ hiển thị thông tin về các kết nối mạng, bảng định tuyến, thống kê network interface, và các socket mở.

- Cú pháp: "netstat [option]

- Một số lệnh phổ biến:
    * netstat -a: Hiển thị tất cả các kết nối mạng

    * netstat -lt: Liệt kê các kết nối TCP đang lắng nghe

    * netstat -p: Hiển thị tiến trình và PID liên quan

    * netstat -i: Hiển thị trạng thái của tất cả các network interface và thông tin liên quan

# ss
- ss (socket statistics) là phiên bản nâng cấp của netstat

- Có khả năng hiển thị thông tin về các socket nhanh hơn, chi tiết hơn và không yêu cầu quyền root.

- Một số lệnh phổ biến:
    * ss -t: Hiển thị các kết nối TCP

    * ss -u: Hiển thị các kết nối UDP

    * ss -l: Liệt kê các kết nối đang lắng nghe

    * ss -n: Hiện thị địa chỉ IP dạng số

