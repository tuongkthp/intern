## Filesystem
### Filesystem là cách các tập tin được tổ chức một cách có cấu trúc nằm trong những thư mục.

### Các loại filesystem được Linux hỗ trợ:
	- Filesystem cơ bản: EXT2, EXT3, EXT4, XFS, Btrfs, JFS, NTFS,…
	- Filesystem dành cho dạng lưu trữ Flash: thẻ nhớ,…
	- Filesystem dành cho hệ cơ sở dữ liệu
	- Filesystem mục đích đặc biệt: procfs, sysfs, tmpfs, squashfs, debugfs,…

### Có một thư mục gốc gọi là thư mục root(thường viết là /)
### Từ / sẽ phân chia thành nhiều loại thư mục có mục đích dùng khác nhau.
### Một số thư mục hay dùng đến là:
	– /home: chứa nội dung của người dùng user
	– /root: chứa nội dung của người dùng root
	– /bin, /usr/bin: chứa các chương trình thực thi, hầu hết các câu lệnh hệ thống được chạy. Ví dụ “ls”
	– /sbin, /usr/sbin: chứa các chương trình thực thi giành cho admin

### Một số lưu ý khi đặt tên cho thư mục hoặc tập tin:
	– Tên thì sẽ phân biệt viết hoa và viết thường, ví dụ: text.txt và Text.txt sẽ là hai files khác nhau
	– Tên được phép chứa các ký tự đặc biệt.
	– Ký tự / đại diện cho thư mục root, và cũng dùng trong đường dẫn để chia bậc, cho nên cũng hạn chế sử dụng ký tự này.
	– Tên được phép chứa các đuôi(extension) như là .csv, .txt

###  Một số tên thư mục được định nghĩa sẵn:
	~ là đại diện cho thư mục home của người dùng hiện tại
	. là đại diện thư mục hiện tại
	.. là đại diện thư mục cha của thư mục hiện tại

## Các câu lệnh cơ bản thao tác với 1 thư mục:
	- Câu lênh "pwd" (print working directory): giúp kiểm tra vị trí hiện tại của thư mục.

	Có 2 loại đường dẫn:
		+ Đường dẫn tuyệt đối(absolute path): đường dẫn này thể hiện vị trí của tệp liên quan đến thư mục root, do đó luôn bắt đầu với /
			ví dụ: /usr/bin
		+ Đường dẫn tương đối(relative path): đường dẫn này thể hiện vị trí của tệp từ thư mục hiện tại
			ví dụ: ../client2/Desktop

	- Câu lênh "cd<đường-dẫn>": Điều hướng thư mục
		+ Nếu cd không có đường dẫn sẽ mặc định về thư mục ~

	- Câu lệnh "ls [tùy chọn] [tệp/thư mục]": liệt kê nội dung thư mục và tệp, cung cấp thông tin chi tiết về thuộc tính của chúng.
		+ Tùy chọn thông dụng:
			-l: Hiển thị chi tiết thông tin tệp/thư mục.
			-a: Hiển thị tất cả tệp, bao gồm tệp ẩn.
			-t: Sắp xếp theo thời gian sửa đổi, hiển thị tệp được chỉnh sửa gần nhất trước.
			-r: Sắp xếp ngược thứ tự mặc định.
			-S: Sắp xếp theo kích thước tệp, từ lớn đến nhỏ.
			-R: Hiển thị đệ quy, bao gồm cả nội dung thư mục con.
			-i: Hiển thị số inode của tệp/thư mục.
			-g: Hiển thị nhóm sở hữu thay vì người sở hữu.
			-h: Hiển thị kích thước tệp theo định dạng dễ đọc (K, M, G).

### Trong Linux các thư mục, socket ... thực chất đều là các file 



