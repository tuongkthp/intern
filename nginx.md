# Nginx
- Là một phần mềm mã nguồn mở được thiết kế cho hiệu suất và độ ổn định tối đa

- Có thể giải quyết vấn đề về hiệu năng và tối ưu để xử lý đồng thời nhiều yêu cầu

- Reverse proxy: Chấp nhận request từ client, chuyển tiếp request đến server có thể xử lý yêu cầu, rồi trả về kết quả

- Caching: Bản sao của tài nguyên và phục vụ lại khi được yêu cầu 

- Load balancer: Điều phối request đầu vào của client đến một nhóm các server

- Một vài tính năng khác của Nginx:
    * Cung cấp các khả năng máy chủ HTTP

    * Hiệu suất và độ ổn định tối đa

    * Hoạt động như một máy chủ proxy cho email (IMAP, POP3 và SMTP)

    * Nó sử dụng kiến trúc theo hướng sự kiện và không phân luồng để cung cấp ít tính toán CPU hơn cho mỗi yêu cầu được phục vụ

    * Nó cung cấp khả năng mở rộng

# Kiến trúc
- Dùng kiến trúc Master-Slave

Cách hoạt động:

    1. Master định tuyến lại các request đến bất kì worker nào bằng cách phân phối tải trên máy chủ

    2. Sau đó "Proxy Cache" được tìm kiếm để phản hồi nhanh hơn

![alt text](archNginx.png)

# Một số cài đặt cấu hình cho Nginx
- Cài đặt chính được yêu cầu cho Nginx được lưu tại nginx.conf:

    - worker_processes: Số lượng "worker" mà "master sẽ điều khiển

    - worker_connections: Số các kết nối đồng thời từ client khác nhau

    - access_log & error_log: Ghi nhật kí sự kiện với 2 loại là access_log (hoạt động của client) và error_log (các lỗi hoặc trục trặc)

# Cách cài đặt

    #Update system
    sudo apt update

    #Install Nginx
    sudo apt install nginx