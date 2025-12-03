# IPTABLES

1. [iptables là gì](#iptables)

2. [Firewall là gì](#firewall)

3. [Lý do chọn iptables](#reason)

4. [Kiến trúc iptables](#architech)

5. [Cách sử dụng](#command)

6. [Lab ví dụ](#lab)

<a name="iptable"></a>
# iptables là gì
- Là một giao diện dòng lệnh dùng để cài đặt và sửa chữa các bảng cho Netfilter firewall cho IPv4 

- Cho phép các quản trị viên cấu hình nguyên tắc giúp gói tin được lọc, dịch hoặc chuyển tiếp

- Có thể cài các chính sách để điều khiển lưu lượng vào và ra, định nghĩa cổng chuyển tiếp và thực hiện NAT (network address translation)

<a name="firewall"></a>
# Firewall là gì
- Là một hệ thống bảo mật mạng, có sẵn dưới dạng phần cứng hoặc phần mềm

- Nó giám sát và điều khiển lưu lượng vào và ra

- Nó hoạt động giống như một nhân viên bảo vệ, lọc các gói dữ liệu để:
    * Accept: Cho phép lưu lượng truy cập

    * Deny: Chặn bằng phản hồi lỗi

    * Drop: Chặn im lặng mà không có phản hồi

<a name="reason"></a>
# Lý do nên dùng iptables:
- Là công cụ đầy đủ tính năng cung cấp mọi thứ người dùng cần

- Xử lý packet linh hoạt hơn

- Tự viết rule chống lại các cuộc tấn công

<a name="architech"></a>
# Cấu trúc của iptables
1. Tables: 
- Nơi lưu trữ các quy tác của các quy tắc tường lửa để quản lý và xử lý package

- Các "tables" chính:
    + Filter table: 
        * Dùng để lọc và quyết định một package có được "Accept", "Reject" hoặc "Drop" hay không

        * Gồm các chuỗi chính "input" (xử lý package đi vào hệ thống), "output" (xử lý các package được tạo ra và gửi đi từ hệ thống) và "forward" (xử lý các package khi đi qua hệ thống)

    + Nat table:
        * Dùng để thực hiện các hoạt động liên quan đến NAT (thay đổi ip nguồn hoặc đích của package đi qua hệ thống)

        * Các chuỗi chính: prerouting (thay đổi ip đích), postrouting (thay đổi ip nguồn), output

    + Mangle table: 
        * Dùng để sửa đổi manipulate trong tiêu đề (header) của package tin: TTL, MTU,...

        * Gồm các chuỗi chính: prerouting, input, forward, output, postrouting

    + Raw table:
        * Dùng để đánh dấu các package cho múc đích theo dõi và có thể bỏ qua các thao tác NAT hoặc kiểm tra trạng thái kết nối
    
        * Gồm các chuỗi chính: prerouting, input

2. Chains
- Là tập hợp các quy tắc được áp dụng tuần tự cho package khi đi qua firewall

- iptables được chia thành 2 loại: chuỗi mặc định và chuỗi người dùng tự tạo

- Mỗi "table" sẽ có một số "chains"

- Các chuỗi mặc định:
    + input: Xử lý các package đi vào hệ thống

    + Output: Xử lý các package được tạo ra từ hệ thống và chuẩn bị để gửi đi

    + Forward: Xử lý các package  định tuyến qua hệ thống từ một giao diện mạng này sang một giao diện mạng khác

    + Prerouting: Xử lý các package ngay khi vừa đến hệ thống và trước khi được định tuyến

    + Postrouting: Xử lý các package tin ngay trước khi rời khỏi hệ thống, sau khi đã được định tuyến

3. Targets
- Xác định các hành động sẽ được thực hiện khi một package tin khớp với một quy tắc cụ thể trong chuỗi

- "target" phổ biến:
    + Accept: Cho phép package đi vào hệ thống

    + Drop: Loại bỏ các package tin mà không thông báo cho nguồn gửi và sẽ không tiếp tục xử lý trong các chuỗi tiếp theo

    + Reject: Từ chối package tin và sẽ phản hồi lại nguồn gửi

    + Log: Ghi lại thông tin chi tiết về package tin trong nhật ký hệ thống (syslog) trước khi tiếp tục xử lý package tin trong chuỗi.

### Quy trình xử lý gói tin

![alt text](image/iptables-flow.png)

<a name="command"></a>
# Cách sử dụng iptables

- Cú pháp cơ bản: "sudo iptables -t [table] -A [chains] -i [interface] -p [protocol (tcp/udp)] -s [source] --dport [port no.]  -j [target]"
    * A: Thêm chain rules

    * i: Là giao diện mạng cần thực hiện lọc các package tin

    * p: Là giao thức mạng thực hiện lọc (tcp/udp)

    * dort: Là cổng muốn đặt bộ lọc

- Cách xem các quy tắc trong iptables:
        
        iptables -L -v
    
    - Trong đó:

        * Target: Hành động được thực thi

        * PROT: viết tắt của Protocol là giao thức được sử dụng để thực thi quy tắc với 3 chọn lựa all, TCP hay UDP

        * IN: Chi ra quy tắc sẽ được áp dụng cho các package tin đi vào từ interface nào

        * OUT: Quy tắc sẽ được áp dụng cho các package tin đi ra từ interface nào

        * DESTINATION: Là địa chỉ của lượt truy cập áp dụng quy tắc

        * source: Là địa chỉ có nơi gửi package

<a name="lab"></a>
# LAB ví dụ
Có 2 máy ảo trên vmware:

* Server

        Ubuntu: 22.04
        Card mạng:
            NAT: 10.0.0.101 (ens32)
            HostOnly: 192.168.33.129 (ens34)

* Client1

        Ubuntu: 22.04
        Card mạng:
            HostOnly: 192.168.33.128

Cấu hình iptables sao cho client1 có thể truy cập ra ngoài mạng

1. Cần cấu hình default gateway cho client1 đến ip của server:

        ip route del default
        ip route add default via 192.168.33.129 dev ens33

2. Cấu hình cho phép router chuyển tiếp gói tin từ interface này sang interface khác

        Chạy lệnh: "sysctl net.ipv4.ip_forward=1"

        Hoặc

        Sửa file /etc/sysctl.conf để không bị mất cấu hình khi reboot:
            Bỏ comment dòng "net.ipv4.ip_forward=1" và lưu
            Refresh bằng lệnh "systemctl -p"
        
3. Cấu hình cho phép NAT qua card mạng "ens32" của server để ra ngoài mạng

        "sudo iptables -t NAT -A POSTROUTING -o ens32 -j MASQUERADE"

4. Kiểm tra kết qua sẽ thấy client1 sẽ truy cập được ra ngoài mạng
