# Cấu hình mạng bằng file config
- Ubuntu Server tạo file cấu hình Netplan cho mạng hệ thống có tên 01-netcfg.yaml, trong khi desktop Ubuntu tạo file cấu hình Netplan cho Network-Manager có tên 01-network-manager-all.yaml
- Trong thư mục /etc/netplan có các file .yaml để cấu hình cho từng card mạng

# Các bước cấu hình
1. Tìm interface muốn cấu hình bằng lệnh: "ip a"
2. File cấu hình mặc định nằm trong thư mục /etc/netplan, có thể tìm bằng lệnh: "ls /etc/netplan"
3. Xem nội dung cấu hình bằng lệnh: "cat /etc/netplan/*.yaml"
4. Mở file cấu hình bằng bất kỳ trình soạn thảo nào, ví dụ: "sudo nano /etc/netplan/*.yaml"
5. Cập nhật file cấu hình theo nhu cầu kết nối mạng của bạn. Đối với địa chỉ IP tĩnh, hãy thêm thông tin địa chỉ IP, Gateway, DNS. Với địa chỉ IP động, không cần thêm thông tin này vì nó sẽ lấy thông tin này từ máy chủ DHCP. 
    #### Sử dụng cấu trúc sau để chỉnh sửa
        network:
        Version: 2
        Renderer: NetworkManager/ networkd
        ethernets:
        DEVICE_NAME:
            Dhcp4: yes/no
            Addresses: [IP_ADDRESS/NETMASK]
            Gateway: GATEWAY
            Nameservers:
                Addresses: [NAMESERVER_1, NAMESERVER_2]
    #### Trong đó:
        DEVICE_NAME: Tên của interface.
        Dhcp4: yes hoặc no tùy thuộc vào địa chỉ IP động hoặc tĩnh
        Addresses: Địa chỉ IP của thiết bị ở dạng ký hiệu tiền tố. Không sử dụng netmask.
        Gateway: Gateway địa chỉ IP để kết nối với mạng bên ngoài
        Nameservers: Địa chỉ của máy chủ tên DNS
6. Áp dụng cấu hình bằng lệnh: "sudo netplan apply"
7. Xác minh lại địa chỉ IP bằng lệnh: "ip a"

# Xóa/Thêm IP address bằng lệnh cho 1 interface
- Muốn xóa IP address sử dụng câu lệnh: "ip addr del <ip_address>/<prefix_length> dev <interface_name>"
- Muốn thêm IP address sử dụng 1 trong các câu lệnh: 
    * "sudo ip addr add <ip_address>/<prefix_length> dev <interface_name>"
    * "sudo ifconfig <interface_name> <ip_address> netmask <subnetmask> up"


