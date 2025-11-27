# nuttcp
- Là một công cụ đo lường hiệu năng mạng 

- Xác định thông lượng lớp mạng TCP(or UDP)

- Có 2 chế độ cơ bản:
    * Mode transmitter/receiver: 
        + Cũng chính là mode mà ttcp và nttcp hoạt động
        
        + Máy nhận được khởi tạo trước bằng câu lệnh `nuttcp -r` sau đó máy gửi sẽ phải được start bằng câu lệnh `nuttcp -t`
        
        + Mode này hiện đã không được khuyến khích sử dụng nữa

    * Mode client/server: 
        + server sẽ được start với câu lệnh `nuttcp -S` (hoặc "nuttcp -1") và sau đó clent có thể truyền dữ liệu (sử dụng "nuttcp -t") hoặc nhận dữ liệu (sử dụng "nuttcp -r") từ phía server
        
        + Tất cả các thông tin cung cấp bởi nuttcp sẽ được thông báo trên phía client.

- Câu lệnh: 
    * "nuttcp [option] [host]"

    | Options | Mô tả |
    |---------|--------------|
    | -h | Các options có thể sử dụng |
    | -V | Hiển thị thông tin về phiên bản |
    | -t | Chỉ định máy transmitter |
    | -r | Chỉ định máy receiver |
    | -S | Chỉ định máy server |
    | -1 | Giống với '-S' |
    | -b | Định dạng output theo kiểu one-line |
    | -B | Buộc receiver phải đọc toàn bộ buffer |
    | -u | Sử dụng UDP (mặc định là TCP) |

    * "nuttcp -s": Chỉ định làm server

# iperf3
- Là công cụ để phân tích hiệu suất mạng và chuẩn đoán các vấn để

- Cho phép cho thông lượng/bẳng thông mạng tối đa,jitter và mất gói giữa hai máy chủ

- Một số khả năng chính của iperf3:
    * Kiểm tra hiệu suất TCP hoặc UDP
    
    * Kiến trúc máy khách/máy chủ để triển khai dễ dàng
    
    * Đa luồng để kiểm tra nhiều luồng
    
    * Có thể tùy chỉnh cho các trường hợp nâng cao / cạnh
    
    * Nhiều số liệu thống kê được báo cáo

- Các câu lệnh:
    * Chỉ định máy chủ: "iperf3 -s"

    * Kết nối máy khách: "iperf3 [option] [server-ip]"

    | Options | Mô tả |
    |---------|--------------|
    | -c | Chạy với chế độ client|
    | -t | Thời gian truyền trong (giây)|
    | -i | Khoảng thời gian báo cáo số liệu thống kê|
    | -f | Định dạng báo cáo (Kbits/Mbits,...)|
    | -B | Gán với một giao cụ thể có liên kết tới địa chỉ máy chủ|

# So sánh nuttcp vs iperf3

| Tiêu chí | nuttcp | iperf3 |
|---------|--------------|---------|
| Phổ biến | Rất phổ biến | Ít phổ biến hơn |
| Giao thức hỗ trợ | TCP | UDP |
| Đo bandwidth | Có | Có (Chính xác cao hơn) |
| Đo latency / jitter | Có (UDP) | Mạnh hơn (Đặc biệt latency) |
| Đo CPU sử dụng | Không chi tiết | Đo rõ server-client |
| Dễ dùng | Rất dễ | Cần nhớ lệnh hơn |