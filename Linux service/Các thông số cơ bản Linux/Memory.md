# Số liệu chung về bộ nhớ
- Total memory: Tổng bộ nhớ vật lý có sẵn trên hệ thống

- Used memory: Bộ nhớ hiện tại dùng bởi các tiến trình và ứng dụng

- Free memory: Bộ nhớ chưa được phân bổ đến bất kì tiến trình hoặc cache nào

- Cached memory: Bộ nhớ dùng cho lưu trữ tệp hoặc dữ liệu vào bộ nhớ đệm, thu hồi đc khi cần thiết

- Available memory: Bộ nhớ có thể được phân bổ đến những tiến trình mới, bao gồm cả "Free memory" và "Cached memory" được thu hồi

- Các câu lệnh kiểm tra bộ nhớ:

    | Lệnh | Chức năng |
    | --------- | -------- |
    | free -h | Hiển thị tổng quan RAM và swap, với tùy chọn -h để dễ đọc |
    | vmstat -s | Cung cấp thống kê bộ nhớ, CPU, I/O theo thời gian. |
    | top | Hiển thị tiến trình đang chạy và mức sử dụng CPU, RAM theo thời gian thực. |
    | htop | Phiên bản nâng cấp của top |

