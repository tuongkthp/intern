## Cách trình quản lý gói tin
	- apt (Advanced Package Tool): Là một trong những công cụ quản lý gói tiêu chuẩn trên
	- dpkg (Debian Package): là một tiện ích cấp thấp bao gồm một tập hợp các lệnh được sử dụng để cài đặt, gỡ bỏ, liệt kê và quản lý các gói phần mềm trên các bản phân phối Linux dựa trên Debian
	- Snap – package sandbox: là một hệ thống đóng gói và triển khai ứng dụng dành cho các hệ điều hành dựa trên Linux

## So sánh apt và dpkg:
#### apt:
	- Công cụ quản lý gói hàng cấp cao.
	- Có thể quản lý cài đặt gói, nâng cấp, giải quyết phần phụ thuộc và quản lý kho lưu trữ.
	- Tự động giải quyết và cài đặt các phần phụ thuộc gói.
	- Tìm nạp các gói từ kho lưu trữ trực tuyến (qua internet).
	- Có thể quản lý nhiều kho lưu trữ, thêm/xóa kho lưu trữ dễ dàng.
	- Hỗ trợ cập nhật và nâng cấp tự động với các lệnh đơn giản (apt upgrade)
	- Tự động xử lý loại bỏ phụ thuộc (apt autoremove)
#### dpkg:
	- Công cụ quản lý gói hàng cấp thấp.
	- Cài đặt, gỡ cài đặt và quản lý các gói Debian riêng lẻ.
	- Không xử lý các phần phụ thuộc; yêu cầu cài đặt thủ công các phụ thuộc.
	- Cài đặt các gói từ các tệp .deb cục bộ.
	- Không quản lý kho lưu trữ; chỉ hoạt động trên các gói .deb địa phương.
	- Không có hỗ trợ tích hợp cho các bản cập nhật tự động.
	- Không quản lý các phần phụ thuộc trong quá trình gỡ cài đặt.