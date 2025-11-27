# Block device
- IOPS (spoken as eye-ops):
    * Là các hoạt động đầu vào/ đầu ra mỗi giây

    * Cách tính: IOPS = (ReadThroughput + WriteThroughput) / BlockSize

- Throughtput:
    * Đo lường số lượng dữ liệu có thể được truyền (đọc hoặc ghi) trong một khoảng thời gian nhất định

    * Cách tính: Throughput = (Read IOPS + Write IOPS) x BlockSize

- Latency: 
    * Là thời gian mà một thực thể hệ thống lưu trữ cần để xử lý một yêu cầu dữ liệu duy nhất

# Lệnh "dd"
- Sử dụng để sao chép đĩa, tạo hình ảnh đĩa, sao lưu phân vùng và ghi tệp ISO vào ổ USB.

- Nó hoạt động với dữ liệu thô và rất linh hoạt, điều này làm cho nó trở thành một trong những công cụ linh hoạt nhất cho quản trị viên hệ thống

- Cú pháp: "dd if=[input file] of=[output file] [options]"

| Option | Mô tả |
| if= | Đầu vào file hoặc thiết bị  |
| of= | Đầu ra file hoặc thiết bị |
| bs= | Kích thước khối cho các hoạt động đầu vào/đầu ra |
| status= | Hiển thị trạng thái của hoạt động |
| count= | Giới hạn số lượng khối để sao chép |


