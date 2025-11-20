# top
	- Cú pháp: top [options]
	- Chức năng: một tiện ích động, thời gian thực cung cấp tổng quan chi tiết về hiệu suất hệ thống
	- [options]:
		q	Nhấn phím Q trên bàn phím để thoát khỏi quá trình giám sát.
		-v	Tùy chọn này được sử dụng để kiểm tra phiên bản.
		-P	Tùy chọn -p được sử dụng để giám sát quá trình bằng ID quy trình (PID)
		-M	Tùy chọn này được sử dụng để hiển thị mức sử dụng bộ nhớ.
		-b	Tùy chọn này được gọi là chế độ hàng loạt. Điều này được sử dụng để gửi đầu ra từ trên xuống tệp hoặc bất kỳ chương trình nào khác.
		-k	k là một phím tắt được sử dụng bên trong lệnh trên cùng để giết một quy trình bằng ID quy trình (PID) của chúng
		-r	Nó được sử dụng để thay đổi mức độ ưu tiên của quy trình (renice)
		-1	Nó được sử dụng để hiển thị mức sử dụng CPU trên mỗi lõi
		-h	Tùy chọn này được sử dụng để hiển thị thông tin trợ giúp

# ps
	- Cú pháp: ps [options]
	- Chức năng: Dùng để quan sát các process đang chạy
	- [Option]:
			-f : hiển thị đầy đủ thông tin về các process
			-e : hiển thị đầy đủ các process ( bao gồm cả system process )
			-aux = -ef : hiển thị đầy đủ thông tin về tất cả các process
			-u : hiển thị các process liên quan đến user hiện hành
			-p PID : hiển thị thông tin process cụ thể
# lsof
	- Cú pháp: lsof [option]
	- Chức năng: Hiển thị danh sách các file đã được mở bởi process nào
	- [options]:
		-c	Liệt kê các tệp được mở bằng một tên quy trình cụ thể.
		-u	Hiển thị các tệp được mở bởi một người dùng được chỉ định.
		-tôi	Hiển thị thông tin liên quan đến mạng.
		-p	Liệt kê các tệp được mở bởi một ID quy trình cụ thể (PID).
		-t	Chỉ hiển thị ID quy trình (PID).
		-D	Liệt kê các tệp được mở bởi một thư mục cụ thể.
		-R	Liệt kê ID quy trình mẹ cùng với các quy trình con.

# htop
	- Cú pháp: htop [option]
	- Chức năng: cho phép giám sát trực tiếp các tiến trình quan trọng của hệ thống hoặc máy chủ theo thời gian thực
	- [options]:
		-d <delay>	sets the delay between updates (delay of some sec)
		-u <user>	displays only the process which owned by the user
		-p <pid>	shows only process with specific ids.
		-s <column>	sorts the process of the given column
		-t	displays the process hierarchy in tree view in the commands column
		--no-color	Runs htop in monochrome mode, disabling color

# kill
	- Cú pháp: kill [option]
	- Chức năng: Gửi tín hiệu để tắt process đang chạy