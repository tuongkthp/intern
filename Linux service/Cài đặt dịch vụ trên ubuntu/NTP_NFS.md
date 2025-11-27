# NTP server
- NTP (Network time protocol) dùng cho đồng bộ hóa đồng hồ trên nhiều máy tính

- Có trách nhiệm giữ cho một bộ các máy tính đồng bộ với nhau

- Cấu hình bằng file "/etc/ntp.conf"

# NFS (Network file system)
- NFS (Network File System) là giao thức chia sẻ tệp tin trong mạng nội bộ, giúp truy cập dữ liệu từ máy chủ NFS

- Cấu hình máy chủ:
    * Tạo thư mục và cấp quyền truy cập

    * Cấu hình Exports trong file /etc/exports cho phép các máy truy cập và ghi dữ liệu

    * Áp dụng cấu hình và khởi động lại dịch vụ