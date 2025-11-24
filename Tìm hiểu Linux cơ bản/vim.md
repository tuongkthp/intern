# vim
- vim (vi improved) là một trình soạn thảo cấu hình cao, là phiên bản nâng cao của trình soạn thảo "vi"
- Cài đặt bằng câu lệnh: "sudo apt-get install vim"
- Cú pháp: vim [filename]
# Thao tác cơ bản với vim
### Chế độ của vim
- Normal mode: Là chế độ mặc định khi mở vim lần đầu, cho phép điều hướng file, xóa văn bản, sao chép văn bản và thực thi những câu lệnh khác
- Insert mode: Cho phép chèn và chỉnh sửa văn bản, nhấn 'i' từ "normal mode" để vào "Insert mode"
- Visual mode: Cho phép chọn trực quan các khối văn bản, nhấn 'v' từ "normal mode" để vào "visual mode"
- Command-Line Mode: cho phép nhập những câu lệnh vim, nhấn ':' từ "normal mode" để vào "command-line mode"
### Câu lệnh trong vim
- ":w": Lưu file từ "normal mode"
- ":q": Thoát khỏi vim (":q!" ép buộc thoát khỏi vim mà ko cần lưu)
- ":wq": Lưu và thoát khơi vim
### Điều hướng trong vim
- Sử dụng phím điều hướng hoặc phím `h`, `j`, `k`, `l` để di chuyển tương ứng đến trái, xuống, lên và phải
- ':<line_number>: Nhảy tới một dòng cụ thể