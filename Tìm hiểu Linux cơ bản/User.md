User:
	-User là tài khoản mà người dùng được cung cấp để thao tác với hệ thống.
	-Mỗi tài khoản sẽ có quyền làm gì và không được làm gì.
	-Tài khoản có quyền cao nhất là root và root có quyền làm tất cả.

4 loại tài khoản người dùng:
	- Tài khoản siêu người dùng (superuser):
		+ Thường được gọi là root, quản trị viên mặc định của hệ thống
		+ Phải có một tài khoản người dùng root.
		+ Có quyền truy cập và kiểm soát hệ thống không giới hạn, bao gồm cả những người dùng khác.
		+ Luôn có UID 0 và cũng là một phần của ID nhóm 0
	- Tài khoản thông thường:
		+ Những người dùng khác sau này được thêm vào hệ thống Linux được gọi là tài khoản thông thường hoặc tài khoản tiêu chuẩn
		+ Có quyền truy cập và kiểm soát hạn chế đối với hệ thống nhưng có thể có quyền quản trị bằng cách sử dụng lệnh sudo hoặc su
		+ Chúng có shell mặc định và trên hầu hết các bản phân phối Linux, đây là Bourne Again Shell (Bash).
	- Tài khoản hệ thống:
		+ Tài khoản hệ thống được sử dụng để chạy các thành phần hệ điều hành nhưng không chạy với đặc quyền siêu người dùng.
		+ Không có thư mục chính chuyên dụng cũng như không có trình bao vì chúng không bao giờ cần đăng nhập trong suốt cuộc đời của chúng.
	- Tài khoản dịch vụ:
		+ Tài khoản dịch vụ hơi giống với tài khoản hệ thống: chúng được tạo bất cứ khi nào dịch vụ được cài đặt trên hệ thống của bạn
		+ Tài khoản dịch vụ không có thư mục chính hoặc trình bao mặc định.