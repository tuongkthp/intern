1.Tạo và chỉnh sửa tập tin
	- touch filename.txt - Tạo tập tin rỗng
	- nano filename.txt - Mở và chỉnh sửa bằng trình soạn thảo Nano
	- vi filename.txt hoặc vim filename.txt - Chỉnh sửa bằng Vim
	- gedit filename.txt - Mở bằng giao diện đồ họa
2. Đọc nội dung tập tin
	- cat file.txt — Hiển thị toàn bộ nội dung.
	- less file.txt — Xem nội dung cuộn lên/xuống.
	- more file.txt — Xem nội dung từng trang.
	- head file.txt — Xem vài dòng đầu.
	- tail file.txt — Xem vài dòng cuối.
	- tail -f file.txt — Theo dõi nội dung mới ghi vào file (log).
3. Sao chép, di chuyển, đổi tên
	- cp file1.txt file2.txt — Sao chép tập tin.
	- mv file.txt /path/ — Di chuyển tập tin.
	- mv old.txt new.txt — Đổi tên tập tin.
4. Xóa tập tin
	- rm file.txt — Xóa tập tin.
	- rm -f file.txt — Xóa không hỏi xác nhận.
5. Tìm kiếm và lọc nội dung
	- grep "chuoi" file.txt — Tìm chuỗi trong tập tin.
	- grep -r "chuoi" /path/ — Tìm trong thư mục và các file con.
	- find /path/ -name "*.txt" — Tìm tập tin theo tên.
6. Xem thông tin tập tin
	- ls -l file.txt — Xem quyền, kích thước, ngày sửa đổi.
	- stat file.txt — Xem thông tin chi tiết.
	- file file.txt — Xác định loại tập tin.
7. Nén và giải nén
	- tar -cvf archive.tar file.txt — Nén thành tar (tên archive.tar).
	- tar -xvf archive.tar — Giải nén tar.
	- gzip file.txt — Nén gzip.
	- gunzip file.txt.gz — Giải nén gzip.
	- zip archive.zip file.txt — Nén zip.
	- unzip archive.zip — Giải nén zip.

