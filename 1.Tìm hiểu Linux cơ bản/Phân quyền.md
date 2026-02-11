## Mỗi file hoặc thư mục trong Linux đều gắn liền với một người dùng sở hữu (owner) và một nhóm sở hữu (group):
	- Owner (Chủ sở hữu) – Thường là người dùng tạo ra file hoặc thư mục. Chủ sở hữu có thể thiết lập quyền cho chính mình và những người khác.
	- Group (Nhóm) – Mỗi file thuộc về một nhóm người dùng. Các thành viên trong nhóm đó sẽ có quyền hạn nhất định trên file.
	- Others (Người khác) – Bao gồm tất cả những người dùng còn lại không phải chủ sở hữu và cũng không thuộc nhóm sở hữu file.

## Với mỗi loại đối tượng trên, Linux định nghĩa ba quyền cơ bản có thể cấp hoặc không cấp, ký hiệu lần lượt bởi các chữ cái: r, w, x:
	- r (read – quyền đọc): Cho phép đọc nội dung file. Đối với thư mục, quyền đọc cho phép liệt kê danh sách các file/thư mục con bên trong (xem tên các mục trong thư mục)
	- w (write – quyền ghi): Cho phép sửa đổi nội dung tập tin. Đối với thư mục, quyền ghi cho phép tạo mới hoặc xóa các mục con trong thư mục đó (thêm/xóa file hoặc thư mục con)
	- x (execute – quyền thực thi): Cho phép thực thi file. Đối với thư mục, quyền thực thi cho phép truy cập vào bên trong thư mục – tức là quyền cd vào thư mục đó và truy xuất nội dung khi biết tên đối tượng.

## Linux còn có khái niệm loại file thể hiện qua ký tự đầu tiên khi liệt kê:
	- - : file thông thường.

	- d : thư mục (directory).

	- l : liên kết tượng trưng (symbolic link).

	- c : thiết bị ký tự (character device).

	- b : thiết bị khối (block device).

	- p : pipe .

	- s : socket.
	
## Umask (viết tắt của User file creation mask) là một giá trị dùng để loại bỏ bớt quyền mặc định khi tạo mới đối tượng.

## Trước khi áp dụng umask thì tất cả các thư mục đều được phân quyền mặc định 777