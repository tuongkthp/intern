## Lệnh man trong Linux (viết tắt của manua) là công cụ dùng để tra cứu thông tin chi tiết về bất kỳ lệnh nào.

## Cú pháp: man [man options] [[section] page ...] ...
	* Một số tùy chọn sử dụng lệnh man trong Linux:
		-k KEYWORD: Tìm kiếm từ khóa trong toàn bộ trang hướng dẫn và hiển thị tất cả các kết quả khớp
		-f KEYWORD: Tìm kiếm mô tả ngắn về bất kỳ từ khóa hoặc lệnh nào
		-d, –default: Đặt lại lệnh man về mặc định
		-i, –ignore-case: Bỏ qua sự phân biệt chữ hoa chữ thường của lệnh
		-I, –match-case: Tìm kiếm chính xác chữ hoa chữ thường
		-a, –all: Hiển thị tất cả các trang hướng dẫn khớp với từ khóa hoặc lệnh cụ thể

	* Ví dụ: - "man ls" giúp xem hướng dẫn chi tiết của lệnh "ls"
			 - "man -a intro" giúp hiển thị tất cả trang hướng dẫn của nhiều section khác nhau

