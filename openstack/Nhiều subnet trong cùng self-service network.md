# Kết nối giữa các VM trên nhiều subnet trong cùng self-service network
Một self-service network đại diện cho một broadcast domain.

Neutron cho phép gắn nhiều subnet lên cùng một network.

Trong mô hình này, các VM:

- Có thể nằm trên những subnet IP khác nhau

- Nhưng vẫn kết nối trực tiếp với nhau

- Không cần router, miễn là chúng cùng gắn vào một network

## Triển khai
Tạo 1 self-service network: net-self

Tạo nhiều subnet trên network này:

10.0.1.0/24 (sub1)

10.0.2.0/24 (sub2)

10.0.3.0/24 (sub3)

Tạo các VM:

VM-A: IP thuộc 10.0.1.0/24

VM-B: IP thuộc 10.0.2.0/24

VM-C: IP thuộc 10.0.3.0/24

Tất cả VM đều sử dụng port của cùng một network net-self.

### Network
`net-self` network là một broadcast domain:
- Chung một vswitch (ovs)

- Các vm trên cùng một network sẽ có thể nhận được gói tin ARP broadcast

### Subnet
Các subnet sub1, sub2, sub3:
- Chỉ định nghĩa dải địa chỉ IP

- Không tạo sự cô lập giữa các subnet ở layer2

## Lưu ý
Khi thêm subnet mới vào network đã tồn tại:

- Các VM được tạo trước đó không tự động nhận route mới

- Kernel vẫn coi subnet mới là off-link

Dẫn đến ping tới subnet mới thất bại

Gói tin bị gửi về default gateway

Để khắc phục:
- Cần cập nhật routing table trong VM bằng cách:
```sh
dhclient -r ens3
dhclient ens3
```

- Khi này, vm sẽ nhận thêm route dạng:
```sh
10.0.4.0/24 dev ens3 scope link
10.0.5.0/24 dev ens3 scope link
```

