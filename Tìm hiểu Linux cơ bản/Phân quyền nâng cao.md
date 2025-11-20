* Phương pháp tượng trưng
	- syntax: chmod WhoWhatWhich file | directory
		+ Who -  đại diện cho danh tính: u,g,o,a (người dùng, nhóm, khác, tất cả)
		+ What - đại diện cho các hành động: +, -, = (thêm, xóa, đặt chính xác)
		+ which - đại diện cho các cấp độ truy cập: r, w, x (đọc, ghi, thực thi)

* Phương pháp số
	- syntax: chmod ### file | directory
		+ Từ trái sang phải, ký tự # đại diện cho cấp độ truy cập. Có ba cấp độ truy cập—người dùng, nhóm và các cấp độ khác.
	- Xác định mỗi chữ số:
		+ Bắt đầu từ 0 (ko có quyền gì)
		+ Nếu cần đặt quyền đọc, hãy cộng thêm 4
		+ Nếu cần đặt quyền ghi, hãy cộng thêm 2
		+ Nếu quyền thực thi cần được đặt, hãy cộng thêm 1

* SUID
	- Quyền đặc biệt dành cho cấp độ truy cập của người dùng có một chức năng duy nhất
	- File có SUID luôn thực thi với tư cách là người dùng sở hữu file, bất kể người dùng có truyền lệnh hay không
	- Trong phần "owner" của quyền, ký tự x → được thay bằng s hoặc S:
		+ s là SUID hoạt động
		+ S gán SUID nhưng owner ko có quyền thực thi (ko có tác dụng SUID)
	Cách gán quyền:
		+ chmod u+s filename
		+ chmod 4### filename (### thiết lập như bth cho từng đối tượng)

* SGID
	- Nếu được đặt trên một tệp, SGID cho phép tệp được thực thi với tư cách là nhóm sở hữu tệp 
	- Nếu được đặt trên một thư mục, bất kỳ tệp nào được tạo trong thư mục sẽ có quyền sở hữu nhóm của chúng được đặt thành quyền sở hữu của chủ sở hữu thư mục
	- Trong phần "group" của quyền, ký tự x → được thay bằng s hoặc S:
		+ s là SGID hoạt động
		+ S gán SGID nhưng owner ko có quyền thực thi (ko có tác dụng SGID)
	Cách gán quyền:
		+ chmod g+s filename
		+ chmod 2### filename (### thiết lập như bth cho từng đối tượng)

* sticky bit
	- User chỉ có thể xóa hoặc đổi tên file của chính họ
	- Không thể xóa file của người khác, dù có quyền ghi (write) trên thư mục.

* Chỉ số umask
	- Umask được hiểu là các giá trị mặc định khi tạo ra một file mới hoặc một thư mục mới
	- Dán các quyền mặc định cho tất cả các tệp hoặc thư mục mới:
		+ Lệnh "umask ###" (### lần lượt là các quyền bị bỏ đi)
		+ Các thư mục và tệp được tạo mới sẽ chịu ảnh hưởng của umask đã được cài đặt mặc định trước đó và "umask ###" sau khi cài thêm
