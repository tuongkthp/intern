# Số liệu chính của bộ xử lý
- CPU load: Cho biết số tiến trình sủ dụng và chờ sử dụng lõi CPU tại một thời điểm

- CPU usage: Biểu thị tỉ lệ phần trăm thời gian CPU cần để xử lý các tác vụ non-idle

- Jiffies: Một đơn vị thời gian được dùng bỏi nhân để đo hoạt động CPU

- Các câu lệnh kiểm tra CPU:

    | Lệnh | Chức năng |
    | --------- | -------- |
    | lscpu | Hiển thị kiến trúc CPU, số core, số luồng, tốc độ xung nhịp,... |
    | cat /proc/cpuinfo | Hiển thị chi tiết từng core CPU: model, tốc độ, cache, flags. |
    | top | Hiển thị tiến trình đang chạy và mức sử dụng CPU, RAM theo thời gian thực. |
    | htop | Phiên bản nâng cấp của top |
    