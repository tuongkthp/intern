* Process
	- Một quá trình (process) là một chương trình hoặc ứng dụng đang chạy trong hệ thống
	- Mỗi process có 1 PID ( Process ID ) đại diện . PID gồm tối đa 5 chữ số và là duy nhất tại 1 thời điểm . PID của process A có thể được tận dụng cho process B nếu process A đã kết thúc

	- Có 2 loại process:
		+ Foreground Process: Mọi process mà bạn bắt đầu chạy là foreground process . Nó nhận input từ bàn phím và gửi output tới màn hình
		+ Background Process: Background process chạy mà không được kết nối với bàn phím của bạn . Nếu backround process yêu cầu bất cứ đầu vào từ bàn phím , chương trinh sẽ đợi.

	- Background process và foreground thường được thao tác thông qua Job ID

	- Mỗi một tiến trình Unix có hai ID được gán cho nó: Process ID (pid) và Parent Process ID (ppid).
	- Mỗi tiến trình trong hệ thống có một Parent Process (gốc).

	- Khi parent process bị kill trước khi child process của nó bị kill . Trong trường hợp này , parent process của tất cả các process , "init process" , trở thành PPID mới (Orphan Process)
	- Khi một process bị kill , danh sách liệt kê ps có thể vẫn chỉ process với trạng thái Z (Zombie). Nó là những process mà đã chạy hoàn thành nhưng vẫn có một cổng vào trong bảng process

	-Daemon là các background process liên quan tới hệ thống mà thường chạy với quyền hạn truy cập của root và các dịch vụ yêu cầu từ process khác

* Các lệnh về Process
	- ps [options]: Dùng để quan sát các process đang chạy
		+ Option:
			-f : hiển thị đầy đủ thông tin về các process
			-e : hiển thị đầy đủ các process ( bao gồm cả system process )
			-aux = -ef : hiển thị đầy đủ thông tin về tất cả các process
			-u : hiển thị các process liên quan đến user hiện hành
			-p PID : hiển thị thông tin process cụ thể

	- top [options]: Dùng để quan sát các process đang chạy
		+ Option:
			-n number : chỉ định số dòng hiển thị

	- kill [options] [pid]: Là lệnh tắt process đang chạy
	 + Option:
	 	-9 : kill toàn bộ các process liên quan

	- sleep NUMBER[SUFFIX]...: tạm dừng quá trình thực thi trong một thời gian nhất định

	- bg [job_spec ...]: chuyển các tiến trình đang bị tạm dừng (suspended) trở lại trạng thái chạy nền (background)
		+ [job_spec ...]:
			%n: Đại diện cho tiến trình có số hiệu là n.
			%str: Đại diện cho tiến trình được khởi chạy bởi lệnh bắt đầu bằng chuỗi str
			%?str: Đại diện cho tiến trình được khởi chạy bởi lệnh có chứa chuỗi str.
			%% hoặc %+: Đại diện cho tiến trình hiện tại. Nếu không cung cấp job_spec, lệnh bg sẽ mặc định thao tác với tiến trình này.
			%-: Đại diện cho tiến trình trước tiến trình hiện tại.

	- fg [jobID]: chuyển một tiến trình cụ thể trở lại chế độ foreground